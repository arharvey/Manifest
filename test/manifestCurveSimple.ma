//Maya ASCII 2012 scene
//Name: manifestCurveSimple.ma
//Last modified: Thu, Jan 19, 2012 12:18:12 AM
//Codeset: UTF-8
requires maya "2012";
requires "manifest.py" "Unknown";
requires "cyclone" "3.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "201103110020-796618";
fileInfo "osv" "Mac OS X 10.6.8";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.660248210467717 7.5836960547467642 2.8521078391131818 ;
	setAttr ".r" -type "double3" -21.93835273004272 -636.5999999999907 1.3836060263497522e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 22.241913654200104;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "spawnCurve";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 6.3700952370850921 0 ;
createNode nurbsCurve -n "spawnCurveShape" -p "spawnCurve";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 5 0 no 3
		10 0 0 0 1 2 3 4 5 5 5
		8
		1.9165537997213669 -1.7763568394002505e-15 7.1582158945941297
		-0.26337238711361799 -1.6481637990407814 6.1124484830750383
		-2.4982744920908964 -1.3989065174895119 1.7135345177872159
		-6.0445267708812001 2.310615964802663 1.1047234673772643
		-7.4508737780160637 3.8638946169912574 -1.50724598054973
		-4.9914016958873431 3.9527668184327371 -5.53692455362647
		-3.8115646918218147 1.0239936439217345 -5.3409198197149568
		0.060222872843823438 0 -5.5853504246242984
		;
createNode transform -n "cubeStampScale";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 0.83917837854691302 0.83917837854691302 0.83917837854691302 ;
createNode locator -n "cubeStampScaleShape" -p "cubeStampScale";
	setAttr -k off ".v";
createNode transform -n "spinHandle";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 200 0 0 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.28435011625264228 1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "spinHandleShape" -p "spinHandle";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cubeStamp";
createNode mesh -n "cubeStampShape" -p "cubeStamp";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 401 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.30322391 0.39694679 -0.36886045 
		-0.30322391 0.39694679 -0.36886045 0.30322391 -0.39694679 -0.36886045 -0.30322391 
		-0.39694679 -0.36886045 0.30322391 -0.39694679 0.36886045 -0.30322391 -0.39694679 
		0.36886045 0.30322391 0.39694679 0.36886045 -0.30322391 0.39694679 0.36886045;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode manifestHub -n "manifestHub5";
	setAttr -s 400 ".spa";
	setAttr -s 400 ".spat";
	setAttr -s 400 ".spar";
createNode transform -n "cubeStamp1" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp2" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp3" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp4" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp5" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp6" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp7" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp8" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp9" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp10" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp11" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp12" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp13" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp14" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp15" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp16" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp17" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp18" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp19" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp20" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp21" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp22" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp23" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp24" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp25" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp26" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp27" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp28" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp29" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp30" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp31" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp32" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp33" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp34" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp35" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp36" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp37" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp38" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp39" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp40" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp41" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp42" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp43" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp44" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp45" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp46" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp47" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp48" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp49" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp50" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp51" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp52" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp53" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp54" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp55" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp56" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp57" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp58" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp59" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp60" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp61" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp62" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp63" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp64" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp65" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp66" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp67" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp68" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp69" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp70" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp71" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp72" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp73" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp74" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp75" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp76" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp77" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp78" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp79" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp80" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp81" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp82" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp83" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp84" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp85" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp86" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp87" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp88" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp89" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp90" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp91" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp92" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp93" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp94" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp95" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp96" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp97" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp98" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp99" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp100" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp101" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp102" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp103" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp104" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp105" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp106" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp107" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp108" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp109" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp110" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp111" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp112" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp113" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp114" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp115" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp116" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp117" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp118" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp119" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp120" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp121" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp122" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp123" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp124" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp125" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp126" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp127" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp128" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp129" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp130" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp131" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp132" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp133" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp134" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp135" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp136" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp137" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp138" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp139" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp140" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp141" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp142" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp143" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp144" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp145" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp146" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp147" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp148" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp149" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp150" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp151" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp152" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp153" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp154" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp155" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp156" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp157" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp158" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp159" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp160" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp161" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp162" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp163" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp164" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp165" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp166" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp167" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp168" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp169" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp170" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp171" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp172" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp173" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp174" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp175" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp176" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp177" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp178" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp179" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp180" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp181" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp182" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp183" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp184" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp185" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp186" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp187" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp188" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp189" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp190" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp191" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp192" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp193" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp194" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp195" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp196" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp197" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp198" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp199" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp200" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp201" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp202" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp203" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp204" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp205" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp206" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp207" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp208" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp209" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp210" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp211" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp212" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp213" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp214" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp215" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp216" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp217" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp218" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp219" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp220" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp221" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp222" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp223" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp224" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp225" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp226" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp227" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp228" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp229" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp230" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp231" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp232" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp233" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp234" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp235" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp236" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp237" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp238" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp239" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp240" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp241" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp242" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp243" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp244" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp245" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp246" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp247" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp248" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp249" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp250" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp251" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp252" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp253" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp254" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp255" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp256" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp257" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp258" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp259" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp260" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp261" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp262" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp263" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp264" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp265" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp266" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp267" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp268" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp269" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp270" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp271" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp272" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp273" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp274" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp275" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp276" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp277" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp278" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp279" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp280" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp281" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp282" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp283" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp284" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp285" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp286" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp287" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp288" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp289" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp290" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp291" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp292" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp293" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp294" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp295" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp296" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp297" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp298" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp299" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp300" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp301" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp302" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp303" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp304" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp305" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp306" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp307" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp308" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp309" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp310" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp311" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp312" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp313" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp314" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp315" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp316" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp317" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp318" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp319" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp320" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp321" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp322" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp323" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp324" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp325" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp326" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp327" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp328" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp329" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp330" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp331" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp332" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp333" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp334" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp335" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp336" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp337" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp338" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp339" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp340" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp341" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp342" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp343" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp344" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp345" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp346" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp347" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp348" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp349" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp350" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp351" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp352" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp353" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp354" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp355" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp356" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp357" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp358" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp359" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp360" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp361" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp362" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp363" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp364" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp365" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp366" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp367" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp368" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp369" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp370" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp371" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp372" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp373" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp374" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp375" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp376" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp377" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp378" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp379" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp380" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp381" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp382" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp383" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp384" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp385" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp386" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp387" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp388" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp389" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp390" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp391" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp392" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp393" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp394" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp395" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp396" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp397" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp398" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp399" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "cubeStamp400" -p "manifestHub5";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
createNode transform -n "persp1";
	setAttr ".t" -type "double3" 28 21 28 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-14 ;
createNode camera -n "perspShape2" -p "persp1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 44.82186966202994;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp1" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp2" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp3" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp4" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp5" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp6" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp7" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp8" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp9" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp10" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp11" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp12" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp13" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp14" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp15" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp16" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp17" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp18" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp19" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp20" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp21" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp22" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp23" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp24" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp25" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp26" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp27" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp28" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp29" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp30" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp31" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp32" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp33" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp34" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp35" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp36" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp37" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp38" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp39" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp40" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp41" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp42" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp43" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp44" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp45" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp46" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp47" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp48" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp49" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp50" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp51" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp52" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp53" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp54" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp55" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp56" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp57" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp58" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp59" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp60" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp61" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp62" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp63" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp64" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp65" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp66" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp67" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp68" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp69" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp70" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp71" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp72" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp73" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp74" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp75" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp76" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp77" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp78" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp79" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp80" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp81" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp82" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp83" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp84" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp85" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp86" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp87" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp88" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp89" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp90" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp91" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp92" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp93" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp94" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp95" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp96" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp97" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp98" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp99" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp100" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp101" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp102" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp103" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp104" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp105" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp106" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp107" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp108" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp109" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp110" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp111" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp112" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp113" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp114" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp115" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp116" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp117" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp118" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp119" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp120" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp121" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp122" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp123" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp124" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp125" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp126" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp127" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp128" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp129" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp130" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp131" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp132" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp133" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp134" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp135" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp136" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp137" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp138" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp139" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp140" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp141" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp142" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp143" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp144" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp145" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp146" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp147" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp148" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp149" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp150" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp151" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp152" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp153" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp154" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp155" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp156" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp157" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp158" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp159" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp160" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp161" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp162" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp163" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp164" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp165" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp166" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp167" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp168" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp169" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp170" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp171" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp172" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp173" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp174" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp175" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp176" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp177" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp178" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp179" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp180" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp181" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp182" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp183" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp184" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp185" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp186" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp187" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp188" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp189" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp190" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp191" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp192" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp193" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp194" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp195" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp196" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp197" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp198" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp199" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp200" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp201" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp202" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp203" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp204" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp205" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp206" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp207" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp208" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp209" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp210" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp211" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp212" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp213" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp214" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp215" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp216" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp217" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp218" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp219" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp220" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp221" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp222" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp223" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp224" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp225" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp226" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp227" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp228" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp229" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp230" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp231" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp232" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp233" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp234" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp235" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp236" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp237" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp238" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp239" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp240" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp241" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp242" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp243" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp244" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp245" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp246" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp247" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp248" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp249" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp250" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp251" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp252" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp253" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp254" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp255" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp256" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp257" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp258" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp259" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp260" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp261" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp262" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp263" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp264" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp265" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp266" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp267" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp268" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp269" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp270" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp271" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp272" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp273" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp274" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp275" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp276" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp277" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp278" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp279" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp280" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp281" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp282" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp283" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp284" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp285" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp286" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp287" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp288" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp289" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp290" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp291" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp292" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp293" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp294" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp295" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp296" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp297" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp298" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp299" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp300" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp301" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp302" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp303" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp304" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp305" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp306" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp307" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp308" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp309" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp310" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp311" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp312" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp313" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp314" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp315" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp316" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp317" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp318" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp319" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp320" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp321" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp322" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp323" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp324" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp325" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp326" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp327" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp328" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp329" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp330" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp331" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp332" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp333" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp334" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp335" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp336" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp337" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp338" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp339" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp340" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp341" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp342" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp343" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp344" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp345" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp346" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp347" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp348" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp349" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp350" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp351" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp352" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp353" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp354" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp355" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp356" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp357" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp358" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp359" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp360" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp361" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp362" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp363" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp364" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp365" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp366" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp367" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp368" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp369" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp370" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp371" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp372" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp373" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp374" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp375" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp376" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp377" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp378" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp379" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp380" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp381" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp382" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp383" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp384" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp385" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp386" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp387" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp388" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp389" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp390" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp391" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp392" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp393" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp394" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp395" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp396" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp397" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp398" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp399" ;
parent -s -nc -r -add "|cubeStamp|cubeStampShape" "cubeStamp400" ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode hyperView -n "hyperView1";
	setAttr ".p" -type "double2" 91 204 ;
	setAttr ".vl" -type "double2" -348.97908441924727 -420.29033182111755 ;
	setAttr ".vh" -type "double2" 830.21294467125267 664.3502172735806 ;
	setAttr ".dag" no;
	setAttr ".d" -type "string" "cubeStamp";
createNode hyperLayout -n "hyperLayout2";
	setAttr ".hyp[0].x" 646;
	setAttr ".hyp[0].y" 219;
	setAttr ".anf" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n"
		+ "                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput2\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput2\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput2\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput1\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput3\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput3\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput3\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput4\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput4\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput4\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput5\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput5\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput5\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput6\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput6\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n"
		+ "                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput6\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput9\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput9\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput9\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput7\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput7\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput7\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput8\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput8\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n"
		+ "                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput8\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput10\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput10\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput10\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput11\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput11\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput11\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput12\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput12\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput12\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput13\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput13\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput13\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n"
		+ "                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput14\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput14\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput14\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 300 -ast 1 -aet 300 ";
	setAttr ".st" 6;
createNode hyperView -n "hyperView3";
	setAttr ".p" -type "double2" 1196 172 ;
	setAttr ".vl" -type "double2" 233.9774570446736 -363.14235967926766 ;
	setAttr ".vh" -type "double2" 1359.1374570446753 671.79862542955402 ;
	setAttr ".dag" no;
	setAttr ".d" -type "string" "main";
createNode hyperLayout -n "hyperLayout4";
	setAttr -s 2 ".hyp";
	setAttr ".hyp[2].x" 328;
	setAttr ".hyp[2].y" 52;
	setAttr ".hyp[6].x" 896;
	setAttr ".hyp[6].y" 246;
	setAttr ".anf" yes;
createNode cyclone -n "cyclone1";
	setAttr ".den" 400;
	setAttr ".dc[0]"  0 1 1;
	setAttr ".r" 3.0999999046325684;
	setAttr -s 5 ".rc[0:4]"  0 0 1 0.61739129 0.23999999 1 1 0 
		1 0.2 1 1 0.86956519 0.1 1;
	setAttr -s 2 ".sc[0:1]"  0 1 1 1 0.25999999 1;
	setAttr -s 3 ".rsc[0:2]"  0.017391304 0.1 3 0.98225808 1 3 0.52173913
		 0.28 3;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "expression1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=time*.I[0]";
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 57.295779513082323;
createNode animCurveTU -n "cyclone1_start";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0.7718120813369751 130 0.010067114104395314
		 300 0;
	setAttr -s 3 ".kit[0:2]"  2 18 18;
	setAttr -s 3 ".kot[0:2]"  2 18 18;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 402 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".ocp" 5;
select -ne :defaultResolution;
	setAttr ".w" 1280;
	setAttr ".h" 720;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
	setAttr ".off" no;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :hyperGraphInfo;
	setAttr -s 2 ".b";
