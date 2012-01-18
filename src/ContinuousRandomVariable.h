/*
 *  ContinuousRandomVariable.h
 *  cyclone
 *
 *  Created by Andrew Harvey on 17/01/2012.
 *  Copyright 2012. All rights reserved.
 *
 */

#include <vector>
using namespace std;

struct PDFSample
{
	PDFSample() {};
	PDFSample(float _x, float _f): x(_x), f(_f), F(0.0) {};
	
	float x;
	float f; // Probability density function
	float F; // Continuous density function up to this sample
	
	static bool sortByXPredicate(const PDFSample& s1, const PDFSample& s2);
};

typedef vector<PDFSample> PDFSampleArray;

class ContinuousRandomVariable
{
public:
						ContinuousRandomVariable(PDFSampleArray& pdf);
						~ContinuousRandomVariable();
	
			float		get(float uniform);
	
protected:
			void		calcCDF();
	
		PDFSampleArray& m_pdf;
};