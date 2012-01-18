/*
 *  ContinuousRandomVariable.cpp
 *  cyclone
 *
 *  Created by Andrew Harvey on 17/01/2012.
 *  Copyright 2012. All rights reserved.
 *
 */

#include "ContinuousRandomVariable.h"

bool
PDFSample::sortByXPredicate(const PDFSample& s1, const PDFSample& s2)
{
	return s1.x < s2.x;
}


ContinuousRandomVariable::ContinuousRandomVariable(PDFSampleArray& pdf):
m_pdf(pdf)
{
	calcCDF();
}


ContinuousRandomVariable::~ContinuousRandomVariable()
{
}


float
ContinuousRandomVariable::get(float uniform)
{
	int N = m_pdf.size();
	
	if(N <= 1)
		return 0.0;
	
	// Do a simple binary search of the cumulative density function
	int i = 0, j = N-1;
	while(j-i > 1)
	{
		int k = (i+j)>>1;
		const float pivot = m_pdf[k].F;
		if(uniform < pivot)
			j = k;
		else
		if(uniform > pivot)
			i = k;
		else
			return m_pdf[k].x;
	};
	
	const PDFSample& a = m_pdf[i];
	const PDFSample& b = m_pdf[j];
	
	// Calculate random variate by doing an inverse lookup on the 
	// Cumulative Density Function F(t).
	//
	// Since the Probability Density Function f(t) is a linear interpolation
	// of samples, the CDF (the integral of the PDF) is a series of
	// quadratic segments. We therefore solve our current segment's quadratic
	// equation.
	float m = (b.f - a.f) / (b.x - a.x);
	
	if(m != 0.0)
	{
		// Linear probability distribution (see note above)
		
		float A = 0.5 * m;
		float B = a.f - a.x * m;
		float C = a.F - (A * a.x*a.x) - (B*a.x) - uniform;
		
		// Find solutions (only one should be within the range of our segment though)
		float D = sqrt(B*B - 4*A*C);
		float x1 = (-B - D) / (2*A); // These break down if m == 0 --> A == 0,
		float x2 = (-B + D) / (2*A); // hence the seperate case below for uniform distributions
		
		return a.x <= x1 && x1 <= b.x ? x1 : x2;
	}
	else
	{
		// Uniform probability distribution. Solution is a straightforward linear interpolation
		return a.x + (uniform-a.F)/(b.F-a.F) * (b.x-a.x);
	}

}


void
ContinuousRandomVariable::calcCDF()
{
	int N = m_pdf.size();
	if(N > 0)
		m_pdf[0].F = 0.0;
	
	// Calculate the cumulative density function (CDF)
	for(int i = 1; i < N; i++)
	{
		const PDFSample& a = m_pdf[i-1]; // Previous sample
		PDFSample& b = m_pdf[i]; // Current sample
		
		b.F = a.F + ((a.f + b.f)*0.5) * (b.x - a.x); // Area of segment
	}
	
	// Normalise CDF so that it's integral equals 1
	// We need a minimum of two samples
	if(N > 1)
	{
		const float coef = 1.0/m_pdf[N-1].F;
		
		for(int i = 1; i < N; i++)
		{
			m_pdf[i].f *= coef;
			m_pdf[i].F *= coef;
		}
	}
	
}