connectAttr "cubeStamp.msg" "manifestHub5.st[0]";
connectAttr "cyclone1.pos" "manifestHub5.pos";
connectAttr "cyclone1.rot" "manifestHub5.rot";
connectAttr "manifestHub5.spa[0]" "cubeStamp1.spawnedBy";
connectAttr "manifestHub5.spat[0]" "cubeStamp1.t";
connectAttr "manifestHub5.spar[0]" "cubeStamp1.r";
connectAttr "manifestHub5.spa[1]" "cubeStamp2.spawnedBy";
connectAttr "manifestHub5.spat[1]" "cubeStamp2.t";
connectAttr "manifestHub5.spar[1]" "cubeStamp2.r";
connectAttr "manifestHub5.spa[2]" "cubeStamp3.spawnedBy";
connectAttr "manifestHub5.spat[2]" "cubeStamp3.t";
connectAttr "manifestHub5.spar[2]" "cubeStamp3.r";
connectAttr "manifestHub5.spa[3]" "cubeStamp4.spawnedBy";
connectAttr "manifestHub5.spat[3]" "cubeStamp4.t";
connectAttr "manifestHub5.spar[3]" "cubeStamp4.r";
connectAttr "manifestHub5.spa[4]" "cubeStamp5.spawnedBy";
connectAttr "manifestHub5.spat[4]" "cubeStamp5.t";
connectAttr "manifestHub5.spar[4]" "cubeStamp5.r";
connectAttr "manifestHub5.spa[5]" "cubeStamp6.spawnedBy";
connectAttr "manifestHub5.spat[5]" "cubeStamp6.t";
connectAttr "manifestHub5.spar[5]" "cubeStamp6.r";
connectAttr "manifestHub5.spa[6]" "cubeStamp7.spawnedBy";
connectAttr "manifestHub5.spat[6]" "cubeStamp7.t";
connectAttr "manifestHub5.spar[6]" "cubeStamp7.r";
connectAttr "manifestHub5.spa[7]" "cubeStamp8.spawnedBy";
connectAttr "manifestHub5.spat[7]" "cubeStamp8.t";
connectAttr "manifestHub5.spar[7]" "cubeStamp8.r";
connectAttr "manifestHub5.spa[8]" "cubeStamp9.spawnedBy";
connectAttr "manifestHub5.spat[8]" "cubeStamp9.t";
connectAttr "manifestHub5.spar[8]" "cubeStamp9.r";
connectAttr "manifestHub5.spa[9]" "cubeStamp10.spawnedBy";
connectAttr "manifestHub5.spat[9]" "cubeStamp10.t";
connectAttr "manifestHub5.spar[9]" "cubeStamp10.r";
connectAttr "manifestHub5.spa[10]" "cubeStamp11.spawnedBy";
connectAttr "manifestHub5.spat[10]" "cubeStamp11.t";
connectAttr "manifestHub5.spar[10]" "cubeStamp11.r";
connectAttr "manifestHub5.spa[11]" "cubeStamp12.spawnedBy";
connectAttr "manifestHub5.spat[11]" "cubeStamp12.t";
connectAttr "manifestHub5.spar[11]" "cubeStamp12.r";
connectAttr "manifestHub5.spa[12]" "cubeStamp13.spawnedBy";
connectAttr "manifestHub5.spat[12]" "cubeStamp13.t";
connectAttr "manifestHub5.spar[12]" "cubeStamp13.r";
connectAttr "manifestHub5.spa[13]" "cubeStamp14.spawnedBy";
connectAttr "manifestHub5.spat[13]" "cubeStamp14.t";
connectAttr "manifestHub5.spar[13]" "cubeStamp14.r";
connectAttr "manifestHub5.spa[14]" "cubeStamp15.spawnedBy";
connectAttr "manifestHub5.spat[14]" "cubeStamp15.t";
connectAttr "manifestHub5.spar[14]" "cubeStamp15.r";
connectAttr "manifestHub5.spa[15]" "cubeStamp16.spawnedBy";
connectAttr "manifestHub5.spat[15]" "cubeStamp16.t";
connectAttr "manifestHub5.spar[15]" "cubeStamp16.r";
connectAttr "manifestHub5.spa[16]" "cubeStamp17.spawnedBy";
connectAttr "manifestHub5.spat[16]" "cubeStamp17.t";
connectAttr "manifestHub5.spar[16]" "cubeStamp17.r";
connectAttr "manifestHub5.spa[17]" "cubeStamp18.spawnedBy";
connectAttr "manifestHub5.spat[17]" "cubeStamp18.t";
connectAttr "manifestHub5.spar[17]" "cubeStamp18.r";
connectAttr "manifestHub5.spa[18]" "cubeStamp19.spawnedBy";
connectAttr "manifestHub5.spat[18]" "cubeStamp19.t";
connectAttr "manifestHub5.spar[18]" "cubeStamp19.r";
connectAttr "manifestHub5.spa[19]" "cubeStamp20.spawnedBy";
connectAttr "manifestHub5.spat[19]" "cubeStamp20.t";
connectAttr "manifestHub5.spar[19]" "cubeStamp20.r";
connectAttr "manifestHub5.spa[20]" "cubeStamp21.spawnedBy";
connectAttr "manifestHub5.spat[20]" "cubeStamp21.t";
connectAttr "manifestHub5.spar[20]" "cubeStamp21.r";
connectAttr "manifestHub5.spa[21]" "cubeStamp22.spawnedBy";
connectAttr "manifestHub5.spat[21]" "cubeStamp22.t";
connectAttr "manifestHub5.spar[21]" "cubeStamp22.r";
connectAttr "manifestHub5.spa[22]" "cubeStamp23.spawnedBy";
connectAttr "manifestHub5.spat[22]" "cubeStamp23.t";
connectAttr "manifestHub5.spar[22]" "cubeStamp23.r";
connectAttr "manifestHub5.spa[23]" "cubeStamp24.spawnedBy";
connectAttr "manifestHub5.spat[23]" "cubeStamp24.t";
connectAttr "manifestHub5.spar[23]" "cubeStamp24.r";
connectAttr "manifestHub5.spa[24]" "cubeStamp25.spawnedBy";
connectAttr "manifestHub5.spat[24]" "cubeStamp25.t";
connectAttr "manifestHub5.spar[24]" "cubeStamp25.r";
connectAttr "manifestHub5.spa[25]" "cubeStamp26.spawnedBy";
connectAttr "manifestHub5.spat[25]" "cubeStamp26.t";
connectAttr "manifestHub5.spar[25]" "cubeStamp26.r";
connectAttr "manifestHub5.spa[26]" "cubeStamp27.spawnedBy";
connectAttr "manifestHub5.spat[26]" "cubeStamp27.t";
connectAttr "manifestHub5.spar[26]" "cubeStamp27.r";
connectAttr "manifestHub5.spa[27]" "cubeStamp28.spawnedBy";
connectAttr "manifestHub5.spat[27]" "cubeStamp28.t";
connectAttr "manifestHub5.spar[27]" "cubeStamp28.r";
connectAttr "manifestHub5.spa[28]" "cubeStamp29.spawnedBy";
connectAttr "manifestHub5.spat[28]" "cubeStamp29.t";
connectAttr "manifestHub5.spar[28]" "cubeStamp29.r";
connectAttr "manifestHub5.spa[29]" "cubeStamp30.spawnedBy";
connectAttr "manifestHub5.spat[29]" "cubeStamp30.t";
connectAttr "manifestHub5.spar[29]" "cubeStamp30.r";
connectAttr "manifestHub5.spa[30]" "cubeStamp31.spawnedBy";
connectAttr "manifestHub5.spat[30]" "cubeStamp31.t";
connectAttr "manifestHub5.spar[30]" "cubeStamp31.r";
connectAttr "manifestHub5.spa[31]" "cubeStamp32.spawnedBy";
connectAttr "manifestHub5.spat[31]" "cubeStamp32.t";
connectAttr "manifestHub5.spar[31]" "cubeStamp32.r";
connectAttr "manifestHub5.spa[32]" "cubeStamp33.spawnedBy";
connectAttr "manifestHub5.spat[32]" "cubeStamp33.t";
connectAttr "manifestHub5.spar[32]" "cubeStamp33.r";
connectAttr "manifestHub5.spa[33]" "cubeStamp34.spawnedBy";
connectAttr "manifestHub5.spat[33]" "cubeStamp34.t";
connectAttr "manifestHub5.spar[33]" "cubeStamp34.r";
connectAttr "manifestHub5.spa[34]" "cubeStamp35.spawnedBy";
connectAttr "manifestHub5.spat[34]" "cubeStamp35.t";
connectAttr "manifestHub5.spar[34]" "cubeStamp35.r";
connectAttr "manifestHub5.spa[35]" "cubeStamp36.spawnedBy";
connectAttr "manifestHub5.spat[35]" "cubeStamp36.t";
connectAttr "manifestHub5.spar[35]" "cubeStamp36.r";
connectAttr "manifestHub5.spa[36]" "cubeStamp37.spawnedBy";
connectAttr "manifestHub5.spat[36]" "cubeStamp37.t";
connectAttr "manifestHub5.spar[36]" "cubeStamp37.r";
connectAttr "manifestHub5.spa[37]" "cubeStamp38.spawnedBy";
connectAttr "manifestHub5.spat[37]" "cubeStamp38.t";
connectAttr "manifestHub5.spar[37]" "cubeStamp38.r";
connectAttr "manifestHub5.spa[38]" "cubeStamp39.spawnedBy";
connectAttr "manifestHub5.spat[38]" "cubeStamp39.t";
connectAttr "manifestHub5.spar[38]" "cubeStamp39.r";
connectAttr "manifestHub5.spa[39]" "cubeStamp40.spawnedBy";
connectAttr "manifestHub5.spat[39]" "cubeStamp40.t";
connectAttr "manifestHub5.spar[39]" "cubeStamp40.r";
connectAttr "manifestHub5.spa[40]" "cubeStamp41.spawnedBy";
connectAttr "manifestHub5.spat[40]" "cubeStamp41.t";
connectAttr "manifestHub5.spar[40]" "cubeStamp41.r";
connectAttr "manifestHub5.spa[41]" "cubeStamp42.spawnedBy";
connectAttr "manifestHub5.spat[41]" "cubeStamp42.t";
connectAttr "manifestHub5.spar[41]" "cubeStamp42.r";
connectAttr "manifestHub5.spa[42]" "cubeStamp43.spawnedBy";
connectAttr "manifestHub5.spat[42]" "cubeStamp43.t";
connectAttr "manifestHub5.spar[42]" "cubeStamp43.r";
connectAttr "manifestHub5.spa[43]" "cubeStamp44.spawnedBy";
connectAttr "manifestHub5.spat[43]" "cubeStamp44.t";
connectAttr "manifestHub5.spar[43]" "cubeStamp44.r";
connectAttr "manifestHub5.spa[44]" "cubeStamp45.spawnedBy";
connectAttr "manifestHub5.spat[44]" "cubeStamp45.t";
connectAttr "manifestHub5.spar[44]" "cubeStamp45.r";
connectAttr "manifestHub5.spa[45]" "cubeStamp46.spawnedBy";
connectAttr "manifestHub5.spat[45]" "cubeStamp46.t";
connectAttr "manifestHub5.spar[45]" "cubeStamp46.r";
connectAttr "manifestHub5.spa[46]" "cubeStamp47.spawnedBy";
connectAttr "manifestHub5.spat[46]" "cubeStamp47.t";
connectAttr "manifestHub5.spar[46]" "cubeStamp47.r";
connectAttr "manifestHub5.spa[47]" "cubeStamp48.spawnedBy";
connectAttr "manifestHub5.spat[47]" "cubeStamp48.t";
connectAttr "manifestHub5.spar[47]" "cubeStamp48.r";
connectAttr "manifestHub5.spa[48]" "cubeStamp49.spawnedBy";
connectAttr "manifestHub5.spat[48]" "cubeStamp49.t";
connectAttr "manifestHub5.spar[48]" "cubeStamp49.r";
connectAttr "manifestHub5.spa[49]" "cubeStamp50.spawnedBy";
connectAttr "manifestHub5.spat[49]" "cubeStamp50.t";
connectAttr "manifestHub5.spar[49]" "cubeStamp50.r";
connectAttr "manifestHub5.spa[50]" "cubeStamp51.spawnedBy";
connectAttr "manifestHub5.spat[50]" "cubeStamp51.t";
connectAttr "manifestHub5.spar[50]" "cubeStamp51.r";
connectAttr "manifestHub5.spa[51]" "cubeStamp52.spawnedBy";
connectAttr "manifestHub5.spat[51]" "cubeStamp52.t";
connectAttr "manifestHub5.spar[51]" "cubeStamp52.r";
connectAttr "manifestHub5.spa[52]" "cubeStamp53.spawnedBy";
connectAttr "manifestHub5.spat[52]" "cubeStamp53.t";
connectAttr "manifestHub5.spar[52]" "cubeStamp53.r";
connectAttr "manifestHub5.spa[53]" "cubeStamp54.spawnedBy";
connectAttr "manifestHub5.spat[53]" "cubeStamp54.t";
connectAttr "manifestHub5.spar[53]" "cubeStamp54.r";
connectAttr "manifestHub5.spa[54]" "cubeStamp55.spawnedBy";
connectAttr "manifestHub5.spat[54]" "cubeStamp55.t";
connectAttr "manifestHub5.spar[54]" "cubeStamp55.r";
connectAttr "manifestHub5.spa[55]" "cubeStamp56.spawnedBy";
connectAttr "manifestHub5.spat[55]" "cubeStamp56.t";
connectAttr "manifestHub5.spar[55]" "cubeStamp56.r";
connectAttr "manifestHub5.spa[56]" "cubeStamp57.spawnedBy";
connectAttr "manifestHub5.spat[56]" "cubeStamp57.t";
connectAttr "manifestHub5.spar[56]" "cubeStamp57.r";
connectAttr "manifestHub5.spa[57]" "cubeStamp58.spawnedBy";
connectAttr "manifestHub5.spat[57]" "cubeStamp58.t";
connectAttr "manifestHub5.spar[57]" "cubeStamp58.r";
connectAttr "manifestHub5.spa[58]" "cubeStamp59.spawnedBy";
connectAttr "manifestHub5.spat[58]" "cubeStamp59.t";
connectAttr "manifestHub5.spar[58]" "cubeStamp59.r";
connectAttr "manifestHub5.spa[59]" "cubeStamp60.spawnedBy";
connectAttr "manifestHub5.spat[59]" "cubeStamp60.t";
connectAttr "manifestHub5.spar[59]" "cubeStamp60.r";
connectAttr "manifestHub5.spa[60]" "cubeStamp61.spawnedBy";
connectAttr "manifestHub5.spat[60]" "cubeStamp61.t";
connectAttr "manifestHub5.spar[60]" "cubeStamp61.r";
connectAttr "manifestHub5.spa[61]" "cubeStamp62.spawnedBy";
connectAttr "manifestHub5.spat[61]" "cubeStamp62.t";
connectAttr "manifestHub5.spar[61]" "cubeStamp62.r";
connectAttr "manifestHub5.spa[62]" "cubeStamp63.spawnedBy";
connectAttr "manifestHub5.spat[62]" "cubeStamp63.t";
connectAttr "manifestHub5.spar[62]" "cubeStamp63.r";
connectAttr "manifestHub5.spa[63]" "cubeStamp64.spawnedBy";
connectAttr "manifestHub5.spat[63]" "cubeStamp64.t";
connectAttr "manifestHub5.spar[63]" "cubeStamp64.r";
connectAttr "manifestHub5.spa[64]" "cubeStamp65.spawnedBy";
connectAttr "manifestHub5.spat[64]" "cubeStamp65.t";
connectAttr "manifestHub5.spar[64]" "cubeStamp65.r";
connectAttr "manifestHub5.spa[65]" "cubeStamp66.spawnedBy";
connectAttr "manifestHub5.spat[65]" "cubeStamp66.t";
connectAttr "manifestHub5.spar[65]" "cubeStamp66.r";
connectAttr "manifestHub5.spa[66]" "cubeStamp67.spawnedBy";
connectAttr "manifestHub5.spat[66]" "cubeStamp67.t";
connectAttr "manifestHub5.spar[66]" "cubeStamp67.r";
connectAttr "manifestHub5.spa[67]" "cubeStamp68.spawnedBy";
connectAttr "manifestHub5.spat[67]" "cubeStamp68.t";
connectAttr "manifestHub5.spar[67]" "cubeStamp68.r";
connectAttr "manifestHub5.spa[68]" "cubeStamp69.spawnedBy";
connectAttr "manifestHub5.spat[68]" "cubeStamp69.t";
connectAttr "manifestHub5.spar[68]" "cubeStamp69.r";
connectAttr "manifestHub5.spa[69]" "cubeStamp70.spawnedBy";
connectAttr "manifestHub5.spat[69]" "cubeStamp70.t";
connectAttr "manifestHub5.spar[69]" "cubeStamp70.r";
connectAttr "manifestHub5.spa[70]" "cubeStamp71.spawnedBy";
connectAttr "manifestHub5.spat[70]" "cubeStamp71.t";
connectAttr "manifestHub5.spar[70]" "cubeStamp71.r";
connectAttr "manifestHub5.spa[71]" "cubeStamp72.spawnedBy";
connectAttr "manifestHub5.spat[71]" "cubeStamp72.t";
connectAttr "manifestHub5.spar[71]" "cubeStamp72.r";
connectAttr "manifestHub5.spa[72]" "cubeStamp73.spawnedBy";
connectAttr "manifestHub5.spat[72]" "cubeStamp73.t";
connectAttr "manifestHub5.spar[72]" "cubeStamp73.r";
connectAttr "manifestHub5.spa[73]" "cubeStamp74.spawnedBy";
connectAttr "manifestHub5.spat[73]" "cubeStamp74.t";
connectAttr "manifestHub5.spar[73]" "cubeStamp74.r";
connectAttr "manifestHub5.spa[74]" "cubeStamp75.spawnedBy";
connectAttr "manifestHub5.spat[74]" "cubeStamp75.t";
connectAttr "manifestHub5.spar[74]" "cubeStamp75.r";
connectAttr "manifestHub5.spa[75]" "cubeStamp76.spawnedBy";
connectAttr "manifestHub5.spat[75]" "cubeStamp76.t";
connectAttr "manifestHub5.spar[75]" "cubeStamp76.r";
connectAttr "manifestHub5.spa[76]" "cubeStamp77.spawnedBy";
connectAttr "manifestHub5.spat[76]" "cubeStamp77.t";
connectAttr "manifestHub5.spar[76]" "cubeStamp77.r";
connectAttr "manifestHub5.spa[77]" "cubeStamp78.spawnedBy";
connectAttr "manifestHub5.spat[77]" "cubeStamp78.t";
connectAttr "manifestHub5.spar[77]" "cubeStamp78.r";
connectAttr "manifestHub5.spa[78]" "cubeStamp79.spawnedBy";
connectAttr "manifestHub5.spat[78]" "cubeStamp79.t";
connectAttr "manifestHub5.spar[78]" "cubeStamp79.r";
connectAttr "manifestHub5.spa[79]" "cubeStamp80.spawnedBy";
connectAttr "manifestHub5.spat[79]" "cubeStamp80.t";
connectAttr "manifestHub5.spar[79]" "cubeStamp80.r";
connectAttr "manifestHub5.spa[80]" "cubeStamp81.spawnedBy";
connectAttr "manifestHub5.spat[80]" "cubeStamp81.t";
connectAttr "manifestHub5.spar[80]" "cubeStamp81.r";
connectAttr "manifestHub5.spa[81]" "cubeStamp82.spawnedBy";
connectAttr "manifestHub5.spat[81]" "cubeStamp82.t";
connectAttr "manifestHub5.spar[81]" "cubeStamp82.r";
connectAttr "manifestHub5.spa[82]" "cubeStamp83.spawnedBy";
connectAttr "manifestHub5.spat[82]" "cubeStamp83.t";
connectAttr "manifestHub5.spar[82]" "cubeStamp83.r";
connectAttr "manifestHub5.spa[83]" "cubeStamp84.spawnedBy";
connectAttr "manifestHub5.spat[83]" "cubeStamp84.t";
connectAttr "manifestHub5.spar[83]" "cubeStamp84.r";
connectAttr "manifestHub5.spa[84]" "cubeStamp85.spawnedBy";
connectAttr "manifestHub5.spat[84]" "cubeStamp85.t";
connectAttr "manifestHub5.spar[84]" "cubeStamp85.r";
connectAttr "manifestHub5.spa[85]" "cubeStamp86.spawnedBy";
connectAttr "manifestHub5.spat[85]" "cubeStamp86.t";
connectAttr "manifestHub5.spar[85]" "cubeStamp86.r";
connectAttr "manifestHub5.spa[86]" "cubeStamp87.spawnedBy";
connectAttr "manifestHub5.spat[86]" "cubeStamp87.t";
connectAttr "manifestHub5.spar[86]" "cubeStamp87.r";
connectAttr "manifestHub5.spa[87]" "cubeStamp88.spawnedBy";
connectAttr "manifestHub5.spat[87]" "cubeStamp88.t";
connectAttr "manifestHub5.spar[87]" "cubeStamp88.r";
connectAttr "manifestHub5.spa[88]" "cubeStamp89.spawnedBy";
connectAttr "manifestHub5.spat[88]" "cubeStamp89.t";
connectAttr "manifestHub5.spar[88]" "cubeStamp89.r";
connectAttr "manifestHub5.spa[89]" "cubeStamp90.spawnedBy";
connectAttr "manifestHub5.spat[89]" "cubeStamp90.t";
connectAttr "manifestHub5.spar[89]" "cubeStamp90.r";
connectAttr "manifestHub5.spa[90]" "cubeStamp91.spawnedBy";
connectAttr "manifestHub5.spat[90]" "cubeStamp91.t";
connectAttr "manifestHub5.spar[90]" "cubeStamp91.r";
connectAttr "manifestHub5.spa[91]" "cubeStamp92.spawnedBy";
connectAttr "manifestHub5.spat[91]" "cubeStamp92.t";
connectAttr "manifestHub5.spar[91]" "cubeStamp92.r";
connectAttr "manifestHub5.spa[92]" "cubeStamp93.spawnedBy";
connectAttr "manifestHub5.spat[92]" "cubeStamp93.t";
connectAttr "manifestHub5.spar[92]" "cubeStamp93.r";
connectAttr "manifestHub5.spa[93]" "cubeStamp94.spawnedBy";
connectAttr "manifestHub5.spat[93]" "cubeStamp94.t";
connectAttr "manifestHub5.spar[93]" "cubeStamp94.r";
connectAttr "manifestHub5.spa[94]" "cubeStamp95.spawnedBy";
connectAttr "manifestHub5.spat[94]" "cubeStamp95.t";
connectAttr "manifestHub5.spar[94]" "cubeStamp95.r";
connectAttr "manifestHub5.spa[95]" "cubeStamp96.spawnedBy";
connectAttr "manifestHub5.spat[95]" "cubeStamp96.t";
connectAttr "manifestHub5.spar[95]" "cubeStamp96.r";
connectAttr "manifestHub5.spa[96]" "cubeStamp97.spawnedBy";
connectAttr "manifestHub5.spat[96]" "cubeStamp97.t";
connectAttr "manifestHub5.spar[96]" "cubeStamp97.r";
connectAttr "manifestHub5.spa[97]" "cubeStamp98.spawnedBy";
connectAttr "manifestHub5.spat[97]" "cubeStamp98.t";
connectAttr "manifestHub5.spar[97]" "cubeStamp98.r";
connectAttr "manifestHub5.spa[98]" "cubeStamp99.spawnedBy";
connectAttr "manifestHub5.spat[98]" "cubeStamp99.t";
connectAttr "manifestHub5.spar[98]" "cubeStamp99.r";
connectAttr "manifestHub5.spa[99]" "cubeStamp100.spawnedBy";
connectAttr "manifestHub5.spat[99]" "cubeStamp100.t";
connectAttr "manifestHub5.spar[99]" "cubeStamp100.r";
connectAttr "manifestHub5.spa[100]" "cubeStamp101.spawnedBy";
connectAttr "manifestHub5.spat[100]" "cubeStamp101.t";
connectAttr "manifestHub5.spar[100]" "cubeStamp101.r";
connectAttr "manifestHub5.spa[101]" "cubeStamp102.spawnedBy";
connectAttr "manifestHub5.spat[101]" "cubeStamp102.t";
connectAttr "manifestHub5.spar[101]" "cubeStamp102.r";
connectAttr "manifestHub5.spa[102]" "cubeStamp103.spawnedBy";
connectAttr "manifestHub5.spat[102]" "cubeStamp103.t";
connectAttr "manifestHub5.spar[102]" "cubeStamp103.r";
connectAttr "manifestHub5.spa[103]" "cubeStamp104.spawnedBy";
connectAttr "manifestHub5.spat[103]" "cubeStamp104.t";
connectAttr "manifestHub5.spar[103]" "cubeStamp104.r";
connectAttr "manifestHub5.spa[104]" "cubeStamp105.spawnedBy";
connectAttr "manifestHub5.spat[104]" "cubeStamp105.t";
connectAttr "manifestHub5.spar[104]" "cubeStamp105.r";
connectAttr "manifestHub5.spa[105]" "cubeStamp106.spawnedBy";
connectAttr "manifestHub5.spat[105]" "cubeStamp106.t";
connectAttr "manifestHub5.spar[105]" "cubeStamp106.r";
connectAttr "manifestHub5.spa[106]" "cubeStamp107.spawnedBy";
connectAttr "manifestHub5.spat[106]" "cubeStamp107.t";
connectAttr "manifestHub5.spar[106]" "cubeStamp107.r";
connectAttr "manifestHub5.spa[107]" "cubeStamp108.spawnedBy";
connectAttr "manifestHub5.spat[107]" "cubeStamp108.t";
connectAttr "manifestHub5.spar[107]" "cubeStamp108.r";
connectAttr "manifestHub5.spa[108]" "cubeStamp109.spawnedBy";
connectAttr "manifestHub5.spat[108]" "cubeStamp109.t";
connectAttr "manifestHub5.spar[108]" "cubeStamp109.r";
connectAttr "manifestHub5.spa[109]" "cubeStamp110.spawnedBy";
connectAttr "manifestHub5.spat[109]" "cubeStamp110.t";
connectAttr "manifestHub5.spar[109]" "cubeStamp110.r";
connectAttr "manifestHub5.spa[110]" "cubeStamp111.spawnedBy";
connectAttr "manifestHub5.spat[110]" "cubeStamp111.t";
connectAttr "manifestHub5.spar[110]" "cubeStamp111.r";
connectAttr "manifestHub5.spa[111]" "cubeStamp112.spawnedBy";
connectAttr "manifestHub5.spat[111]" "cubeStamp112.t";
connectAttr "manifestHub5.spar[111]" "cubeStamp112.r";
connectAttr "manifestHub5.spa[112]" "cubeStamp113.spawnedBy";
connectAttr "manifestHub5.spat[112]" "cubeStamp113.t";
connectAttr "manifestHub5.spar[112]" "cubeStamp113.r";
connectAttr "manifestHub5.spa[113]" "cubeStamp114.spawnedBy";
connectAttr "manifestHub5.spat[113]" "cubeStamp114.t";
connectAttr "manifestHub5.spar[113]" "cubeStamp114.r";
connectAttr "manifestHub5.spa[114]" "cubeStamp115.spawnedBy";
connectAttr "manifestHub5.spat[114]" "cubeStamp115.t";
connectAttr "manifestHub5.spar[114]" "cubeStamp115.r";
connectAttr "manifestHub5.spa[115]" "cubeStamp116.spawnedBy";
connectAttr "manifestHub5.spat[115]" "cubeStamp116.t";
connectAttr "manifestHub5.spar[115]" "cubeStamp116.r";
connectAttr "manifestHub5.spa[116]" "cubeStamp117.spawnedBy";
connectAttr "manifestHub5.spat[116]" "cubeStamp117.t";
connectAttr "manifestHub5.spar[116]" "cubeStamp117.r";
connectAttr "manifestHub5.spa[117]" "cubeStamp118.spawnedBy";
connectAttr "manifestHub5.spat[117]" "cubeStamp118.t";
connectAttr "manifestHub5.spar[117]" "cubeStamp118.r";
connectAttr "manifestHub5.spa[118]" "cubeStamp119.spawnedBy";
connectAttr "manifestHub5.spat[118]" "cubeStamp119.t";
connectAttr "manifestHub5.spar[118]" "cubeStamp119.r";
connectAttr "manifestHub5.spa[119]" "cubeStamp120.spawnedBy";
connectAttr "manifestHub5.spat[119]" "cubeStamp120.t";
connectAttr "manifestHub5.spar[119]" "cubeStamp120.r";
connectAttr "manifestHub5.spa[120]" "cubeStamp121.spawnedBy";
connectAttr "manifestHub5.spat[120]" "cubeStamp121.t";
connectAttr "manifestHub5.spar[120]" "cubeStamp121.r";
connectAttr "manifestHub5.spa[121]" "cubeStamp122.spawnedBy";
connectAttr "manifestHub5.spat[121]" "cubeStamp122.t";
connectAttr "manifestHub5.spar[121]" "cubeStamp122.r";
connectAttr "manifestHub5.spa[122]" "cubeStamp123.spawnedBy";
connectAttr "manifestHub5.spat[122]" "cubeStamp123.t";
connectAttr "manifestHub5.spar[122]" "cubeStamp123.r";
connectAttr "manifestHub5.spa[123]" "cubeStamp124.spawnedBy";
connectAttr "manifestHub5.spat[123]" "cubeStamp124.t";
connectAttr "manifestHub5.spar[123]" "cubeStamp124.r";
connectAttr "manifestHub5.spa[124]" "cubeStamp125.spawnedBy";
connectAttr "manifestHub5.spat[124]" "cubeStamp125.t";
connectAttr "manifestHub5.spar[124]" "cubeStamp125.r";
connectAttr "manifestHub5.spa[125]" "cubeStamp126.spawnedBy";
connectAttr "manifestHub5.spat[125]" "cubeStamp126.t";
connectAttr "manifestHub5.spar[125]" "cubeStamp126.r";
connectAttr "manifestHub5.spa[126]" "cubeStamp127.spawnedBy";
connectAttr "manifestHub5.spat[126]" "cubeStamp127.t";
connectAttr "manifestHub5.spar[126]" "cubeStamp127.r";
connectAttr "manifestHub5.spa[127]" "cubeStamp128.spawnedBy";
connectAttr "manifestHub5.spat[127]" "cubeStamp128.t";
connectAttr "manifestHub5.spar[127]" "cubeStamp128.r";
connectAttr "manifestHub5.spa[128]" "cubeStamp129.spawnedBy";
connectAttr "manifestHub5.spat[128]" "cubeStamp129.t";
connectAttr "manifestHub5.spar[128]" "cubeStamp129.r";
connectAttr "manifestHub5.spa[129]" "cubeStamp130.spawnedBy";
connectAttr "manifestHub5.spat[129]" "cubeStamp130.t";
connectAttr "manifestHub5.spar[129]" "cubeStamp130.r";
connectAttr "manifestHub5.spa[130]" "cubeStamp131.spawnedBy";
connectAttr "manifestHub5.spat[130]" "cubeStamp131.t";
connectAttr "manifestHub5.spar[130]" "cubeStamp131.r";
connectAttr "manifestHub5.spa[131]" "cubeStamp132.spawnedBy";
connectAttr "manifestHub5.spat[131]" "cubeStamp132.t";
connectAttr "manifestHub5.spar[131]" "cubeStamp132.r";
connectAttr "manifestHub5.spa[132]" "cubeStamp133.spawnedBy";
connectAttr "manifestHub5.spat[132]" "cubeStamp133.t";
connectAttr "manifestHub5.spar[132]" "cubeStamp133.r";
connectAttr "manifestHub5.spa[133]" "cubeStamp134.spawnedBy";
connectAttr "manifestHub5.spat[133]" "cubeStamp134.t";
connectAttr "manifestHub5.spar[133]" "cubeStamp134.r";
connectAttr "manifestHub5.spa[134]" "cubeStamp135.spawnedBy";
connectAttr "manifestHub5.spat[134]" "cubeStamp135.t";
connectAttr "manifestHub5.spar[134]" "cubeStamp135.r";
connectAttr "manifestHub5.spa[135]" "cubeStamp136.spawnedBy";
connectAttr "manifestHub5.spat[135]" "cubeStamp136.t";
connectAttr "manifestHub5.spar[135]" "cubeStamp136.r";
connectAttr "manifestHub5.spa[136]" "cubeStamp137.spawnedBy";
connectAttr "manifestHub5.spat[136]" "cubeStamp137.t";
connectAttr "manifestHub5.spar[136]" "cubeStamp137.r";
connectAttr "manifestHub5.spa[137]" "cubeStamp138.spawnedBy";
connectAttr "manifestHub5.spat[137]" "cubeStamp138.t";
connectAttr "manifestHub5.spar[137]" "cubeStamp138.r";
connectAttr "manifestHub5.spa[138]" "cubeStamp139.spawnedBy";
connectAttr "manifestHub5.spat[138]" "cubeStamp139.t";
connectAttr "manifestHub5.spar[138]" "cubeStamp139.r";
connectAttr "manifestHub5.spa[139]" "cubeStamp140.spawnedBy";
connectAttr "manifestHub5.spat[139]" "cubeStamp140.t";
connectAttr "manifestHub5.spar[139]" "cubeStamp140.r";
connectAttr "manifestHub5.spa[140]" "cubeStamp141.spawnedBy";
connectAttr "manifestHub5.spat[140]" "cubeStamp141.t";
connectAttr "manifestHub5.spar[140]" "cubeStamp141.r";
connectAttr "manifestHub5.spa[141]" "cubeStamp142.spawnedBy";
connectAttr "manifestHub5.spat[141]" "cubeStamp142.t";
connectAttr "manifestHub5.spar[141]" "cubeStamp142.r";
connectAttr "manifestHub5.spa[142]" "cubeStamp143.spawnedBy";
connectAttr "manifestHub5.spat[142]" "cubeStamp143.t";
connectAttr "manifestHub5.spar[142]" "cubeStamp143.r";
connectAttr "manifestHub5.spa[143]" "cubeStamp144.spawnedBy";
connectAttr "manifestHub5.spat[143]" "cubeStamp144.t";
connectAttr "manifestHub5.spar[143]" "cubeStamp144.r";
connectAttr "manifestHub5.spa[144]" "cubeStamp145.spawnedBy";
connectAttr "manifestHub5.spat[144]" "cubeStamp145.t";
connectAttr "manifestHub5.spar[144]" "cubeStamp145.r";
connectAttr "manifestHub5.spa[145]" "cubeStamp146.spawnedBy";
connectAttr "manifestHub5.spat[145]" "cubeStamp146.t";
connectAttr "manifestHub5.spar[145]" "cubeStamp146.r";
connectAttr "manifestHub5.spa[146]" "cubeStamp147.spawnedBy";
connectAttr "manifestHub5.spat[146]" "cubeStamp147.t";
connectAttr "manifestHub5.spar[146]" "cubeStamp147.r";
connectAttr "manifestHub5.spa[147]" "cubeStamp148.spawnedBy";
connectAttr "manifestHub5.spat[147]" "cubeStamp148.t";
connectAttr "manifestHub5.spar[147]" "cubeStamp148.r";
connectAttr "manifestHub5.spa[148]" "cubeStamp149.spawnedBy";
connectAttr "manifestHub5.spat[148]" "cubeStamp149.t";
connectAttr "manifestHub5.spar[148]" "cubeStamp149.r";
connectAttr "manifestHub5.spa[149]" "cubeStamp150.spawnedBy";
connectAttr "manifestHub5.spat[149]" "cubeStamp150.t";
connectAttr "manifestHub5.spar[149]" "cubeStamp150.r";
connectAttr "manifestHub5.spa[150]" "cubeStamp151.spawnedBy";
connectAttr "manifestHub5.spat[150]" "cubeStamp151.t";
connectAttr "manifestHub5.spar[150]" "cubeStamp151.r";
connectAttr "manifestHub5.spa[151]" "cubeStamp152.spawnedBy";
connectAttr "manifestHub5.spat[151]" "cubeStamp152.t";
connectAttr "manifestHub5.spar[151]" "cubeStamp152.r";
connectAttr "manifestHub5.spa[152]" "cubeStamp153.spawnedBy";
connectAttr "manifestHub5.spat[152]" "cubeStamp153.t";
connectAttr "manifestHub5.spar[152]" "cubeStamp153.r";
connectAttr "manifestHub5.spa[153]" "cubeStamp154.spawnedBy";
connectAttr "manifestHub5.spat[153]" "cubeStamp154.t";
connectAttr "manifestHub5.spar[153]" "cubeStamp154.r";
connectAttr "manifestHub5.spa[154]" "cubeStamp155.spawnedBy";
connectAttr "manifestHub5.spat[154]" "cubeStamp155.t";
connectAttr "manifestHub5.spar[154]" "cubeStamp155.r";
connectAttr "manifestHub5.spa[155]" "cubeStamp156.spawnedBy";
connectAttr "manifestHub5.spat[155]" "cubeStamp156.t";
connectAttr "manifestHub5.spar[155]" "cubeStamp156.r";
connectAttr "manifestHub5.spa[156]" "cubeStamp157.spawnedBy";
connectAttr "manifestHub5.spat[156]" "cubeStamp157.t";
connectAttr "manifestHub5.spar[156]" "cubeStamp157.r";
connectAttr "manifestHub5.spa[157]" "cubeStamp158.spawnedBy";
connectAttr "manifestHub5.spat[157]" "cubeStamp158.t";
connectAttr "manifestHub5.spar[157]" "cubeStamp158.r";
connectAttr "manifestHub5.spa[158]" "cubeStamp159.spawnedBy";
connectAttr "manifestHub5.spat[158]" "cubeStamp159.t";
connectAttr "manifestHub5.spar[158]" "cubeStamp159.r";
connectAttr "manifestHub5.spa[159]" "cubeStamp160.spawnedBy";
connectAttr "manifestHub5.spat[159]" "cubeStamp160.t";
connectAttr "manifestHub5.spar[159]" "cubeStamp160.r";
connectAttr "manifestHub5.spa[160]" "cubeStamp161.spawnedBy";
connectAttr "manifestHub5.spat[160]" "cubeStamp161.t";
connectAttr "manifestHub5.spar[160]" "cubeStamp161.r";
connectAttr "manifestHub5.spa[161]" "cubeStamp162.spawnedBy";
connectAttr "manifestHub5.spat[161]" "cubeStamp162.t";
connectAttr "manifestHub5.spar[161]" "cubeStamp162.r";
connectAttr "manifestHub5.spa[162]" "cubeStamp163.spawnedBy";
connectAttr "manifestHub5.spat[162]" "cubeStamp163.t";
connectAttr "manifestHub5.spar[162]" "cubeStamp163.r";
connectAttr "manifestHub5.spa[163]" "cubeStamp164.spawnedBy";
connectAttr "manifestHub5.spat[163]" "cubeStamp164.t";
connectAttr "manifestHub5.spar[163]" "cubeStamp164.r";
connectAttr "manifestHub5.spa[164]" "cubeStamp165.spawnedBy";
connectAttr "manifestHub5.spat[164]" "cubeStamp165.t";
connectAttr "manifestHub5.spar[164]" "cubeStamp165.r";
connectAttr "manifestHub5.spa[165]" "cubeStamp166.spawnedBy";
connectAttr "manifestHub5.spat[165]" "cubeStamp166.t";
connectAttr "manifestHub5.spar[165]" "cubeStamp166.r";
connectAttr "manifestHub5.spa[166]" "cubeStamp167.spawnedBy";
connectAttr "manifestHub5.spat[166]" "cubeStamp167.t";
connectAttr "manifestHub5.spar[166]" "cubeStamp167.r";
connectAttr "manifestHub5.spa[167]" "cubeStamp168.spawnedBy";
connectAttr "manifestHub5.spat[167]" "cubeStamp168.t";
connectAttr "manifestHub5.spar[167]" "cubeStamp168.r";
connectAttr "manifestHub5.spa[168]" "cubeStamp169.spawnedBy";
connectAttr "manifestHub5.spat[168]" "cubeStamp169.t";
connectAttr "manifestHub5.spar[168]" "cubeStamp169.r";
connectAttr "manifestHub5.spa[169]" "cubeStamp170.spawnedBy";
connectAttr "manifestHub5.spat[169]" "cubeStamp170.t";
connectAttr "manifestHub5.spar[169]" "cubeStamp170.r";
connectAttr "manifestHub5.spa[170]" "cubeStamp171.spawnedBy";
connectAttr "manifestHub5.spat[170]" "cubeStamp171.t";
connectAttr "manifestHub5.spar[170]" "cubeStamp171.r";
connectAttr "manifestHub5.spa[171]" "cubeStamp172.spawnedBy";
connectAttr "manifestHub5.spat[171]" "cubeStamp172.t";
connectAttr "manifestHub5.spar[171]" "cubeStamp172.r";
connectAttr "manifestHub5.spa[172]" "cubeStamp173.spawnedBy";
connectAttr "manifestHub5.spat[172]" "cubeStamp173.t";
connectAttr "manifestHub5.spar[172]" "cubeStamp173.r";
connectAttr "manifestHub5.spa[173]" "cubeStamp174.spawnedBy";
connectAttr "manifestHub5.spat[173]" "cubeStamp174.t";
connectAttr "manifestHub5.spar[173]" "cubeStamp174.r";
connectAttr "manifestHub5.spa[174]" "cubeStamp175.spawnedBy";
connectAttr "manifestHub5.spat[174]" "cubeStamp175.t";
connectAttr "manifestHub5.spar[174]" "cubeStamp175.r";
connectAttr "manifestHub5.spa[175]" "cubeStamp176.spawnedBy";
connectAttr "manifestHub5.spat[175]" "cubeStamp176.t";
connectAttr "manifestHub5.spar[175]" "cubeStamp176.r";
connectAttr "manifestHub5.spa[176]" "cubeStamp177.spawnedBy";
connectAttr "manifestHub5.spat[176]" "cubeStamp177.t";
connectAttr "manifestHub5.spar[176]" "cubeStamp177.r";
connectAttr "manifestHub5.spa[177]" "cubeStamp178.spawnedBy";
connectAttr "manifestHub5.spat[177]" "cubeStamp178.t";
connectAttr "manifestHub5.spar[177]" "cubeStamp178.r";
connectAttr "manifestHub5.spa[178]" "cubeStamp179.spawnedBy";
connectAttr "manifestHub5.spat[178]" "cubeStamp179.t";
connectAttr "manifestHub5.spar[178]" "cubeStamp179.r";
connectAttr "manifestHub5.spa[179]" "cubeStamp180.spawnedBy";
connectAttr "manifestHub5.spat[179]" "cubeStamp180.t";
connectAttr "manifestHub5.spar[179]" "cubeStamp180.r";
connectAttr "manifestHub5.spa[180]" "cubeStamp181.spawnedBy";
connectAttr "manifestHub5.spat[180]" "cubeStamp181.t";
connectAttr "manifestHub5.spar[180]" "cubeStamp181.r";
connectAttr "manifestHub5.spa[181]" "cubeStamp182.spawnedBy";
connectAttr "manifestHub5.spat[181]" "cubeStamp182.t";
connectAttr "manifestHub5.spar[181]" "cubeStamp182.r";
connectAttr "manifestHub5.spa[182]" "cubeStamp183.spawnedBy";
connectAttr "manifestHub5.spat[182]" "cubeStamp183.t";
connectAttr "manifestHub5.spar[182]" "cubeStamp183.r";
connectAttr "manifestHub5.spa[183]" "cubeStamp184.spawnedBy";
connectAttr "manifestHub5.spat[183]" "cubeStamp184.t";
connectAttr "manifestHub5.spar[183]" "cubeStamp184.r";
connectAttr "manifestHub5.spa[184]" "cubeStamp185.spawnedBy";
connectAttr "manifestHub5.spat[184]" "cubeStamp185.t";
connectAttr "manifestHub5.spar[184]" "cubeStamp185.r";
connectAttr "manifestHub5.spa[185]" "cubeStamp186.spawnedBy";
connectAttr "manifestHub5.spat[185]" "cubeStamp186.t";
connectAttr "manifestHub5.spar[185]" "cubeStamp186.r";
connectAttr "manifestHub5.spa[186]" "cubeStamp187.spawnedBy";
connectAttr "manifestHub5.spat[186]" "cubeStamp187.t";
connectAttr "manifestHub5.spar[186]" "cubeStamp187.r";
connectAttr "manifestHub5.spa[187]" "cubeStamp188.spawnedBy";
connectAttr "manifestHub5.spat[187]" "cubeStamp188.t";
connectAttr "manifestHub5.spar[187]" "cubeStamp188.r";
connectAttr "manifestHub5.spa[188]" "cubeStamp189.spawnedBy";
connectAttr "manifestHub5.spat[188]" "cubeStamp189.t";
connectAttr "manifestHub5.spar[188]" "cubeStamp189.r";
connectAttr "manifestHub5.spa[189]" "cubeStamp190.spawnedBy";
connectAttr "manifestHub5.spat[189]" "cubeStamp190.t";
connectAttr "manifestHub5.spar[189]" "cubeStamp190.r";
connectAttr "manifestHub5.spa[190]" "cubeStamp191.spawnedBy";
connectAttr "manifestHub5.spat[190]" "cubeStamp191.t";
connectAttr "manifestHub5.spar[190]" "cubeStamp191.r";
connectAttr "manifestHub5.spa[191]" "cubeStamp192.spawnedBy";
connectAttr "manifestHub5.spat[191]" "cubeStamp192.t";
connectAttr "manifestHub5.spar[191]" "cubeStamp192.r";
connectAttr "manifestHub5.spa[192]" "cubeStamp193.spawnedBy";
connectAttr "manifestHub5.spat[192]" "cubeStamp193.t";
connectAttr "manifestHub5.spar[192]" "cubeStamp193.r";
connectAttr "manifestHub5.spa[193]" "cubeStamp194.spawnedBy";
connectAttr "manifestHub5.spat[193]" "cubeStamp194.t";
connectAttr "manifestHub5.spar[193]" "cubeStamp194.r";
connectAttr "manifestHub5.spa[194]" "cubeStamp195.spawnedBy";
connectAttr "manifestHub5.spat[194]" "cubeStamp195.t";
connectAttr "manifestHub5.spar[194]" "cubeStamp195.r";
connectAttr "manifestHub5.spa[195]" "cubeStamp196.spawnedBy";
connectAttr "manifestHub5.spat[195]" "cubeStamp196.t";
connectAttr "manifestHub5.spar[195]" "cubeStamp196.r";
connectAttr "manifestHub5.spa[196]" "cubeStamp197.spawnedBy";
connectAttr "manifestHub5.spat[196]" "cubeStamp197.t";
connectAttr "manifestHub5.spar[196]" "cubeStamp197.r";
connectAttr "manifestHub5.spa[197]" "cubeStamp198.spawnedBy";
connectAttr "manifestHub5.spat[197]" "cubeStamp198.t";
connectAttr "manifestHub5.spar[197]" "cubeStamp198.r";
connectAttr "manifestHub5.spa[198]" "cubeStamp199.spawnedBy";
connectAttr "manifestHub5.spat[198]" "cubeStamp199.t";
connectAttr "manifestHub5.spar[198]" "cubeStamp199.r";
connectAttr "manifestHub5.spa[199]" "cubeStamp200.spawnedBy";
connectAttr "manifestHub5.spat[199]" "cubeStamp200.t";
connectAttr "manifestHub5.spar[199]" "cubeStamp200.r";
connectAttr "manifestHub5.spa[200]" "cubeStamp201.spawnedBy";
connectAttr "manifestHub5.spat[200]" "cubeStamp201.t";
connectAttr "manifestHub5.spar[200]" "cubeStamp201.r";
connectAttr "manifestHub5.spa[201]" "cubeStamp202.spawnedBy";
connectAttr "manifestHub5.spat[201]" "cubeStamp202.t";
connectAttr "manifestHub5.spar[201]" "cubeStamp202.r";
connectAttr "manifestHub5.spa[202]" "cubeStamp203.spawnedBy";
connectAttr "manifestHub5.spat[202]" "cubeStamp203.t";
connectAttr "manifestHub5.spar[202]" "cubeStamp203.r";
connectAttr "manifestHub5.spa[203]" "cubeStamp204.spawnedBy";
connectAttr "manifestHub5.spat[203]" "cubeStamp204.t";
connectAttr "manifestHub5.spar[203]" "cubeStamp204.r";
connectAttr "manifestHub5.spa[204]" "cubeStamp205.spawnedBy";
connectAttr "manifestHub5.spat[204]" "cubeStamp205.t";
connectAttr "manifestHub5.spar[204]" "cubeStamp205.r";
connectAttr "manifestHub5.spa[205]" "cubeStamp206.spawnedBy";
connectAttr "manifestHub5.spat[205]" "cubeStamp206.t";
connectAttr "manifestHub5.spar[205]" "cubeStamp206.r";
connectAttr "manifestHub5.spa[206]" "cubeStamp207.spawnedBy";
connectAttr "manifestHub5.spat[206]" "cubeStamp207.t";
connectAttr "manifestHub5.spar[206]" "cubeStamp207.r";
connectAttr "manifestHub5.spa[207]" "cubeStamp208.spawnedBy";
connectAttr "manifestHub5.spat[207]" "cubeStamp208.t";
connectAttr "manifestHub5.spar[207]" "cubeStamp208.r";
connectAttr "manifestHub5.spa[208]" "cubeStamp209.spawnedBy";
connectAttr "manifestHub5.spat[208]" "cubeStamp209.t";
connectAttr "manifestHub5.spar[208]" "cubeStamp209.r";
connectAttr "manifestHub5.spa[209]" "cubeStamp210.spawnedBy";
connectAttr "manifestHub5.spat[209]" "cubeStamp210.t";
connectAttr "manifestHub5.spar[209]" "cubeStamp210.r";
connectAttr "manifestHub5.spa[210]" "cubeStamp211.spawnedBy";
connectAttr "manifestHub5.spat[210]" "cubeStamp211.t";
connectAttr "manifestHub5.spar[210]" "cubeStamp211.r";
connectAttr "manifestHub5.spa[211]" "cubeStamp212.spawnedBy";
connectAttr "manifestHub5.spat[211]" "cubeStamp212.t";
connectAttr "manifestHub5.spar[211]" "cubeStamp212.r";
connectAttr "manifestHub5.spa[212]" "cubeStamp213.spawnedBy";
connectAttr "manifestHub5.spat[212]" "cubeStamp213.t";
connectAttr "manifestHub5.spar[212]" "cubeStamp213.r";
connectAttr "manifestHub5.spa[213]" "cubeStamp214.spawnedBy";
connectAttr "manifestHub5.spat[213]" "cubeStamp214.t";
connectAttr "manifestHub5.spar[213]" "cubeStamp214.r";
connectAttr "manifestHub5.spa[214]" "cubeStamp215.spawnedBy";
connectAttr "manifestHub5.spat[214]" "cubeStamp215.t";
connectAttr "manifestHub5.spar[214]" "cubeStamp215.r";
connectAttr "manifestHub5.spa[215]" "cubeStamp216.spawnedBy";
connectAttr "manifestHub5.spat[215]" "cubeStamp216.t";
connectAttr "manifestHub5.spar[215]" "cubeStamp216.r";
connectAttr "manifestHub5.spa[216]" "cubeStamp217.spawnedBy";
connectAttr "manifestHub5.spat[216]" "cubeStamp217.t";
connectAttr "manifestHub5.spar[216]" "cubeStamp217.r";
connectAttr "manifestHub5.spa[217]" "cubeStamp218.spawnedBy";
connectAttr "manifestHub5.spat[217]" "cubeStamp218.t";
connectAttr "manifestHub5.spar[217]" "cubeStamp218.r";
connectAttr "manifestHub5.spa[218]" "cubeStamp219.spawnedBy";
connectAttr "manifestHub5.spat[218]" "cubeStamp219.t";
connectAttr "manifestHub5.spar[218]" "cubeStamp219.r";
connectAttr "manifestHub5.spa[219]" "cubeStamp220.spawnedBy";
connectAttr "manifestHub5.spat[219]" "cubeStamp220.t";
connectAttr "manifestHub5.spar[219]" "cubeStamp220.r";
connectAttr "manifestHub5.spa[220]" "cubeStamp221.spawnedBy";
connectAttr "manifestHub5.spat[220]" "cubeStamp221.t";
connectAttr "manifestHub5.spar[220]" "cubeStamp221.r";
connectAttr "manifestHub5.spa[221]" "cubeStamp222.spawnedBy";
connectAttr "manifestHub5.spat[221]" "cubeStamp222.t";
connectAttr "manifestHub5.spar[221]" "cubeStamp222.r";
connectAttr "manifestHub5.spa[222]" "cubeStamp223.spawnedBy";
connectAttr "manifestHub5.spat[222]" "cubeStamp223.t";
connectAttr "manifestHub5.spar[222]" "cubeStamp223.r";
connectAttr "manifestHub5.spa[223]" "cubeStamp224.spawnedBy";
connectAttr "manifestHub5.spat[223]" "cubeStamp224.t";
connectAttr "manifestHub5.spar[223]" "cubeStamp224.r";
connectAttr "manifestHub5.spa[224]" "cubeStamp225.spawnedBy";
connectAttr "manifestHub5.spat[224]" "cubeStamp225.t";
connectAttr "manifestHub5.spar[224]" "cubeStamp225.r";
connectAttr "manifestHub5.spa[225]" "cubeStamp226.spawnedBy";
connectAttr "manifestHub5.spat[225]" "cubeStamp226.t";
connectAttr "manifestHub5.spar[225]" "cubeStamp226.r";
connectAttr "manifestHub5.spa[226]" "cubeStamp227.spawnedBy";
connectAttr "manifestHub5.spat[226]" "cubeStamp227.t";
connectAttr "manifestHub5.spar[226]" "cubeStamp227.r";
connectAttr "manifestHub5.spa[227]" "cubeStamp228.spawnedBy";
connectAttr "manifestHub5.spat[227]" "cubeStamp228.t";
connectAttr "manifestHub5.spar[227]" "cubeStamp228.r";
connectAttr "manifestHub5.spa[228]" "cubeStamp229.spawnedBy";
connectAttr "manifestHub5.spat[228]" "cubeStamp229.t";
connectAttr "manifestHub5.spar[228]" "cubeStamp229.r";
connectAttr "manifestHub5.spa[229]" "cubeStamp230.spawnedBy";
connectAttr "manifestHub5.spat[229]" "cubeStamp230.t";
connectAttr "manifestHub5.spar[229]" "cubeStamp230.r";
connectAttr "manifestHub5.spa[230]" "cubeStamp231.spawnedBy";
connectAttr "manifestHub5.spat[230]" "cubeStamp231.t";
connectAttr "manifestHub5.spar[230]" "cubeStamp231.r";
connectAttr "manifestHub5.spa[231]" "cubeStamp232.spawnedBy";
connectAttr "manifestHub5.spat[231]" "cubeStamp232.t";
connectAttr "manifestHub5.spar[231]" "cubeStamp232.r";
connectAttr "manifestHub5.spa[232]" "cubeStamp233.spawnedBy";
connectAttr "manifestHub5.spat[232]" "cubeStamp233.t";
connectAttr "manifestHub5.spar[232]" "cubeStamp233.r";
connectAttr "manifestHub5.spa[233]" "cubeStamp234.spawnedBy";
connectAttr "manifestHub5.spat[233]" "cubeStamp234.t";
connectAttr "manifestHub5.spar[233]" "cubeStamp234.r";
connectAttr "manifestHub5.spa[234]" "cubeStamp235.spawnedBy";
connectAttr "manifestHub5.spat[234]" "cubeStamp235.t";
connectAttr "manifestHub5.spar[234]" "cubeStamp235.r";
connectAttr "manifestHub5.spa[235]" "cubeStamp236.spawnedBy";
connectAttr "manifestHub5.spat[235]" "cubeStamp236.t";
connectAttr "manifestHub5.spar[235]" "cubeStamp236.r";
connectAttr "manifestHub5.spa[236]" "cubeStamp237.spawnedBy";
connectAttr "manifestHub5.spat[236]" "cubeStamp237.t";
connectAttr "manifestHub5.spar[236]" "cubeStamp237.r";
connectAttr "manifestHub5.spa[237]" "cubeStamp238.spawnedBy";
connectAttr "manifestHub5.spat[237]" "cubeStamp238.t";
connectAttr "manifestHub5.spar[237]" "cubeStamp238.r";
connectAttr "manifestHub5.spa[238]" "cubeStamp239.spawnedBy";
connectAttr "manifestHub5.spat[238]" "cubeStamp239.t";
connectAttr "manifestHub5.spar[238]" "cubeStamp239.r";
connectAttr "manifestHub5.spa[239]" "cubeStamp240.spawnedBy";
connectAttr "manifestHub5.spat[239]" "cubeStamp240.t";
connectAttr "manifestHub5.spar[239]" "cubeStamp240.r";
connectAttr "manifestHub5.spa[240]" "cubeStamp241.spawnedBy";
connectAttr "manifestHub5.spat[240]" "cubeStamp241.t";
connectAttr "manifestHub5.spar[240]" "cubeStamp241.r";
connectAttr "manifestHub5.spa[241]" "cubeStamp242.spawnedBy";
connectAttr "manifestHub5.spat[241]" "cubeStamp242.t";
connectAttr "manifestHub5.spar[241]" "cubeStamp242.r";
connectAttr "manifestHub5.spa[242]" "cubeStamp243.spawnedBy";
connectAttr "manifestHub5.spat[242]" "cubeStamp243.t";
connectAttr "manifestHub5.spar[242]" "cubeStamp243.r";
connectAttr "manifestHub5.spa[243]" "cubeStamp244.spawnedBy";
connectAttr "manifestHub5.spat[243]" "cubeStamp244.t";
connectAttr "manifestHub5.spar[243]" "cubeStamp244.r";
connectAttr "manifestHub5.spa[244]" "cubeStamp245.spawnedBy";
connectAttr "manifestHub5.spat[244]" "cubeStamp245.t";
connectAttr "manifestHub5.spar[244]" "cubeStamp245.r";
connectAttr "manifestHub5.spa[245]" "cubeStamp246.spawnedBy";
connectAttr "manifestHub5.spat[245]" "cubeStamp246.t";
connectAttr "manifestHub5.spar[245]" "cubeStamp246.r";
connectAttr "manifestHub5.spa[246]" "cubeStamp247.spawnedBy";
connectAttr "manifestHub5.spat[246]" "cubeStamp247.t";
connectAttr "manifestHub5.spar[246]" "cubeStamp247.r";
connectAttr "manifestHub5.spa[247]" "cubeStamp248.spawnedBy";
connectAttr "manifestHub5.spat[247]" "cubeStamp248.t";
connectAttr "manifestHub5.spar[247]" "cubeStamp248.r";
connectAttr "manifestHub5.spa[248]" "cubeStamp249.spawnedBy";
connectAttr "manifestHub5.spat[248]" "cubeStamp249.t";
connectAttr "manifestHub5.spar[248]" "cubeStamp249.r";
connectAttr "manifestHub5.spa[249]" "cubeStamp250.spawnedBy";
connectAttr "manifestHub5.spat[249]" "cubeStamp250.t";
connectAttr "manifestHub5.spar[249]" "cubeStamp250.r";
connectAttr "manifestHub5.spa[250]" "cubeStamp251.spawnedBy";
connectAttr "manifestHub5.spat[250]" "cubeStamp251.t";
connectAttr "manifestHub5.spar[250]" "cubeStamp251.r";
connectAttr "manifestHub5.spa[251]" "cubeStamp252.spawnedBy";
connectAttr "manifestHub5.spat[251]" "cubeStamp252.t";
connectAttr "manifestHub5.spar[251]" "cubeStamp252.r";
connectAttr "manifestHub5.spa[252]" "cubeStamp253.spawnedBy";
connectAttr "manifestHub5.spat[252]" "cubeStamp253.t";
connectAttr "manifestHub5.spar[252]" "cubeStamp253.r";
connectAttr "manifestHub5.spa[253]" "cubeStamp254.spawnedBy";
connectAttr "manifestHub5.spat[253]" "cubeStamp254.t";
connectAttr "manifestHub5.spar[253]" "cubeStamp254.r";
connectAttr "manifestHub5.spa[254]" "cubeStamp255.spawnedBy";
connectAttr "manifestHub5.spat[254]" "cubeStamp255.t";
connectAttr "manifestHub5.spar[254]" "cubeStamp255.r";
connectAttr "manifestHub5.spa[255]" "cubeStamp256.spawnedBy";
connectAttr "manifestHub5.spat[255]" "cubeStamp256.t";
connectAttr "manifestHub5.spar[255]" "cubeStamp256.r";
connectAttr "manifestHub5.spa[256]" "cubeStamp257.spawnedBy";
connectAttr "manifestHub5.spat[256]" "cubeStamp257.t";
connectAttr "manifestHub5.spar[256]" "cubeStamp257.r";
connectAttr "manifestHub5.spa[257]" "cubeStamp258.spawnedBy";
connectAttr "manifestHub5.spat[257]" "cubeStamp258.t";
connectAttr "manifestHub5.spar[257]" "cubeStamp258.r";
connectAttr "manifestHub5.spa[258]" "cubeStamp259.spawnedBy";
connectAttr "manifestHub5.spat[258]" "cubeStamp259.t";
connectAttr "manifestHub5.spar[258]" "cubeStamp259.r";
connectAttr "manifestHub5.spa[259]" "cubeStamp260.spawnedBy";
connectAttr "manifestHub5.spat[259]" "cubeStamp260.t";
connectAttr "manifestHub5.spar[259]" "cubeStamp260.r";
connectAttr "manifestHub5.spa[260]" "cubeStamp261.spawnedBy";
connectAttr "manifestHub5.spat[260]" "cubeStamp261.t";
connectAttr "manifestHub5.spar[260]" "cubeStamp261.r";
connectAttr "manifestHub5.spa[261]" "cubeStamp262.spawnedBy";
connectAttr "manifestHub5.spat[261]" "cubeStamp262.t";
connectAttr "manifestHub5.spar[261]" "cubeStamp262.r";
connectAttr "manifestHub5.spa[262]" "cubeStamp263.spawnedBy";
connectAttr "manifestHub5.spat[262]" "cubeStamp263.t";
connectAttr "manifestHub5.spar[262]" "cubeStamp263.r";
connectAttr "manifestHub5.spa[263]" "cubeStamp264.spawnedBy";
connectAttr "manifestHub5.spat[263]" "cubeStamp264.t";
connectAttr "manifestHub5.spar[263]" "cubeStamp264.r";
connectAttr "manifestHub5.spa[264]" "cubeStamp265.spawnedBy";
connectAttr "manifestHub5.spat[264]" "cubeStamp265.t";
connectAttr "manifestHub5.spar[264]" "cubeStamp265.r";
connectAttr "manifestHub5.spa[265]" "cubeStamp266.spawnedBy";
connectAttr "manifestHub5.spat[265]" "cubeStamp266.t";
connectAttr "manifestHub5.spar[265]" "cubeStamp266.r";
connectAttr "manifestHub5.spa[266]" "cubeStamp267.spawnedBy";
connectAttr "manifestHub5.spat[266]" "cubeStamp267.t";
connectAttr "manifestHub5.spar[266]" "cubeStamp267.r";
connectAttr "manifestHub5.spa[267]" "cubeStamp268.spawnedBy";
connectAttr "manifestHub5.spat[267]" "cubeStamp268.t";
connectAttr "manifestHub5.spar[267]" "cubeStamp268.r";
connectAttr "manifestHub5.spa[268]" "cubeStamp269.spawnedBy";
connectAttr "manifestHub5.spat[268]" "cubeStamp269.t";
connectAttr "manifestHub5.spar[268]" "cubeStamp269.r";
connectAttr "manifestHub5.spa[269]" "cubeStamp270.spawnedBy";
connectAttr "manifestHub5.spat[269]" "cubeStamp270.t";
connectAttr "manifestHub5.spar[269]" "cubeStamp270.r";
connectAttr "manifestHub5.spa[270]" "cubeStamp271.spawnedBy";
connectAttr "manifestHub5.spat[270]" "cubeStamp271.t";
connectAttr "manifestHub5.spar[270]" "cubeStamp271.r";
connectAttr "manifestHub5.spa[271]" "cubeStamp272.spawnedBy";
connectAttr "manifestHub5.spat[271]" "cubeStamp272.t";
connectAttr "manifestHub5.spar[271]" "cubeStamp272.r";
connectAttr "manifestHub5.spa[272]" "cubeStamp273.spawnedBy";
connectAttr "manifestHub5.spat[272]" "cubeStamp273.t";
connectAttr "manifestHub5.spar[272]" "cubeStamp273.r";
connectAttr "manifestHub5.spa[273]" "cubeStamp274.spawnedBy";
connectAttr "manifestHub5.spat[273]" "cubeStamp274.t";
connectAttr "manifestHub5.spar[273]" "cubeStamp274.r";
connectAttr "manifestHub5.spa[274]" "cubeStamp275.spawnedBy";
connectAttr "manifestHub5.spat[274]" "cubeStamp275.t";
connectAttr "manifestHub5.spar[274]" "cubeStamp275.r";
connectAttr "manifestHub5.spa[275]" "cubeStamp276.spawnedBy";
connectAttr "manifestHub5.spat[275]" "cubeStamp276.t";
connectAttr "manifestHub5.spar[275]" "cubeStamp276.r";
connectAttr "manifestHub5.spa[276]" "cubeStamp277.spawnedBy";
connectAttr "manifestHub5.spat[276]" "cubeStamp277.t";
connectAttr "manifestHub5.spar[276]" "cubeStamp277.r";
connectAttr "manifestHub5.spa[277]" "cubeStamp278.spawnedBy";
connectAttr "manifestHub5.spat[277]" "cubeStamp278.t";
connectAttr "manifestHub5.spar[277]" "cubeStamp278.r";
connectAttr "manifestHub5.spa[278]" "cubeStamp279.spawnedBy";
connectAttr "manifestHub5.spat[278]" "cubeStamp279.t";
connectAttr "manifestHub5.spar[278]" "cubeStamp279.r";
connectAttr "manifestHub5.spa[279]" "cubeStamp280.spawnedBy";
connectAttr "manifestHub5.spat[279]" "cubeStamp280.t";
connectAttr "manifestHub5.spar[279]" "cubeStamp280.r";
connectAttr "manifestHub5.spa[280]" "cubeStamp281.spawnedBy";
connectAttr "manifestHub5.spat[280]" "cubeStamp281.t";
connectAttr "manifestHub5.spar[280]" "cubeStamp281.r";
connectAttr "manifestHub5.spa[281]" "cubeStamp282.spawnedBy";
connectAttr "manifestHub5.spat[281]" "cubeStamp282.t";
connectAttr "manifestHub5.spar[281]" "cubeStamp282.r";
connectAttr "manifestHub5.spa[282]" "cubeStamp283.spawnedBy";
connectAttr "manifestHub5.spat[282]" "cubeStamp283.t";
connectAttr "manifestHub5.spar[282]" "cubeStamp283.r";
connectAttr "manifestHub5.spa[283]" "cubeStamp284.spawnedBy";
connectAttr "manifestHub5.spat[283]" "cubeStamp284.t";
connectAttr "manifestHub5.spar[283]" "cubeStamp284.r";
connectAttr "manifestHub5.spa[284]" "cubeStamp285.spawnedBy";
connectAttr "manifestHub5.spat[284]" "cubeStamp285.t";
connectAttr "manifestHub5.spar[284]" "cubeStamp285.r";
connectAttr "manifestHub5.spa[285]" "cubeStamp286.spawnedBy";
connectAttr "manifestHub5.spat[285]" "cubeStamp286.t";
connectAttr "manifestHub5.spar[285]" "cubeStamp286.r";
connectAttr "manifestHub5.spa[286]" "cubeStamp287.spawnedBy";
connectAttr "manifestHub5.spat[286]" "cubeStamp287.t";
connectAttr "manifestHub5.spar[286]" "cubeStamp287.r";
connectAttr "manifestHub5.spa[287]" "cubeStamp288.spawnedBy";
connectAttr "manifestHub5.spat[287]" "cubeStamp288.t";
connectAttr "manifestHub5.spar[287]" "cubeStamp288.r";
connectAttr "manifestHub5.spa[288]" "cubeStamp289.spawnedBy";
connectAttr "manifestHub5.spat[288]" "cubeStamp289.t";
connectAttr "manifestHub5.spar[288]" "cubeStamp289.r";
connectAttr "manifestHub5.spa[289]" "cubeStamp290.spawnedBy";
connectAttr "manifestHub5.spat[289]" "cubeStamp290.t";
connectAttr "manifestHub5.spar[289]" "cubeStamp290.r";
connectAttr "manifestHub5.spa[290]" "cubeStamp291.spawnedBy";
connectAttr "manifestHub5.spat[290]" "cubeStamp291.t";
connectAttr "manifestHub5.spar[290]" "cubeStamp291.r";
connectAttr "manifestHub5.spa[291]" "cubeStamp292.spawnedBy";
connectAttr "manifestHub5.spat[291]" "cubeStamp292.t";
connectAttr "manifestHub5.spar[291]" "cubeStamp292.r";
connectAttr "manifestHub5.spa[292]" "cubeStamp293.spawnedBy";
connectAttr "manifestHub5.spat[292]" "cubeStamp293.t";
connectAttr "manifestHub5.spar[292]" "cubeStamp293.r";
connectAttr "manifestHub5.spa[293]" "cubeStamp294.spawnedBy";
connectAttr "manifestHub5.spat[293]" "cubeStamp294.t";
connectAttr "manifestHub5.spar[293]" "cubeStamp294.r";
connectAttr "manifestHub5.spa[294]" "cubeStamp295.spawnedBy";
connectAttr "manifestHub5.spat[294]" "cubeStamp295.t";
connectAttr "manifestHub5.spar[294]" "cubeStamp295.r";
connectAttr "manifestHub5.spa[295]" "cubeStamp296.spawnedBy";
connectAttr "manifestHub5.spat[295]" "cubeStamp296.t";
connectAttr "manifestHub5.spar[295]" "cubeStamp296.r";
connectAttr "manifestHub5.spa[296]" "cubeStamp297.spawnedBy";
connectAttr "manifestHub5.spat[296]" "cubeStamp297.t";
connectAttr "manifestHub5.spar[296]" "cubeStamp297.r";
connectAttr "manifestHub5.spa[297]" "cubeStamp298.spawnedBy";
connectAttr "manifestHub5.spat[297]" "cubeStamp298.t";
connectAttr "manifestHub5.spar[297]" "cubeStamp298.r";
connectAttr "manifestHub5.spa[298]" "cubeStamp299.spawnedBy";
connectAttr "manifestHub5.spat[298]" "cubeStamp299.t";
connectAttr "manifestHub5.spar[298]" "cubeStamp299.r";
connectAttr "manifestHub5.spa[299]" "cubeStamp300.spawnedBy";
connectAttr "manifestHub5.spat[299]" "cubeStamp300.t";
connectAttr "manifestHub5.spar[299]" "cubeStamp300.r";
connectAttr "manifestHub5.spa[300]" "cubeStamp301.spawnedBy";
connectAttr "manifestHub5.spat[300]" "cubeStamp301.t";
connectAttr "manifestHub5.spar[300]" "cubeStamp301.r";
connectAttr "manifestHub5.spa[301]" "cubeStamp302.spawnedBy";
connectAttr "manifestHub5.spat[301]" "cubeStamp302.t";
connectAttr "manifestHub5.spar[301]" "cubeStamp302.r";
connectAttr "manifestHub5.spa[302]" "cubeStamp303.spawnedBy";
connectAttr "manifestHub5.spat[302]" "cubeStamp303.t";
connectAttr "manifestHub5.spar[302]" "cubeStamp303.r";
connectAttr "manifestHub5.spa[303]" "cubeStamp304.spawnedBy";
connectAttr "manifestHub5.spat[303]" "cubeStamp304.t";
connectAttr "manifestHub5.spar[303]" "cubeStamp304.r";
connectAttr "manifestHub5.spa[304]" "cubeStamp305.spawnedBy";
connectAttr "manifestHub5.spat[304]" "cubeStamp305.t";
connectAttr "manifestHub5.spar[304]" "cubeStamp305.r";
connectAttr "manifestHub5.spa[305]" "cubeStamp306.spawnedBy";
connectAttr "manifestHub5.spat[305]" "cubeStamp306.t";
connectAttr "manifestHub5.spar[305]" "cubeStamp306.r";
connectAttr "manifestHub5.spa[306]" "cubeStamp307.spawnedBy";
connectAttr "manifestHub5.spat[306]" "cubeStamp307.t";
connectAttr "manifestHub5.spar[306]" "cubeStamp307.r";
connectAttr "manifestHub5.spa[307]" "cubeStamp308.spawnedBy";
connectAttr "manifestHub5.spat[307]" "cubeStamp308.t";
connectAttr "manifestHub5.spar[307]" "cubeStamp308.r";
connectAttr "manifestHub5.spa[308]" "cubeStamp309.spawnedBy";
connectAttr "manifestHub5.spat[308]" "cubeStamp309.t";
connectAttr "manifestHub5.spar[308]" "cubeStamp309.r";
connectAttr "manifestHub5.spa[309]" "cubeStamp310.spawnedBy";
connectAttr "manifestHub5.spat[309]" "cubeStamp310.t";
connectAttr "manifestHub5.spar[309]" "cubeStamp310.r";
connectAttr "manifestHub5.spa[310]" "cubeStamp311.spawnedBy";
connectAttr "manifestHub5.spat[310]" "cubeStamp311.t";
connectAttr "manifestHub5.spar[310]" "cubeStamp311.r";
connectAttr "manifestHub5.spa[311]" "cubeStamp312.spawnedBy";
connectAttr "manifestHub5.spat[311]" "cubeStamp312.t";
connectAttr "manifestHub5.spar[311]" "cubeStamp312.r";
connectAttr "manifestHub5.spa[312]" "cubeStamp313.spawnedBy";
connectAttr "manifestHub5.spat[312]" "cubeStamp313.t";
connectAttr "manifestHub5.spar[312]" "cubeStamp313.r";
connectAttr "manifestHub5.spa[313]" "cubeStamp314.spawnedBy";
connectAttr "manifestHub5.spat[313]" "cubeStamp314.t";
connectAttr "manifestHub5.spar[313]" "cubeStamp314.r";
connectAttr "manifestHub5.spa[314]" "cubeStamp315.spawnedBy";
connectAttr "manifestHub5.spat[314]" "cubeStamp315.t";
connectAttr "manifestHub5.spar[314]" "cubeStamp315.r";
connectAttr "manifestHub5.spa[315]" "cubeStamp316.spawnedBy";
connectAttr "manifestHub5.spat[315]" "cubeStamp316.t";
connectAttr "manifestHub5.spar[315]" "cubeStamp316.r";
connectAttr "manifestHub5.spa[316]" "cubeStamp317.spawnedBy";
connectAttr "manifestHub5.spat[316]" "cubeStamp317.t";
connectAttr "manifestHub5.spar[316]" "cubeStamp317.r";
connectAttr "manifestHub5.spa[317]" "cubeStamp318.spawnedBy";
connectAttr "manifestHub5.spat[317]" "cubeStamp318.t";
connectAttr "manifestHub5.spar[317]" "cubeStamp318.r";
connectAttr "manifestHub5.spa[318]" "cubeStamp319.spawnedBy";
connectAttr "manifestHub5.spat[318]" "cubeStamp319.t";
connectAttr "manifestHub5.spar[318]" "cubeStamp319.r";
connectAttr "manifestHub5.spa[319]" "cubeStamp320.spawnedBy";
connectAttr "manifestHub5.spat[319]" "cubeStamp320.t";
connectAttr "manifestHub5.spar[319]" "cubeStamp320.r";
connectAttr "manifestHub5.spa[320]" "cubeStamp321.spawnedBy";
connectAttr "manifestHub5.spat[320]" "cubeStamp321.t";
connectAttr "manifestHub5.spar[320]" "cubeStamp321.r";
connectAttr "manifestHub5.spa[321]" "cubeStamp322.spawnedBy";
connectAttr "manifestHub5.spat[321]" "cubeStamp322.t";
connectAttr "manifestHub5.spar[321]" "cubeStamp322.r";
connectAttr "manifestHub5.spa[322]" "cubeStamp323.spawnedBy";
connectAttr "manifestHub5.spat[322]" "cubeStamp323.t";
connectAttr "manifestHub5.spar[322]" "cubeStamp323.r";
connectAttr "manifestHub5.spa[323]" "cubeStamp324.spawnedBy";
connectAttr "manifestHub5.spat[323]" "cubeStamp324.t";
connectAttr "manifestHub5.spar[323]" "cubeStamp324.r";
connectAttr "manifestHub5.spa[324]" "cubeStamp325.spawnedBy";
connectAttr "manifestHub5.spat[324]" "cubeStamp325.t";
connectAttr "manifestHub5.spar[324]" "cubeStamp325.r";
connectAttr "manifestHub5.spa[325]" "cubeStamp326.spawnedBy";
connectAttr "manifestHub5.spat[325]" "cubeStamp326.t";
connectAttr "manifestHub5.spar[325]" "cubeStamp326.r";
connectAttr "manifestHub5.spa[326]" "cubeStamp327.spawnedBy";
connectAttr "manifestHub5.spat[326]" "cubeStamp327.t";
connectAttr "manifestHub5.spar[326]" "cubeStamp327.r";
connectAttr "manifestHub5.spa[327]" "cubeStamp328.spawnedBy";
connectAttr "manifestHub5.spat[327]" "cubeStamp328.t";
connectAttr "manifestHub5.spar[327]" "cubeStamp328.r";
connectAttr "manifestHub5.spa[328]" "cubeStamp329.spawnedBy";
connectAttr "manifestHub5.spat[328]" "cubeStamp329.t";
connectAttr "manifestHub5.spar[328]" "cubeStamp329.r";
connectAttr "manifestHub5.spa[329]" "cubeStamp330.spawnedBy";
connectAttr "manifestHub5.spat[329]" "cubeStamp330.t";
connectAttr "manifestHub5.spar[329]" "cubeStamp330.r";
connectAttr "manifestHub5.spa[330]" "cubeStamp331.spawnedBy";
connectAttr "manifestHub5.spat[330]" "cubeStamp331.t";
connectAttr "manifestHub5.spar[330]" "cubeStamp331.r";
connectAttr "manifestHub5.spa[331]" "cubeStamp332.spawnedBy";
connectAttr "manifestHub5.spat[331]" "cubeStamp332.t";
connectAttr "manifestHub5.spar[331]" "cubeStamp332.r";
connectAttr "manifestHub5.spa[332]" "cubeStamp333.spawnedBy";
connectAttr "manifestHub5.spat[332]" "cubeStamp333.t";
connectAttr "manifestHub5.spar[332]" "cubeStamp333.r";
connectAttr "manifestHub5.spa[333]" "cubeStamp334.spawnedBy";
connectAttr "manifestHub5.spat[333]" "cubeStamp334.t";
connectAttr "manifestHub5.spar[333]" "cubeStamp334.r";
connectAttr "manifestHub5.spa[334]" "cubeStamp335.spawnedBy";
connectAttr "manifestHub5.spat[334]" "cubeStamp335.t";
connectAttr "manifestHub5.spar[334]" "cubeStamp335.r";
connectAttr "manifestHub5.spa[335]" "cubeStamp336.spawnedBy";
connectAttr "manifestHub5.spat[335]" "cubeStamp336.t";
connectAttr "manifestHub5.spar[335]" "cubeStamp336.r";
connectAttr "manifestHub5.spa[336]" "cubeStamp337.spawnedBy";
connectAttr "manifestHub5.spat[336]" "cubeStamp337.t";
connectAttr "manifestHub5.spar[336]" "cubeStamp337.r";
connectAttr "manifestHub5.spa[337]" "cubeStamp338.spawnedBy";
connectAttr "manifestHub5.spat[337]" "cubeStamp338.t";
connectAttr "manifestHub5.spar[337]" "cubeStamp338.r";
connectAttr "manifestHub5.spa[338]" "cubeStamp339.spawnedBy";
connectAttr "manifestHub5.spat[338]" "cubeStamp339.t";
connectAttr "manifestHub5.spar[338]" "cubeStamp339.r";
connectAttr "manifestHub5.spa[339]" "cubeStamp340.spawnedBy";
connectAttr "manifestHub5.spat[339]" "cubeStamp340.t";
connectAttr "manifestHub5.spar[339]" "cubeStamp340.r";
connectAttr "manifestHub5.spa[340]" "cubeStamp341.spawnedBy";
connectAttr "manifestHub5.spat[340]" "cubeStamp341.t";
connectAttr "manifestHub5.spar[340]" "cubeStamp341.r";
connectAttr "manifestHub5.spa[341]" "cubeStamp342.spawnedBy";
connectAttr "manifestHub5.spat[341]" "cubeStamp342.t";
connectAttr "manifestHub5.spar[341]" "cubeStamp342.r";
connectAttr "manifestHub5.spa[342]" "cubeStamp343.spawnedBy";
connectAttr "manifestHub5.spat[342]" "cubeStamp343.t";
connectAttr "manifestHub5.spar[342]" "cubeStamp343.r";
connectAttr "manifestHub5.spa[343]" "cubeStamp344.spawnedBy";
connectAttr "manifestHub5.spat[343]" "cubeStamp344.t";
connectAttr "manifestHub5.spar[343]" "cubeStamp344.r";
connectAttr "manifestHub5.spa[344]" "cubeStamp345.spawnedBy";
connectAttr "manifestHub5.spat[344]" "cubeStamp345.t";
connectAttr "manifestHub5.spar[344]" "cubeStamp345.r";
connectAttr "manifestHub5.spa[345]" "cubeStamp346.spawnedBy";
connectAttr "manifestHub5.spat[345]" "cubeStamp346.t";
connectAttr "manifestHub5.spar[345]" "cubeStamp346.r";
connectAttr "manifestHub5.spa[346]" "cubeStamp347.spawnedBy";
connectAttr "manifestHub5.spat[346]" "cubeStamp347.t";
connectAttr "manifestHub5.spar[346]" "cubeStamp347.r";
connectAttr "manifestHub5.spa[347]" "cubeStamp348.spawnedBy";
connectAttr "manifestHub5.spat[347]" "cubeStamp348.t";
connectAttr "manifestHub5.spar[347]" "cubeStamp348.r";
connectAttr "manifestHub5.spa[348]" "cubeStamp349.spawnedBy";
connectAttr "manifestHub5.spat[348]" "cubeStamp349.t";
connectAttr "manifestHub5.spar[348]" "cubeStamp349.r";
connectAttr "manifestHub5.spa[349]" "cubeStamp350.spawnedBy";
connectAttr "manifestHub5.spat[349]" "cubeStamp350.t";
connectAttr "manifestHub5.spar[349]" "cubeStamp350.r";
connectAttr "manifestHub5.spa[350]" "cubeStamp351.spawnedBy";
connectAttr "manifestHub5.spat[350]" "cubeStamp351.t";
connectAttr "manifestHub5.spar[350]" "cubeStamp351.r";
connectAttr "manifestHub5.spa[351]" "cubeStamp352.spawnedBy";
connectAttr "manifestHub5.spat[351]" "cubeStamp352.t";
connectAttr "manifestHub5.spar[351]" "cubeStamp352.r";
connectAttr "manifestHub5.spa[352]" "cubeStamp353.spawnedBy";
connectAttr "manifestHub5.spat[352]" "cubeStamp353.t";
connectAttr "manifestHub5.spar[352]" "cubeStamp353.r";
connectAttr "manifestHub5.spa[353]" "cubeStamp354.spawnedBy";
connectAttr "manifestHub5.spat[353]" "cubeStamp354.t";
connectAttr "manifestHub5.spar[353]" "cubeStamp354.r";
connectAttr "manifestHub5.spa[354]" "cubeStamp355.spawnedBy";
connectAttr "manifestHub5.spat[354]" "cubeStamp355.t";
connectAttr "manifestHub5.spar[354]" "cubeStamp355.r";
connectAttr "manifestHub5.spa[355]" "cubeStamp356.spawnedBy";
connectAttr "manifestHub5.spat[355]" "cubeStamp356.t";
connectAttr "manifestHub5.spar[355]" "cubeStamp356.r";
connectAttr "manifestHub5.spa[356]" "cubeStamp357.spawnedBy";
connectAttr "manifestHub5.spat[356]" "cubeStamp357.t";
connectAttr "manifestHub5.spar[356]" "cubeStamp357.r";
connectAttr "manifestHub5.spa[357]" "cubeStamp358.spawnedBy";
connectAttr "manifestHub5.spat[357]" "cubeStamp358.t";
connectAttr "manifestHub5.spar[357]" "cubeStamp358.r";
connectAttr "manifestHub5.spa[358]" "cubeStamp359.spawnedBy";
connectAttr "manifestHub5.spat[358]" "cubeStamp359.t";
connectAttr "manifestHub5.spar[358]" "cubeStamp359.r";
connectAttr "manifestHub5.spa[359]" "cubeStamp360.spawnedBy";
connectAttr "manifestHub5.spat[359]" "cubeStamp360.t";
connectAttr "manifestHub5.spar[359]" "cubeStamp360.r";
connectAttr "manifestHub5.spa[360]" "cubeStamp361.spawnedBy";
connectAttr "manifestHub5.spat[360]" "cubeStamp361.t";
connectAttr "manifestHub5.spar[360]" "cubeStamp361.r";
connectAttr "manifestHub5.spa[361]" "cubeStamp362.spawnedBy";
connectAttr "manifestHub5.spat[361]" "cubeStamp362.t";
connectAttr "manifestHub5.spar[361]" "cubeStamp362.r";
connectAttr "manifestHub5.spa[362]" "cubeStamp363.spawnedBy";
connectAttr "manifestHub5.spat[362]" "cubeStamp363.t";
connectAttr "manifestHub5.spar[362]" "cubeStamp363.r";
connectAttr "manifestHub5.spa[363]" "cubeStamp364.spawnedBy";
connectAttr "manifestHub5.spat[363]" "cubeStamp364.t";
connectAttr "manifestHub5.spar[363]" "cubeStamp364.r";
connectAttr "manifestHub5.spa[364]" "cubeStamp365.spawnedBy";
connectAttr "manifestHub5.spat[364]" "cubeStamp365.t";
connectAttr "manifestHub5.spar[364]" "cubeStamp365.r";
connectAttr "manifestHub5.spa[365]" "cubeStamp366.spawnedBy";
connectAttr "manifestHub5.spat[365]" "cubeStamp366.t";
connectAttr "manifestHub5.spar[365]" "cubeStamp366.r";
connectAttr "manifestHub5.spa[366]" "cubeStamp367.spawnedBy";
connectAttr "manifestHub5.spat[366]" "cubeStamp367.t";
connectAttr "manifestHub5.spar[366]" "cubeStamp367.r";
connectAttr "manifestHub5.spa[367]" "cubeStamp368.spawnedBy";
connectAttr "manifestHub5.spat[367]" "cubeStamp368.t";
connectAttr "manifestHub5.spar[367]" "cubeStamp368.r";
connectAttr "manifestHub5.spa[368]" "cubeStamp369.spawnedBy";
connectAttr "manifestHub5.spat[368]" "cubeStamp369.t";
connectAttr "manifestHub5.spar[368]" "cubeStamp369.r";
connectAttr "manifestHub5.spa[369]" "cubeStamp370.spawnedBy";
connectAttr "manifestHub5.spat[369]" "cubeStamp370.t";
connectAttr "manifestHub5.spar[369]" "cubeStamp370.r";
connectAttr "manifestHub5.spa[370]" "cubeStamp371.spawnedBy";
connectAttr "manifestHub5.spat[370]" "cubeStamp371.t";
connectAttr "manifestHub5.spar[370]" "cubeStamp371.r";
connectAttr "manifestHub5.spa[371]" "cubeStamp372.spawnedBy";
connectAttr "manifestHub5.spat[371]" "cubeStamp372.t";
connectAttr "manifestHub5.spar[371]" "cubeStamp372.r";
connectAttr "manifestHub5.spa[372]" "cubeStamp373.spawnedBy";
connectAttr "manifestHub5.spat[372]" "cubeStamp373.t";
connectAttr "manifestHub5.spar[372]" "cubeStamp373.r";
connectAttr "manifestHub5.spa[373]" "cubeStamp374.spawnedBy";
connectAttr "manifestHub5.spat[373]" "cubeStamp374.t";
connectAttr "manifestHub5.spar[373]" "cubeStamp374.r";
connectAttr "manifestHub5.spa[374]" "cubeStamp375.spawnedBy";
connectAttr "manifestHub5.spat[374]" "cubeStamp375.t";
connectAttr "manifestHub5.spar[374]" "cubeStamp375.r";
connectAttr "manifestHub5.spa[375]" "cubeStamp376.spawnedBy";
connectAttr "manifestHub5.spat[375]" "cubeStamp376.t";
connectAttr "manifestHub5.spar[375]" "cubeStamp376.r";
connectAttr "manifestHub5.spa[376]" "cubeStamp377.spawnedBy";
connectAttr "manifestHub5.spat[376]" "cubeStamp377.t";
connectAttr "manifestHub5.spar[376]" "cubeStamp377.r";
connectAttr "manifestHub5.spa[377]" "cubeStamp378.spawnedBy";
connectAttr "manifestHub5.spat[377]" "cubeStamp378.t";
connectAttr "manifestHub5.spar[377]" "cubeStamp378.r";
connectAttr "manifestHub5.spa[378]" "cubeStamp379.spawnedBy";
connectAttr "manifestHub5.spat[378]" "cubeStamp379.t";
connectAttr "manifestHub5.spar[378]" "cubeStamp379.r";
connectAttr "manifestHub5.spa[379]" "cubeStamp380.spawnedBy";
connectAttr "manifestHub5.spat[379]" "cubeStamp380.t";
connectAttr "manifestHub5.spar[379]" "cubeStamp380.r";
connectAttr "manifestHub5.spa[380]" "cubeStamp381.spawnedBy";
connectAttr "manifestHub5.spat[380]" "cubeStamp381.t";
connectAttr "manifestHub5.spar[380]" "cubeStamp381.r";
connectAttr "manifestHub5.spa[381]" "cubeStamp382.spawnedBy";
connectAttr "manifestHub5.spat[381]" "cubeStamp382.t";
connectAttr "manifestHub5.spar[381]" "cubeStamp382.r";
connectAttr "manifestHub5.spa[382]" "cubeStamp383.spawnedBy";
connectAttr "manifestHub5.spat[382]" "cubeStamp383.t";
connectAttr "manifestHub5.spar[382]" "cubeStamp383.r";
connectAttr "manifestHub5.spa[383]" "cubeStamp384.spawnedBy";
connectAttr "manifestHub5.spat[383]" "cubeStamp384.t";
connectAttr "manifestHub5.spar[383]" "cubeStamp384.r";
connectAttr "manifestHub5.spa[384]" "cubeStamp385.spawnedBy";
connectAttr "manifestHub5.spat[384]" "cubeStamp385.t";
connectAttr "manifestHub5.spar[384]" "cubeStamp385.r";
connectAttr "manifestHub5.spa[385]" "cubeStamp386.spawnedBy";
connectAttr "manifestHub5.spat[385]" "cubeStamp386.t";
connectAttr "manifestHub5.spar[385]" "cubeStamp386.r";
connectAttr "manifestHub5.spa[386]" "cubeStamp387.spawnedBy";
connectAttr "manifestHub5.spat[386]" "cubeStamp387.t";
connectAttr "manifestHub5.spar[386]" "cubeStamp387.r";
connectAttr "manifestHub5.spa[387]" "cubeStamp388.spawnedBy";
connectAttr "manifestHub5.spat[387]" "cubeStamp388.t";
connectAttr "manifestHub5.spar[387]" "cubeStamp388.r";
connectAttr "manifestHub5.spa[388]" "cubeStamp389.spawnedBy";
connectAttr "manifestHub5.spat[388]" "cubeStamp389.t";
connectAttr "manifestHub5.spar[388]" "cubeStamp389.r";
connectAttr "manifestHub5.spa[389]" "cubeStamp390.spawnedBy";
connectAttr "manifestHub5.spat[389]" "cubeStamp390.t";
connectAttr "manifestHub5.spar[389]" "cubeStamp390.r";
connectAttr "manifestHub5.spa[390]" "cubeStamp391.spawnedBy";
connectAttr "manifestHub5.spat[390]" "cubeStamp391.t";
connectAttr "manifestHub5.spar[390]" "cubeStamp391.r";
connectAttr "manifestHub5.spa[391]" "cubeStamp392.spawnedBy";
connectAttr "manifestHub5.spat[391]" "cubeStamp392.t";
connectAttr "manifestHub5.spar[391]" "cubeStamp392.r";
connectAttr "manifestHub5.spa[392]" "cubeStamp393.spawnedBy";
connectAttr "manifestHub5.spat[392]" "cubeStamp393.t";
connectAttr "manifestHub5.spar[392]" "cubeStamp393.r";
connectAttr "manifestHub5.spa[393]" "cubeStamp394.spawnedBy";
connectAttr "manifestHub5.spat[393]" "cubeStamp394.t";
connectAttr "manifestHub5.spar[393]" "cubeStamp394.r";
connectAttr "manifestHub5.spa[394]" "cubeStamp395.spawnedBy";
connectAttr "manifestHub5.spat[394]" "cubeStamp395.t";
connectAttr "manifestHub5.spar[394]" "cubeStamp395.r";
connectAttr "manifestHub5.spa[395]" "cubeStamp396.spawnedBy";
connectAttr "manifestHub5.spat[395]" "cubeStamp396.t";
connectAttr "manifestHub5.spar[395]" "cubeStamp396.r";
connectAttr "manifestHub5.spa[396]" "cubeStamp397.spawnedBy";
connectAttr "manifestHub5.spat[396]" "cubeStamp397.t";
connectAttr "manifestHub5.spar[396]" "cubeStamp397.r";
connectAttr "manifestHub5.spa[397]" "cubeStamp398.spawnedBy";
connectAttr "manifestHub5.spat[397]" "cubeStamp398.t";
connectAttr "manifestHub5.spar[397]" "cubeStamp398.r";
connectAttr "manifestHub5.spa[398]" "cubeStamp399.spawnedBy";
connectAttr "manifestHub5.spat[398]" "cubeStamp399.t";
connectAttr "manifestHub5.spar[398]" "cubeStamp399.r";
connectAttr "manifestHub5.spa[399]" "cubeStamp400.spawnedBy";
connectAttr "manifestHub5.spat[399]" "cubeStamp400.t";
connectAttr "manifestHub5.spar[399]" "cubeStamp400.r";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "hyperLayout2.msg" "hyperView1.hl";
connectAttr ":initialShadingGroup.msg" "hyperLayout2.hyp[0].dn";
connectAttr "hyperLayout4.msg" "hyperView3.hl";
connectAttr ":time1.msg" "hyperLayout4.hyp[2].dn";
connectAttr ":initialShadingGroup.msg" "hyperLayout4.hyp[6].dn";
connectAttr "spawnCurveShape.ws" "cyclone1.cur";
connectAttr "unitConversion2.o" "cyclone1.sp";
connectAttr "cyclone1_start.o" "cyclone1.st";
connectAttr "expression1.out[0]" "unitConversion2.i";
connectAttr ":time1.o" "expression1.tim";
connectAttr "unitConversion1.o" "expression1.in[0]";
connectAttr "spinHandle.rx" "unitConversion1.i";
connectAttr "spinHandleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|cubeStamp|cubeStampShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|manifestHub5|cubeStamp1|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp2|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp3|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp4|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp5|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp6|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp7|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp8|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp9|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp10|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp11|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp12|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp13|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp14|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp15|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp16|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp17|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp18|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp19|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp20|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp21|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp22|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp23|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp24|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp25|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp26|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp27|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp28|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp29|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp30|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp31|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp32|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp33|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp34|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp35|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp36|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp37|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp38|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp39|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp40|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp41|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp42|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp43|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp44|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp45|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp46|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp47|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp48|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp49|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp50|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp51|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp52|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp53|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp54|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp55|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp56|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp57|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp58|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp59|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp60|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp61|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp62|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp63|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp64|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp65|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp66|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp67|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp68|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp69|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp70|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp71|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp72|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp73|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp74|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp75|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp76|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp77|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp78|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp79|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp80|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp81|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp82|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp83|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp84|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp85|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp86|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp87|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp88|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp89|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp90|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp91|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp92|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp93|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp94|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp95|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp96|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp97|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp98|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp99|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp100|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp101|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp102|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp103|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp104|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp105|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp106|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp107|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp108|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp109|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp110|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp111|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp112|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp113|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp114|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp115|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp116|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp117|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp118|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp119|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp120|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp121|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp122|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp123|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp124|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp125|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp126|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp127|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp128|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp129|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp130|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp131|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp132|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp133|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp134|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp135|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp136|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp137|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp138|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp139|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp140|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp141|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp142|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp143|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp144|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp145|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp146|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp147|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp148|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp149|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp150|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp151|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp152|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp153|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp154|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp155|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp156|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp157|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp158|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp159|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp160|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp161|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp162|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp163|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp164|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp165|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp166|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp167|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp168|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp169|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp170|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp171|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp172|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp173|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp174|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp175|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp176|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp177|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp178|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp179|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp180|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp181|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp182|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp183|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp184|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp185|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp186|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp187|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp188|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp189|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp190|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp191|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp192|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp193|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp194|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp195|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp196|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp197|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp198|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp199|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp200|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp201|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp202|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp203|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp204|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp205|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp206|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp207|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp208|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp209|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp210|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp211|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp212|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp213|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp214|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp215|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp216|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp217|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp218|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp219|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp220|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp221|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp222|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp223|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp224|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp225|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp226|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp227|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp228|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp229|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp230|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp231|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp232|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp233|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp234|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp235|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp236|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp237|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp238|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp239|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp240|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp241|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp242|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp243|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp244|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp245|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp246|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp247|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp248|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp249|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp250|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp251|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp252|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp253|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp254|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp255|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp256|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp257|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp258|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp259|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp260|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp261|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp262|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp263|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp264|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp265|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp266|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp267|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp268|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp269|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp270|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp271|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp272|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp273|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp274|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp275|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp276|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp277|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp278|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp279|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp280|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp281|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp282|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp283|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp284|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp285|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp286|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp287|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp288|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp289|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp290|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp291|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp292|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp293|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp294|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp295|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp296|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp297|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp298|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp299|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp300|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp301|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp302|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp303|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp304|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp305|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp306|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp307|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp308|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp309|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp310|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp311|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp312|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp313|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp314|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp315|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp316|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp317|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp318|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp319|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp320|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp321|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp322|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp323|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp324|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp325|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp326|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp327|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp328|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp329|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp330|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp331|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp332|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp333|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp334|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp335|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp336|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp337|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp338|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp339|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp340|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp341|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp342|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp343|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp344|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp345|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp346|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp347|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp348|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp349|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp350|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp351|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp352|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp353|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp354|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp355|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp356|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp357|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp358|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp359|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp360|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp361|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp362|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp363|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp364|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp365|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp366|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp367|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp368|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp369|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp370|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp371|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp372|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp373|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp374|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp375|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp376|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp377|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp378|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp379|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp380|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp381|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp382|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp383|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp384|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp385|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp386|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp387|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp388|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp389|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp390|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp391|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp392|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp393|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp394|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp395|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp396|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp397|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp398|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp399|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|manifestHub5|cubeStamp400|cubeStampShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "hyperView1.msg" ":hyperGraphInfo.b[0]";
connectAttr "hyperView3.msg" ":hyperGraphInfo.b[2]";
// End of manifestCurveSimple.ma
