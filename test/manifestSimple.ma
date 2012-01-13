//Maya ASCII 2012 scene
//Name: manifestSimple.ma
//Last modified: Fri, Jan 13, 2012 06:51:45 PM
//Codeset: UTF-8
requires maya "2012";
requires "manifest.py" "Unknown";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "201103110020-796618";
fileInfo "osv" "Mac OS X 10.6.8";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.272322776778259 8.1885856265560886 9.0070524103709761 ;
	setAttr ".r" -type "double3" -23.138352729611089 66.200000000002959 7.8815307976889791e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 20.527897061780823;
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
createNode transform -n "cube";
createNode mesh -n "cubeShape" -p "cube";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "spawnCurve";
createNode nurbsCurve -n "spawnCurveShape" -p "spawnCurve";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 5 0 no 3
		10 0 0 0 1 2 3 4 5 5 5
		8
		-3.8387104259957248 0 7.0380814506331966
		-0.76677322643453749 0 5.3639702785170229
		-1.8636130867312097 0 2.4236456307048009
		-4.4983081583076654 0 0.44712796182277081
		-6.671798248682375 0 -2.1672912843331797
		-6.4081539432300936 0 -4.0318397021311103
		-3.8115646918218147 0 -5.3409198197149568
		0.060222872843823438 0 -5.5853504246242984
		;
createNode pointEmitter -n "spawnEmitter1" -p "spawnCurve";
	setAttr ".emt" 3;
	setAttr ".rat" 23.026316003922961;
	setAttr ".sro" no;
	setAttr -l on ".urpp";
	setAttr ".d" -type "double3" 0 -1 0 ;
	setAttr ".spd" 2;
	setAttr ".nspd" 0;
createNode transform -n "nParticle1";
createNode nParticle -n "nParticleShape1" -p "nParticle1";
	addAttr -ci true -sn "lifespanPP" -ln "lifespanPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "lifespanPP0" -ln "lifespanPP0" -dt "doubleArray";
	addAttr -ci true -sn "lifespan" -ln "lifespan" -at "double";
	addAttr -ci true -sn "rgbPP" -ln "rgbPP" -dt "vectorArray";
	addAttr -ci true -h true -sn "rgbPP0" -ln "rgbPP0" -dt "vectorArray";
	addAttr -ci true -sn "opacityPP" -ln "opacityPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "opacityPP0" -ln "opacityPP0" -dt "doubleArray";
	addAttr -ci true -sn "radiusPP" -ln "radiusPP" -dt "doubleArray";
	addAttr -ci true -h true -sn "radiusPP0" -ln "radiusPP0" -dt "doubleArray";
	addAttr -is true -ci true -sn "betterIllumination" -ln "betterIllumination" -min 
		0 -max 1 -at "bool";
	addAttr -is true -ci true -sn "surfaceShading" -ln "surfaceShading" -min 0 -max 
		1 -at "float";
	addAttr -is true -ci true -sn "flatShaded" -ln "flatShaded" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 59 -1.9357966184616089 0.15262821316719055
		 -5.3974089622497559 -5.8093886375427246 0.18733963370323181 -1.2414077520370483 -3.4736626148223877
		 0.23077599704265594 6.8300657272338867 -6.4297218322753906 0.25158640742301941 -2.6147470474243164 -1.3339983224868774
		 0.35067617893218994 -5.46905517578125 -3.1027233600616455 0.44171696901321411 -5.2047128677368164 -5.9131121635437012
		 0.44510030746459961 -3.9419136047363281 -2.1963083744049072 0.54013776779174805 -5.3612551689147949 -2.3668854236602783
		 0.60210049152374268 2.3670697212219238 -4.3216671943664551 0.64902180433273315 0.43520539999008179 -6.3567533493041992
		 0.6639971137046814 -3.2819538116455078 -1.9469728469848633 0.7700541615486145 2.9542005062103271 -3.0561790466308594
		 0.83017832040786743 1.6053571701049805 -3.3468389511108398 0.84827113151550293 1.3258925676345825 -1.7089800834655762
		 0.98130613565444946 3.378894567489624 -2.9196507930755615 1.0292614698410034 1.7430589199066162 -4.0004172325134277
		 1.1148594617843628 0.73054671287536621 -2.0510396957397461 1.2113585472106934 2.7959179878234863 -3.3549597263336182
		 1.2378304004669189 1.3182927370071411 -6.1146354675292969 1.3496973514556885 -1.7325069904327393 -0.86596095561981201
		 1.4351590871810913 -5.5149788856506348 -1.2804375886917114 1.4336018562316895 -5.4747161865234375 -2.1488745212554932
		 1.5492976903915405 2.6555876731872559 -6.4200644493103027 1.684017539024353 -2.5492908954620361 -2.8144292831420898
		 1.7698466777801514 -5.2603821754455566 -3.2425127029418945 1.8703171014785767 6.6875829696655273 -5.764338493347168
		 1.8940060138702393 -1.1771810054779053 -4.6288008689880371 2.0036141872406006 0.13867449760437012 -6.3392481803894043
		 2.0802803039550781 -2.234173059463501 -5.7743167877197266 2.2617943286895752 -4.0743932723999023 -5.877382755279541
		 2.2891457080841064 -1.3415131568908691 -1.7406331300735474 2.4206645488739014 5.2736597061157227 -1.8591874837875366
		 2.4975259304046631 3.0977065563201904 -4.3329205513000488 2.6297271251678467 0.42463982105255127 -3.0437164306640625
		 2.7601563930511475 1.6177294254302979 -2.0790464878082275 2.8496906757354736 5.7360620498657227 -5.6092047691345215
		 2.9199745655059814 -4.2132425308227539 -4.1989212036132812 3.1061487197875977 -4.9216146469116211 -6.4343976974487305
		 3.1499593257904053 -2.655604362487793 -2.9719142913818359 3.3378293514251709 -5.2307376861572266 -1.8405104875564575
		 3.4119465351104736 3.1298065185546875 -2.5604195594787598 3.5693826675415039 6.1958966255187988 -1.4918396472930908
		 3.6969246864318848 4.5851683616638184 -3.0290288925170898 3.8776297569274902 6.546757698059082 -0.73323506116867065
		 3.988494873046875 -5.5266299247741699 -4.8030767440795898 4.1191010475158691 -0.038058307021856308 -3.342045783996582
		 4.237612247467041 -5.1535072326660156 -2.48763108253479 4.4662141799926758 2.2193377017974854 -3.6062905788421631
		 4.6002292633056641 -5.0909080505371094 -0.80349123477935791 4.7954206466674805 -5.520531177520752 -3.7611799240112305
		 4.8839631080627441 -5.0508589744567871 -2.1266286373138428 5.0412073135375977 5.788609504699707 -2.0343673229217529
		 5.2205519676208496 2.8206062316894531 -0.37675225734710693 5.3836512565612793 -5.5552272796630859 -3.4446325302124023
		 5.626859188079834 6.8127017021179199 -4.4828886985778809 5.7441987991333008 -4.8221549987792969 -1.4738473892211914
		 5.9099836349487305 4.2558026313781738 -6.0729360580444336 6.1498556137084961 -1.6576318740844727 -5.3961887359619141
		 6.3394341468811035 -0.69868320226669312 ;
	setAttr ".vel0" -type "vectorArray" 59 0 -0.49378937482833862 0 0 -0.50375592708587646
		 0 0 -0.51908433437347412 0 0 -0.52956134080886841 0 0 -0.54567474126815796 0 0 -0.55668854713439941
		 0 0 -0.56792467832565308 0 0 -0.5852057933807373 0 0 -0.59701734781265259 0 0 -0.61518311500549316
		 0 0 -0.62759989500045776 0 0 -0.64026725292205811 0 0 -0.65974903106689453 0 0 -0.673065185546875
		 0 0 -0.69354510307312012 0 0 -0.70754349231719971 0 0 -0.72182440757751465 0 0 -0.74378824234008789
		 0 0 -0.75880062580108643 0 0 -0.78188931941986084 0 0 -0.79767054319381714 0 0 -0.813770592212677
		 0 0 -0.83853185176849365 0 0 -0.85545659065246582 0 0 -0.88148653507232666 0 0 -0.89927834272384644
		 0 0 -0.91742920875549316 0 0 -0.94534456729888916 0 0 -0.96442520618438721 0 0 -0.99377071857452393
		 0 0 -1.0138287544250488 0 0 -1.0342915058135986 0 0 -1.0657628774642944 0 0 -1.0872740745544434
		 0 0 -1.1203575134277344 0 0 -1.1429703235626221 0 0 -1.1660397052764893 0 0 -1.2015198469161987
		 0 0 -1.2257709503173828 0 0 -1.2630680799484253 0 0 -1.2885618209838867 0 0 -1.3145695924758911
		 0 0 -1.3545694351196289 0 0 -1.3819096088409424 0 0 -1.4239581823348999 0 0 -1.4526991844177246
		 0 0 -1.4820196628570557 0 0 -1.5271141529083252 0 0 -1.5579366683959961 0 0 -1.6053410768508911
		 0 0 -1.6377427577972412 0 0 -1.6707985401153564 0 0 -1.7216373682022095 0 0 -1.7563866376876831
		 0 0 -1.8098298311233521 0 0 -1.8463590145111084 0 0 -1.8836257457733154 0 0 -1.9409412145614624
		 0 0 -1.9801168441772461 0 ;
	setAttr ".acc0" -type "vectorArray" 59 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".mas0" -type "doubleArray" 59 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".id0" -type "doubleArray" 59 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43
		 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 ;
	setAttr ".nid" 59;
	setAttr ".nid0" 59;
	setAttr ".bt0" -type "doubleArray" 59 -5.7649802730776036 -5.6850382595522904
		 -5.5702280968139677 -5.4982989957531432 -5.3572969266539472 -5.2513699912366061 -5.1897348882487133
		 -5.053188902410894 -4.9634617507391887 -4.8528167369570969 -4.7878428910888973 -4.677850384184647
		 -4.5633430022143955 -4.4986830158707756 -4.3497980015916777 -4.2716265267206532 -4.1752223951838481
		 -4.0476934922498478 -3.9823752533806669 -3.8495047048069964 -3.7562919377267416 -3.7072520363513308
		 -3.5759486311047186 -3.4604868752060427 -3.346757296295265 -3.2502252740536495 -3.192831520019479
		 -3.0711376836526512 -2.9891906015774294 -2.8345210618650496 -2.7792655685912835 -2.6727701129875272
		 -2.5748521070388235 -2.4701968421377947 -2.3488507802855305 -2.2678231259576362 -2.1973703587533349
		 -2.0531411015513048 -1.9983851064307987 -1.8570908994447315 -1.7897678658620215 -1.681856507489889
		 -1.5763510177791478 -1.4595788067789126 -1.3666770083951674 -1.2778690651698881 -1.1963161547788879
		 -1.0508872813565953 -0.96470908325503668 -0.84079382326687835 -0.78063852897191488
		 -0.68749442134482042 -0.57865130321936675 -0.48610425735608054 -0.3507505369902395
		 -0.28478833848293839 -0.19613889455478173 -0.070512812041648054 0.026059745644542609 ;
	setAttr ".ag0" -type "doubleArray" 59 11.723313606410937 11.643371592885623 11.528561430147301
		 11.456632329086476 11.31563025998728 11.20970332456994 11.148068221582047 11.011522235744227
		 10.921795084072521 10.811150070290431 10.74617622442223 10.63618371751798 10.521676335547728
		 10.457016349204109 10.308131334925012 10.229959860053986 10.13355572851718 10.006026825583181
		 9.940708586713999 9.8078380381403285 9.7146252710600756 9.6655853696846634 9.5342819644380512
		 9.4188202085393762 9.305090629628598 9.2085586073869834 9.151164853352812 9.0294710169859833
		 8.9475239349107625 8.7928543951983826 8.737598901924617 8.6311034463208607 8.5331854403721561
		 8.4285301754711277 8.3071841136188631 8.2261564592909693 8.1557036920866679 8.0114744348846383
		 7.9567184397641313 7.8154242327780645 7.7481011991953546 7.6401898408232221 7.5346843511124808
		 7.4179121401122456 7.3250103417285004 7.2362023985032211 7.1546494881122209 7.0092206146899283
		 6.9230424165883697 6.7991271566002114 6.7389718623052479 6.6458277546781535 6.5369846365526998
		 6.4444375906894136 6.3090838703235725 6.2431216718162714 6.1544722278881148 6.0288461453749811
		 5.9322735876887904 ;
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" "";
	setAttr ".fiw" no;
	setAttr ".chw" 300;
	setAttr ".prt" 8;
	setAttr ".cofl" 1;
	setAttr ".cold" no;
	setAttr ".scld" no;
	setAttr -s 2 ".fsc[0:1]"  0 1 1 1 0 1;
	setAttr -s 2 ".pfdo[0:1]"  0 1 1 1 0 1;
	setAttr ".vssc[0]"  0 1 1;
	setAttr ".stns[0]"  0 1 1;
	setAttr ".rdc[0]"  0 1 1;
	setAttr ".rci" 1;
	setAttr ".mssc[0]"  0 1 1;
	setAttr ".pfsc[0]"  0 1 1;
	setAttr ".frsc[0]"  0 1 1;
	setAttr ".stsc[0]"  0 1 1;
	setAttr ".clsc[0]"  0 1 1;
	setAttr ".bosc[0]"  0 1 1;
	setAttr ".opc[0]"  0 1 1;
	setAttr ".oci" 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].clp" 0;
	setAttr ".cl[0].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 0 0.5 1 ;
	setAttr ".cl[1].cli" 1;
	setAttr ".coi" 1;
	setAttr ".inca[0].incap" 0;
	setAttr ".inca[0].incac" -type "float3" 0 0 0 ;
	setAttr ".inca[0].incai" 1;
	setAttr ".lifespanPP0" -type "doubleArray" 59 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38 3.4028234663852886e+38
		 3.4028234663852886e+38 ;
	setAttr -k on ".lifespan" 1;
	setAttr ".rgbPP0" -type "vectorArray" 59 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5
		 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0
		 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5
		 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0
		 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5
		 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0 0.5 1 0
		 0.5 1 0 0.5 1 ;
	setAttr ".opacityPP0" -type "doubleArray" 59 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 ;
	setAttr ".radiusPP0" -type "doubleArray" 59 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224 0.20000000298023224
		 0.20000000298023224 0.20000000298023224 ;
	setAttr -k on ".betterIllumination";
	setAttr -k on ".surfaceShading";
	setAttr -k on ".flatShaded";
createNode nucleus -n "nucleus1";
	setAttr ".grty" 0;
createNode transform -n "cubeStampScale";
	setAttr ".s" -type "double3" 0.83917837854691302 0.83917837854691302 0.83917837854691302 ;
createNode locator -n "cubeStampScaleShape" -p "cubeStampScale";
	setAttr -k off ".v";
createNode transform -n "cube1";
createNode mesh -n "cube1Shape" -p "cube1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube2";
createNode mesh -n "cube2Shape" -p "cube2";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube3";
createNode mesh -n "cube3Shape" -p "cube3";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube4";
createNode mesh -n "cube4Shape" -p "cube4";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube5";
createNode mesh -n "cube5Shape" -p "cube5";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube6";
createNode mesh -n "cube6Shape" -p "cube6";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube7";
createNode mesh -n "cube7Shape" -p "cube7";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube8";
createNode mesh -n "cube8Shape" -p "cube8";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube9";
createNode mesh -n "cube9Shape" -p "cube9";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube10";
createNode mesh -n "cube10Shape" -p "cube10";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube11";
createNode mesh -n "cube11Shape" -p "cube11";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube12";
createNode mesh -n "cube12Shape" -p "cube12";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube13";
createNode mesh -n "cube13Shape" -p "cube13";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube14";
createNode mesh -n "cube14Shape" -p "cube14";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube15";
createNode mesh -n "cube15Shape" -p "cube15";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube16";
createNode mesh -n "cube16Shape" -p "cube16";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube17";
createNode mesh -n "cube17Shape" -p "cube17";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube18";
createNode mesh -n "cube18Shape" -p "cube18";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube19";
createNode mesh -n "cube19Shape" -p "cube19";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube20";
createNode mesh -n "cube20Shape" -p "cube20";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube21";
createNode mesh -n "cube21Shape" -p "cube21";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube22";
createNode mesh -n "cube22Shape" -p "cube22";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube23";
createNode mesh -n "cube23Shape" -p "cube23";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube24";
createNode mesh -n "cube24Shape" -p "cube24";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube25";
createNode mesh -n "cube25Shape" -p "cube25";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube26";
createNode mesh -n "cube26Shape" -p "cube26";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube27";
createNode mesh -n "cube27Shape" -p "cube27";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube28";
createNode mesh -n "cube28Shape" -p "cube28";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube29";
createNode mesh -n "cube29Shape" -p "cube29";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube30";
createNode mesh -n "cube30Shape" -p "cube30";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube31";
createNode mesh -n "cube31Shape" -p "cube31";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube32";
createNode mesh -n "cube32Shape" -p "cube32";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube33";
createNode mesh -n "cube33Shape" -p "cube33";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube34";
createNode mesh -n "cube34Shape" -p "cube34";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube35";
createNode mesh -n "cube35Shape" -p "cube35";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube36";
createNode mesh -n "cube36Shape" -p "cube36";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube37";
createNode mesh -n "cube37Shape" -p "cube37";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube38";
createNode mesh -n "cube38Shape" -p "cube38";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube39";
createNode mesh -n "cube39Shape" -p "cube39";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube40";
createNode mesh -n "cube40Shape" -p "cube40";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube41";
createNode mesh -n "cube41Shape" -p "cube41";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube42";
createNode mesh -n "cube42Shape" -p "cube42";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube43";
createNode mesh -n "cube43Shape" -p "cube43";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube44";
createNode mesh -n "cube44Shape" -p "cube44";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube45";
createNode mesh -n "cube45Shape" -p "cube45";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube46";
createNode mesh -n "cube46Shape" -p "cube46";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube47";
createNode mesh -n "cube47Shape" -p "cube47";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube48";
createNode mesh -n "cube48Shape" -p "cube48";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube49";
createNode mesh -n "cube49Shape" -p "cube49";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube50";
createNode mesh -n "cube50Shape" -p "cube50";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube51";
createNode mesh -n "cube51Shape" -p "cube51";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube52";
createNode mesh -n "cube52Shape" -p "cube52";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube53";
createNode mesh -n "cube53Shape" -p "cube53";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube54";
createNode mesh -n "cube54Shape" -p "cube54";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube55";
createNode mesh -n "cube55Shape" -p "cube55";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube56";
createNode mesh -n "cube56Shape" -p "cube56";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube57";
createNode mesh -n "cube57Shape" -p "cube57";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube58";
createNode mesh -n "cube58Shape" -p "cube58";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode transform -n "cube59";
createNode mesh -n "cube59Shape" -p "cube59";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
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
	setAttr -s 8 ".vt[0:7]"  -0.25 -0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25
		 0.25 0.25 0.25 -0.25 0.25 -0.25 0.25 0.25 -0.25 -0.25 -0.25 -0.25 0.25 -0.25 -0.25;
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
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode animCurveTL -n "curve1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "curve1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 6.3700952370850921;
createNode animCurveTL -n "curve1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "curve1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "curve1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "curve1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "curve1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "curve1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "curve1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "curve1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode geoConnector -n "geoConnector1";
createNode shadingEngine -n "nParticleCloudSE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode particleSamplerInfo -n "particleSamplerInfo1";
createNode blinn -n "npCloudBlinn";
createNode particleCloud -n "npCloudVolume";
createNode container -n "cubeStamp";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode hyperView -n "hyperView1";
	setAttr ".p" -type "double2" 91 204 ;
	setAttr ".vl" -type "double2" -348.97908441924727 -420.29033182111755 ;
	setAttr ".vh" -type "double2" 830.21294467125267 664.3502172735806 ;
	setAttr ".dag" no;
	setAttr ".d" -type "string" "cubeStamp";
createNode hyperLayout -n "hyperLayout2";
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 646;
	setAttr ".hyp[0].y" 219;
	setAttr ".hyp[2].x" 91;
	setAttr ".hyp[2].y" 204;
	setAttr ".hyp[3].x" 237;
	setAttr ".hyp[3].y" 204;
	setAttr ".hyp[4].x" 384;
	setAttr ".hyp[4].y" 204;
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
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n"
		+ "                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n"
		+ "                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput1\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput2\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput2\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput2\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput3\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput3\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput3\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 1\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 300 -ast 1 -aet 300 ";
	setAttr ".st" 6;
createNode manifestHub -n "manifestHub1";
	setAttr -s 59 ".sp";
	setAttr -s 59 ".t";
createNode hyperView -n "hyperView3";
	setAttr ".p" -type "double2" 1196 172 ;
	setAttr ".vl" -type "double2" 233.9774570446736 -363.14235967926766 ;
	setAttr ".vh" -type "double2" 1359.1374570446753 671.79862542955402 ;
	setAttr ".dag" no;
	setAttr ".d" -type "string" "main";
	setAttr -s 2 ".rnd";
createNode hyperLayout -n "hyperLayout4";
	setAttr -s 7 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[2].x" 328;
	setAttr ".hyp[2].y" 52;
	setAttr ".hyp[4].x" 518;
	setAttr ".hyp[4].y" -270;
	setAttr ".hyp[5].x" 896;
	setAttr ".hyp[5].y" 170;
	setAttr ".hyp[6].x" 896;
	setAttr ".hyp[6].y" 246;
	setAttr ".hyp[7].x" 540;
	setAttr ".hyp[7].y" 318;
	setAttr ".hyp[8].x" 540;
	setAttr ".hyp[8].y" 52;
	setAttr ".anf" yes;
createNode manifestHub -n "manifestHub2";
	setAttr ".pos" -type "vectorArray" 0 ;
createNode manifestHub -n "manifestHub3";
	setAttr ".pos" -type "vectorArray" 0 ;
createNode container -n "cubeStamp1";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout5";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp2";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout6";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp3";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout7";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp4";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout8";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp5";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout9";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp6";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout10";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp7";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout11";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp8";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout12";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp9";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout13";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp10";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout14";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp11";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout15";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp12";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout16";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp13";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout17";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp14";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout18";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp15";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout19";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp16";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout20";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp17";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout21";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp18";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout22";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp19";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout23";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp20";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout24";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp21";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout25";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp22";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout26";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp23";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout27";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp24";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout28";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp25";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout29";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp26";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout30";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp27";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout31";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp28";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout32";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp29";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout33";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp30";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout34";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp31";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout35";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp32";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout36";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp33";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout37";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp34";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout38";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp35";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout39";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp36";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout40";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp37";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout41";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp38";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout42";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp39";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout43";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp40";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout44";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp41";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout45";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp42";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout46";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp43";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout47";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp44";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout48";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp45";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout49";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp46";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout50";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp47";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout51";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp48";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout52";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp49";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout53";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp50";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout54";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp51";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout55";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp52";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout56";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp53";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout57";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp54";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout58";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp55";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout59";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp56";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout60";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp57";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout61";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp58";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout62";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
createNode container -n "cubeStamp59";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	addAttr -ci true -sn "spawnedBy" -ln "spawnedBy" -at "double";
	setAttr ".isc" yes;
	setAttr -s 12 ".boc";
	setAttr ".ctor" -type "string" "andrewharvey";
	setAttr ".cdat" -type "string" "2012/01/12 11:39:58";
	setAttr ".aal" -type "attributeAlias" {"translate","borderConnections[0]","scaleY"
		,"borderConnections[10]","scaleZ","borderConnections[11]","translateX","borderConnections[1]"
		,"translateY","borderConnections[2]","translateZ","borderConnections[3]","rotate"
		,"borderConnections[4]","rotateX","borderConnections[5]","rotateY","borderConnections[6]"
		,"rotateZ","borderConnections[7]","scale","borderConnections[8]","scaleX","borderConnections[9]"
		} ;
createNode hyperLayout -n "hyperLayout63";
	setAttr ".ihi" 0;
	setAttr -s 2 ".hyp";
	setAttr ".hyp[0].x" 253;
	setAttr ".hyp[0].y" -201;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 518;
	setAttr ".hyp[1].y" -270;
	setAttr ".hyp[1].isf" yes;
	setAttr ".anf" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr -s 60 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :hyperGraphInfo;
	setAttr -s 2 ".b";
connectAttr "cubeStampScale.s" "cube.s";
connectAttr "curve1_translateX.o" "spawnCurve.tx";
connectAttr "curve1_translateY.o" "spawnCurve.ty";
connectAttr "curve1_translateZ.o" "spawnCurve.tz";
connectAttr "curve1_visibility.o" "spawnCurve.v";
connectAttr "curve1_rotateX.o" "spawnCurve.rx";
connectAttr "curve1_rotateY.o" "spawnCurve.ry";
connectAttr "curve1_rotateZ.o" "spawnCurve.rz";
connectAttr "curve1_scaleX.o" "spawnCurve.sx";
connectAttr "curve1_scaleY.o" "spawnCurve.sy";
connectAttr "curve1_scaleZ.o" "spawnCurve.sz";
connectAttr ":time1.o" "spawnEmitter1.ct";
connectAttr "geoConnector1.ocd" "spawnEmitter1.ocd";
connectAttr "geoConnector1.ocl" "spawnEmitter1.t";
connectAttr "geoConnector1.pos" "spawnEmitter1.opd";
connectAttr "geoConnector1.vel" "spawnEmitter1.ovd";
connectAttr "geoConnector1.swg" "spawnEmitter1.swge";
connectAttr "nParticleShape1.ifl" "spawnEmitter1.full[0]";
connectAttr "nParticleShape1.tss" "spawnEmitter1.dt[0]";
connectAttr "nParticleShape1.inh" "spawnEmitter1.inh[0]";
connectAttr "nParticleShape1.stt" "spawnEmitter1.stt[0]";
connectAttr "nParticleShape1.sd[0]" "spawnEmitter1.sd[0]";
connectAttr ":time1.o" "nParticleShape1.cti";
connectAttr "nucleus1.noao[0]" "nParticleShape1.nxst";
connectAttr "nucleus1.stf" "nParticleShape1.stf";
connectAttr "spawnEmitter1.ot[0]" "nParticleShape1.npt[0]";
connectAttr "nParticleShape1.incr" "nParticleShape1.rgbPP";
connectAttr "nParticleShape1.inor" "nParticleShape1.opacityPP";
connectAttr "nParticleShape1.inrr" "nParticleShape1.radiusPP";
connectAttr ":time1.o" "nucleus1.cti";
connectAttr "nParticleShape1.cust" "nucleus1.niao[0]";
connectAttr "nParticleShape1.stst" "nucleus1.nias[0]";
connectAttr "cubeStampScale.s" "cube1.s";
connectAttr "manifestHub1.t[0]" "cube1.t";
connectAttr "cubeStampScale.s" "cube2.s";
connectAttr "manifestHub1.t[1]" "cube2.t";
connectAttr "cubeStampScale.s" "cube3.s";
connectAttr "manifestHub1.t[2]" "cube3.t";
connectAttr "cubeStampScale.s" "cube4.s";
connectAttr "manifestHub1.t[3]" "cube4.t";
connectAttr "cubeStampScale.s" "cube5.s";
connectAttr "manifestHub1.t[4]" "cube5.t";
connectAttr "cubeStampScale.s" "cube6.s";
connectAttr "manifestHub1.t[5]" "cube6.t";
connectAttr "cubeStampScale.s" "cube7.s";
connectAttr "manifestHub1.t[6]" "cube7.t";
connectAttr "cubeStampScale.s" "cube8.s";
connectAttr "manifestHub1.t[7]" "cube8.t";
connectAttr "cubeStampScale.s" "cube9.s";
connectAttr "manifestHub1.t[8]" "cube9.t";
connectAttr "cubeStampScale.s" "cube10.s";
connectAttr "manifestHub1.t[9]" "cube10.t";
connectAttr "cubeStampScale.s" "cube11.s";
connectAttr "manifestHub1.t[10]" "cube11.t";
connectAttr "cubeStampScale.s" "cube12.s";
connectAttr "manifestHub1.t[11]" "cube12.t";
connectAttr "cubeStampScale.s" "cube13.s";
connectAttr "manifestHub1.t[12]" "cube13.t";
connectAttr "cubeStampScale.s" "cube14.s";
connectAttr "manifestHub1.t[13]" "cube14.t";
connectAttr "cubeStampScale.s" "cube15.s";
connectAttr "manifestHub1.t[14]" "cube15.t";
connectAttr "cubeStampScale.s" "cube16.s";
connectAttr "manifestHub1.t[15]" "cube16.t";
connectAttr "cubeStampScale.s" "cube17.s";
connectAttr "manifestHub1.t[16]" "cube17.t";
connectAttr "cubeStampScale.s" "cube18.s";
connectAttr "manifestHub1.t[17]" "cube18.t";
connectAttr "cubeStampScale.s" "cube19.s";
connectAttr "manifestHub1.t[18]" "cube19.t";
connectAttr "cubeStampScale.s" "cube20.s";
connectAttr "manifestHub1.t[19]" "cube20.t";
connectAttr "cubeStampScale.s" "cube21.s";
connectAttr "manifestHub1.t[20]" "cube21.t";
connectAttr "cubeStampScale.s" "cube22.s";
connectAttr "manifestHub1.t[21]" "cube22.t";
connectAttr "cubeStampScale.s" "cube23.s";
connectAttr "manifestHub1.t[22]" "cube23.t";
connectAttr "cubeStampScale.s" "cube24.s";
connectAttr "manifestHub1.t[23]" "cube24.t";
connectAttr "cubeStampScale.s" "cube25.s";
connectAttr "manifestHub1.t[24]" "cube25.t";
connectAttr "cubeStampScale.s" "cube26.s";
connectAttr "manifestHub1.t[25]" "cube26.t";
connectAttr "cubeStampScale.s" "cube27.s";
connectAttr "manifestHub1.t[26]" "cube27.t";
connectAttr "cubeStampScale.s" "cube28.s";
connectAttr "manifestHub1.t[27]" "cube28.t";
connectAttr "cubeStampScale.s" "cube29.s";
connectAttr "manifestHub1.t[28]" "cube29.t";
connectAttr "cubeStampScale.s" "cube30.s";
connectAttr "manifestHub1.t[29]" "cube30.t";
connectAttr "cubeStampScale.s" "cube31.s";
connectAttr "manifestHub1.t[30]" "cube31.t";
connectAttr "cubeStampScale.s" "cube32.s";
connectAttr "manifestHub1.t[31]" "cube32.t";
connectAttr "cubeStampScale.s" "cube33.s";
connectAttr "manifestHub1.t[32]" "cube33.t";
connectAttr "cubeStampScale.s" "cube34.s";
connectAttr "manifestHub1.t[33]" "cube34.t";
connectAttr "cubeStampScale.s" "cube35.s";
connectAttr "manifestHub1.t[34]" "cube35.t";
connectAttr "cubeStampScale.s" "cube36.s";
connectAttr "manifestHub1.t[35]" "cube36.t";
connectAttr "cubeStampScale.s" "cube37.s";
connectAttr "manifestHub1.t[36]" "cube37.t";
connectAttr "cubeStampScale.s" "cube38.s";
connectAttr "manifestHub1.t[37]" "cube38.t";
connectAttr "cubeStampScale.s" "cube39.s";
connectAttr "manifestHub1.t[38]" "cube39.t";
connectAttr "cubeStampScale.s" "cube40.s";
connectAttr "manifestHub1.t[39]" "cube40.t";
connectAttr "cubeStampScale.s" "cube41.s";
connectAttr "manifestHub1.t[40]" "cube41.t";
connectAttr "cubeStampScale.s" "cube42.s";
connectAttr "manifestHub1.t[41]" "cube42.t";
connectAttr "cubeStampScale.s" "cube43.s";
connectAttr "manifestHub1.t[42]" "cube43.t";
connectAttr "cubeStampScale.s" "cube44.s";
connectAttr "manifestHub1.t[43]" "cube44.t";
connectAttr "cubeStampScale.s" "cube45.s";
connectAttr "manifestHub1.t[44]" "cube45.t";
connectAttr "cubeStampScale.s" "cube46.s";
connectAttr "manifestHub1.t[45]" "cube46.t";
connectAttr "cubeStampScale.s" "cube47.s";
connectAttr "manifestHub1.t[46]" "cube47.t";
connectAttr "cubeStampScale.s" "cube48.s";
connectAttr "manifestHub1.t[47]" "cube48.t";
connectAttr "cubeStampScale.s" "cube49.s";
connectAttr "manifestHub1.t[48]" "cube49.t";
connectAttr "cubeStampScale.s" "cube50.s";
connectAttr "manifestHub1.t[49]" "cube50.t";
connectAttr "cubeStampScale.s" "cube51.s";
connectAttr "manifestHub1.t[50]" "cube51.t";
connectAttr "cubeStampScale.s" "cube52.s";
connectAttr "manifestHub1.t[51]" "cube52.t";
connectAttr "cubeStampScale.s" "cube53.s";
connectAttr "manifestHub1.t[52]" "cube53.t";
connectAttr "cubeStampScale.s" "cube54.s";
connectAttr "manifestHub1.t[53]" "cube54.t";
connectAttr "cubeStampScale.s" "cube55.s";
connectAttr "manifestHub1.t[54]" "cube55.t";
connectAttr "cubeStampScale.s" "cube56.s";
connectAttr "manifestHub1.t[55]" "cube56.t";
connectAttr "cubeStampScale.s" "cube57.s";
connectAttr "manifestHub1.t[56]" "cube57.t";
connectAttr "cubeStampScale.s" "cube58.s";
connectAttr "manifestHub1.t[57]" "cube58.t";
connectAttr "cubeStampScale.s" "cube59.s";
connectAttr "manifestHub1.t[58]" "cube59.t";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "nParticleCloudSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "nParticleCloudSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":time1.o" "geoConnector1.ct";
connectAttr "spawnCurveShape.l" "geoConnector1.lge";
connectAttr "spawnCurveShape.wm" "geoConnector1.wm";
connectAttr "spawnCurveShape.msg" "geoConnector1.own";
connectAttr "npCloudBlinn.oc" "nParticleCloudSE.ss";
connectAttr "npCloudVolume.oi" "nParticleCloudSE.vs";
connectAttr "nParticleShape1.iog" "nParticleCloudSE.dsm" -na;
connectAttr "nParticleCloudSE.msg" "materialInfo1.sg";
connectAttr "npCloudBlinn.msg" "materialInfo1.m";
connectAttr "particleSamplerInfo1.msg" "materialInfo1.t" -na;
connectAttr "particleSamplerInfo1.oc" "npCloudBlinn.c";
connectAttr "particleSamplerInfo1.ot" "npCloudBlinn.it";
connectAttr "particleSamplerInfo1.oi" "npCloudBlinn.ic";
connectAttr "particleSamplerInfo1.ot" "npCloudVolume.t";
connectAttr "particleSamplerInfo1.oc" "npCloudVolume.c";
connectAttr "particleSamplerInfo1.oi" "npCloudVolume.i";
connectAttr "cube.t" "cubeStamp.boc[0]";
connectAttr "cube.tx" "cubeStamp.boc[1]";
connectAttr "cube.ty" "cubeStamp.boc[2]";
connectAttr "cube.tz" "cubeStamp.boc[3]";
connectAttr "cube.r" "cubeStamp.boc[4]";
connectAttr "cube.rx" "cubeStamp.boc[5]";
connectAttr "cube.ry" "cubeStamp.boc[6]";
connectAttr "cube.rz" "cubeStamp.boc[7]";
connectAttr "cube.s" "cubeStamp.boc[8]";
connectAttr "cube.sx" "cubeStamp.boc[9]";
connectAttr "cube.sy" "cubeStamp.boc[10]";
connectAttr "cube.sz" "cubeStamp.boc[11]";
connectAttr "hyperLayout1.msg" "cubeStamp.hl";
connectAttr "cube.msg" "hyperLayout1.hyp[0].dn";
connectAttr "cubeShape.msg" "hyperLayout1.hyp[1].dn";
connectAttr "cube.msg" "hyperView1.rnd[1]";
connectAttr "hyperLayout2.msg" "hyperView1.hl";
connectAttr "cube.msg" "hyperView1.fnd";
connectAttr ":initialShadingGroup.msg" "hyperLayout2.hyp[0].dn";
connectAttr "cube.msg" "hyperLayout2.hyp[2].dn";
connectAttr "cubeStamp.msg" "hyperLayout2.hyp[3].dn";
connectAttr "cubeShape.msg" "hyperLayout2.hyp[4].dn";
connectAttr "nParticleShape1.pos" "manifestHub1.pos";
connectAttr "cubeStamp.ctor" "manifestHub1.st[0]";
connectAttr "manifestHub1.msg" "hyperView3.rnd[2]";
connectAttr "cubeStamp.msg" "hyperView3.rnd[3]";
connectAttr "hyperLayout4.msg" "hyperView3.hl";
connectAttr "cube.msg" "hyperLayout4.hyp[0].dn";
connectAttr ":time1.msg" "hyperLayout4.hyp[2].dn";
connectAttr "cubeShape.msg" "hyperLayout4.hyp[4].dn";
connectAttr "manifestHub1.msg" "hyperLayout4.hyp[5].dn";
connectAttr ":initialShadingGroup.msg" "hyperLayout4.hyp[6].dn";
connectAttr "cubeStamp.msg" "hyperLayout4.hyp[7].dn";
connectAttr "nParticleShape1.msg" "hyperLayout4.hyp[8].dn";
connectAttr "cube1.t" "cubeStamp1.boc[0]";
connectAttr "cube1.tx" "cubeStamp1.boc[1]";
connectAttr "cube1.ty" "cubeStamp1.boc[2]";
connectAttr "cube1.tz" "cubeStamp1.boc[3]";
connectAttr "cube1.r" "cubeStamp1.boc[4]";
connectAttr "cube1.rx" "cubeStamp1.boc[5]";
connectAttr "cube1.ry" "cubeStamp1.boc[6]";
connectAttr "cube1.rz" "cubeStamp1.boc[7]";
connectAttr "cube1.s" "cubeStamp1.boc[8]";
connectAttr "cube1.sx" "cubeStamp1.boc[9]";
connectAttr "cube1.sy" "cubeStamp1.boc[10]";
connectAttr "cube1.sz" "cubeStamp1.boc[11]";
connectAttr "hyperLayout5.msg" "cubeStamp1.hl";
connectAttr "manifestHub1.sp[0]" "cubeStamp1.spawnedBy";
connectAttr "cube1.msg" "hyperLayout5.hyp[0].dn";
connectAttr "cube1Shape.msg" "hyperLayout5.hyp[1].dn";
connectAttr "cube2.t" "cubeStamp2.boc[0]";
connectAttr "cube2.tx" "cubeStamp2.boc[1]";
connectAttr "cube2.ty" "cubeStamp2.boc[2]";
connectAttr "cube2.tz" "cubeStamp2.boc[3]";
connectAttr "cube2.r" "cubeStamp2.boc[4]";
connectAttr "cube2.rx" "cubeStamp2.boc[5]";
connectAttr "cube2.ry" "cubeStamp2.boc[6]";
connectAttr "cube2.rz" "cubeStamp2.boc[7]";
connectAttr "cube2.s" "cubeStamp2.boc[8]";
connectAttr "cube2.sx" "cubeStamp2.boc[9]";
connectAttr "cube2.sy" "cubeStamp2.boc[10]";
connectAttr "cube2.sz" "cubeStamp2.boc[11]";
connectAttr "hyperLayout6.msg" "cubeStamp2.hl";
connectAttr "manifestHub1.sp[1]" "cubeStamp2.spawnedBy";
connectAttr "cube2.msg" "hyperLayout6.hyp[0].dn";
connectAttr "cube2Shape.msg" "hyperLayout6.hyp[1].dn";
connectAttr "cube3.t" "cubeStamp3.boc[0]";
connectAttr "cube3.tx" "cubeStamp3.boc[1]";
connectAttr "cube3.ty" "cubeStamp3.boc[2]";
connectAttr "cube3.tz" "cubeStamp3.boc[3]";
connectAttr "cube3.r" "cubeStamp3.boc[4]";
connectAttr "cube3.rx" "cubeStamp3.boc[5]";
connectAttr "cube3.ry" "cubeStamp3.boc[6]";
connectAttr "cube3.rz" "cubeStamp3.boc[7]";
connectAttr "cube3.s" "cubeStamp3.boc[8]";
connectAttr "cube3.sx" "cubeStamp3.boc[9]";
connectAttr "cube3.sy" "cubeStamp3.boc[10]";
connectAttr "cube3.sz" "cubeStamp3.boc[11]";
connectAttr "hyperLayout7.msg" "cubeStamp3.hl";
connectAttr "manifestHub1.sp[2]" "cubeStamp3.spawnedBy";
connectAttr "cube3.msg" "hyperLayout7.hyp[0].dn";
connectAttr "cube3Shape.msg" "hyperLayout7.hyp[1].dn";
connectAttr "cube4.t" "cubeStamp4.boc[0]";
connectAttr "cube4.tx" "cubeStamp4.boc[1]";
connectAttr "cube4.ty" "cubeStamp4.boc[2]";
connectAttr "cube4.tz" "cubeStamp4.boc[3]";
connectAttr "cube4.r" "cubeStamp4.boc[4]";
connectAttr "cube4.rx" "cubeStamp4.boc[5]";
connectAttr "cube4.ry" "cubeStamp4.boc[6]";
connectAttr "cube4.rz" "cubeStamp4.boc[7]";
connectAttr "cube4.s" "cubeStamp4.boc[8]";
connectAttr "cube4.sx" "cubeStamp4.boc[9]";
connectAttr "cube4.sy" "cubeStamp4.boc[10]";
connectAttr "cube4.sz" "cubeStamp4.boc[11]";
connectAttr "hyperLayout8.msg" "cubeStamp4.hl";
connectAttr "manifestHub1.sp[3]" "cubeStamp4.spawnedBy";
connectAttr "cube4.msg" "hyperLayout8.hyp[0].dn";
connectAttr "cube4Shape.msg" "hyperLayout8.hyp[1].dn";
connectAttr "cube5.t" "cubeStamp5.boc[0]";
connectAttr "cube5.tx" "cubeStamp5.boc[1]";
connectAttr "cube5.ty" "cubeStamp5.boc[2]";
connectAttr "cube5.tz" "cubeStamp5.boc[3]";
connectAttr "cube5.r" "cubeStamp5.boc[4]";
connectAttr "cube5.rx" "cubeStamp5.boc[5]";
connectAttr "cube5.ry" "cubeStamp5.boc[6]";
connectAttr "cube5.rz" "cubeStamp5.boc[7]";
connectAttr "cube5.s" "cubeStamp5.boc[8]";
connectAttr "cube5.sx" "cubeStamp5.boc[9]";
connectAttr "cube5.sy" "cubeStamp5.boc[10]";
connectAttr "cube5.sz" "cubeStamp5.boc[11]";
connectAttr "hyperLayout9.msg" "cubeStamp5.hl";
connectAttr "manifestHub1.sp[4]" "cubeStamp5.spawnedBy";
connectAttr "cube5.msg" "hyperLayout9.hyp[0].dn";
connectAttr "cube5Shape.msg" "hyperLayout9.hyp[1].dn";
connectAttr "cube6.t" "cubeStamp6.boc[0]";
connectAttr "cube6.tx" "cubeStamp6.boc[1]";
connectAttr "cube6.ty" "cubeStamp6.boc[2]";
connectAttr "cube6.tz" "cubeStamp6.boc[3]";
connectAttr "cube6.r" "cubeStamp6.boc[4]";
connectAttr "cube6.rx" "cubeStamp6.boc[5]";
connectAttr "cube6.ry" "cubeStamp6.boc[6]";
connectAttr "cube6.rz" "cubeStamp6.boc[7]";
connectAttr "cube6.s" "cubeStamp6.boc[8]";
connectAttr "cube6.sx" "cubeStamp6.boc[9]";
connectAttr "cube6.sy" "cubeStamp6.boc[10]";
connectAttr "cube6.sz" "cubeStamp6.boc[11]";
connectAttr "hyperLayout10.msg" "cubeStamp6.hl";
connectAttr "manifestHub1.sp[5]" "cubeStamp6.spawnedBy";
connectAttr "cube6.msg" "hyperLayout10.hyp[0].dn";
connectAttr "cube6Shape.msg" "hyperLayout10.hyp[1].dn";
connectAttr "cube7.t" "cubeStamp7.boc[0]";
connectAttr "cube7.tx" "cubeStamp7.boc[1]";
connectAttr "cube7.ty" "cubeStamp7.boc[2]";
connectAttr "cube7.tz" "cubeStamp7.boc[3]";
connectAttr "cube7.r" "cubeStamp7.boc[4]";
connectAttr "cube7.rx" "cubeStamp7.boc[5]";
connectAttr "cube7.ry" "cubeStamp7.boc[6]";
connectAttr "cube7.rz" "cubeStamp7.boc[7]";
connectAttr "cube7.s" "cubeStamp7.boc[8]";
connectAttr "cube7.sx" "cubeStamp7.boc[9]";
connectAttr "cube7.sy" "cubeStamp7.boc[10]";
connectAttr "cube7.sz" "cubeStamp7.boc[11]";
connectAttr "hyperLayout11.msg" "cubeStamp7.hl";
connectAttr "manifestHub1.sp[6]" "cubeStamp7.spawnedBy";
connectAttr "cube7.msg" "hyperLayout11.hyp[0].dn";
connectAttr "cube7Shape.msg" "hyperLayout11.hyp[1].dn";
connectAttr "cube8.t" "cubeStamp8.boc[0]";
connectAttr "cube8.tx" "cubeStamp8.boc[1]";
connectAttr "cube8.ty" "cubeStamp8.boc[2]";
connectAttr "cube8.tz" "cubeStamp8.boc[3]";
connectAttr "cube8.r" "cubeStamp8.boc[4]";
connectAttr "cube8.rx" "cubeStamp8.boc[5]";
connectAttr "cube8.ry" "cubeStamp8.boc[6]";
connectAttr "cube8.rz" "cubeStamp8.boc[7]";
connectAttr "cube8.s" "cubeStamp8.boc[8]";
connectAttr "cube8.sx" "cubeStamp8.boc[9]";
connectAttr "cube8.sy" "cubeStamp8.boc[10]";
connectAttr "cube8.sz" "cubeStamp8.boc[11]";
connectAttr "hyperLayout12.msg" "cubeStamp8.hl";
connectAttr "manifestHub1.sp[7]" "cubeStamp8.spawnedBy";
connectAttr "cube8.msg" "hyperLayout12.hyp[0].dn";
connectAttr "cube8Shape.msg" "hyperLayout12.hyp[1].dn";
connectAttr "cube9.t" "cubeStamp9.boc[0]";
connectAttr "cube9.tx" "cubeStamp9.boc[1]";
connectAttr "cube9.ty" "cubeStamp9.boc[2]";
connectAttr "cube9.tz" "cubeStamp9.boc[3]";
connectAttr "cube9.r" "cubeStamp9.boc[4]";
connectAttr "cube9.rx" "cubeStamp9.boc[5]";
connectAttr "cube9.ry" "cubeStamp9.boc[6]";
connectAttr "cube9.rz" "cubeStamp9.boc[7]";
connectAttr "cube9.s" "cubeStamp9.boc[8]";
connectAttr "cube9.sx" "cubeStamp9.boc[9]";
connectAttr "cube9.sy" "cubeStamp9.boc[10]";
connectAttr "cube9.sz" "cubeStamp9.boc[11]";
connectAttr "hyperLayout13.msg" "cubeStamp9.hl";
connectAttr "manifestHub1.sp[8]" "cubeStamp9.spawnedBy";
connectAttr "cube9.msg" "hyperLayout13.hyp[0].dn";
connectAttr "cube9Shape.msg" "hyperLayout13.hyp[1].dn";
connectAttr "cube10.t" "cubeStamp10.boc[0]";
connectAttr "cube10.tx" "cubeStamp10.boc[1]";
connectAttr "cube10.ty" "cubeStamp10.boc[2]";
connectAttr "cube10.tz" "cubeStamp10.boc[3]";
connectAttr "cube10.r" "cubeStamp10.boc[4]";
connectAttr "cube10.rx" "cubeStamp10.boc[5]";
connectAttr "cube10.ry" "cubeStamp10.boc[6]";
connectAttr "cube10.rz" "cubeStamp10.boc[7]";
connectAttr "cube10.s" "cubeStamp10.boc[8]";
connectAttr "cube10.sx" "cubeStamp10.boc[9]";
connectAttr "cube10.sy" "cubeStamp10.boc[10]";
connectAttr "cube10.sz" "cubeStamp10.boc[11]";
connectAttr "hyperLayout14.msg" "cubeStamp10.hl";
connectAttr "manifestHub1.sp[9]" "cubeStamp10.spawnedBy";
connectAttr "cube10.msg" "hyperLayout14.hyp[0].dn";
connectAttr "cube10Shape.msg" "hyperLayout14.hyp[1].dn";
connectAttr "cube11.t" "cubeStamp11.boc[0]";
connectAttr "cube11.tx" "cubeStamp11.boc[1]";
connectAttr "cube11.ty" "cubeStamp11.boc[2]";
connectAttr "cube11.tz" "cubeStamp11.boc[3]";
connectAttr "cube11.r" "cubeStamp11.boc[4]";
connectAttr "cube11.rx" "cubeStamp11.boc[5]";
connectAttr "cube11.ry" "cubeStamp11.boc[6]";
connectAttr "cube11.rz" "cubeStamp11.boc[7]";
connectAttr "cube11.s" "cubeStamp11.boc[8]";
connectAttr "cube11.sx" "cubeStamp11.boc[9]";
connectAttr "cube11.sy" "cubeStamp11.boc[10]";
connectAttr "cube11.sz" "cubeStamp11.boc[11]";
connectAttr "hyperLayout15.msg" "cubeStamp11.hl";
connectAttr "manifestHub1.sp[10]" "cubeStamp11.spawnedBy";
connectAttr "cube11.msg" "hyperLayout15.hyp[0].dn";
connectAttr "cube11Shape.msg" "hyperLayout15.hyp[1].dn";
connectAttr "cube12.t" "cubeStamp12.boc[0]";
connectAttr "cube12.tx" "cubeStamp12.boc[1]";
connectAttr "cube12.ty" "cubeStamp12.boc[2]";
connectAttr "cube12.tz" "cubeStamp12.boc[3]";
connectAttr "cube12.r" "cubeStamp12.boc[4]";
connectAttr "cube12.rx" "cubeStamp12.boc[5]";
connectAttr "cube12.ry" "cubeStamp12.boc[6]";
connectAttr "cube12.rz" "cubeStamp12.boc[7]";
connectAttr "cube12.s" "cubeStamp12.boc[8]";
connectAttr "cube12.sx" "cubeStamp12.boc[9]";
connectAttr "cube12.sy" "cubeStamp12.boc[10]";
connectAttr "cube12.sz" "cubeStamp12.boc[11]";
connectAttr "hyperLayout16.msg" "cubeStamp12.hl";
connectAttr "manifestHub1.sp[11]" "cubeStamp12.spawnedBy";
connectAttr "cube12.msg" "hyperLayout16.hyp[0].dn";
connectAttr "cube12Shape.msg" "hyperLayout16.hyp[1].dn";
connectAttr "cube13.t" "cubeStamp13.boc[0]";
connectAttr "cube13.tx" "cubeStamp13.boc[1]";
connectAttr "cube13.ty" "cubeStamp13.boc[2]";
connectAttr "cube13.tz" "cubeStamp13.boc[3]";
connectAttr "cube13.r" "cubeStamp13.boc[4]";
connectAttr "cube13.rx" "cubeStamp13.boc[5]";
connectAttr "cube13.ry" "cubeStamp13.boc[6]";
connectAttr "cube13.rz" "cubeStamp13.boc[7]";
connectAttr "cube13.s" "cubeStamp13.boc[8]";
connectAttr "cube13.sx" "cubeStamp13.boc[9]";
connectAttr "cube13.sy" "cubeStamp13.boc[10]";
connectAttr "cube13.sz" "cubeStamp13.boc[11]";
connectAttr "hyperLayout17.msg" "cubeStamp13.hl";
connectAttr "manifestHub1.sp[12]" "cubeStamp13.spawnedBy";
connectAttr "cube13.msg" "hyperLayout17.hyp[0].dn";
connectAttr "cube13Shape.msg" "hyperLayout17.hyp[1].dn";
connectAttr "cube14.t" "cubeStamp14.boc[0]";
connectAttr "cube14.tx" "cubeStamp14.boc[1]";
connectAttr "cube14.ty" "cubeStamp14.boc[2]";
connectAttr "cube14.tz" "cubeStamp14.boc[3]";
connectAttr "cube14.r" "cubeStamp14.boc[4]";
connectAttr "cube14.rx" "cubeStamp14.boc[5]";
connectAttr "cube14.ry" "cubeStamp14.boc[6]";
connectAttr "cube14.rz" "cubeStamp14.boc[7]";
connectAttr "cube14.s" "cubeStamp14.boc[8]";
connectAttr "cube14.sx" "cubeStamp14.boc[9]";
connectAttr "cube14.sy" "cubeStamp14.boc[10]";
connectAttr "cube14.sz" "cubeStamp14.boc[11]";
connectAttr "hyperLayout18.msg" "cubeStamp14.hl";
connectAttr "manifestHub1.sp[13]" "cubeStamp14.spawnedBy";
connectAttr "cube14.msg" "hyperLayout18.hyp[0].dn";
connectAttr "cube14Shape.msg" "hyperLayout18.hyp[1].dn";
connectAttr "cube15.t" "cubeStamp15.boc[0]";
connectAttr "cube15.tx" "cubeStamp15.boc[1]";
connectAttr "cube15.ty" "cubeStamp15.boc[2]";
connectAttr "cube15.tz" "cubeStamp15.boc[3]";
connectAttr "cube15.r" "cubeStamp15.boc[4]";
connectAttr "cube15.rx" "cubeStamp15.boc[5]";
connectAttr "cube15.ry" "cubeStamp15.boc[6]";
connectAttr "cube15.rz" "cubeStamp15.boc[7]";
connectAttr "cube15.s" "cubeStamp15.boc[8]";
connectAttr "cube15.sx" "cubeStamp15.boc[9]";
connectAttr "cube15.sy" "cubeStamp15.boc[10]";
connectAttr "cube15.sz" "cubeStamp15.boc[11]";
connectAttr "hyperLayout19.msg" "cubeStamp15.hl";
connectAttr "manifestHub1.sp[14]" "cubeStamp15.spawnedBy";
connectAttr "cube15.msg" "hyperLayout19.hyp[0].dn";
connectAttr "cube15Shape.msg" "hyperLayout19.hyp[1].dn";
connectAttr "cube16.t" "cubeStamp16.boc[0]";
connectAttr "cube16.tx" "cubeStamp16.boc[1]";
connectAttr "cube16.ty" "cubeStamp16.boc[2]";
connectAttr "cube16.tz" "cubeStamp16.boc[3]";
connectAttr "cube16.r" "cubeStamp16.boc[4]";
connectAttr "cube16.rx" "cubeStamp16.boc[5]";
connectAttr "cube16.ry" "cubeStamp16.boc[6]";
connectAttr "cube16.rz" "cubeStamp16.boc[7]";
connectAttr "cube16.s" "cubeStamp16.boc[8]";
connectAttr "cube16.sx" "cubeStamp16.boc[9]";
connectAttr "cube16.sy" "cubeStamp16.boc[10]";
connectAttr "cube16.sz" "cubeStamp16.boc[11]";
connectAttr "hyperLayout20.msg" "cubeStamp16.hl";
connectAttr "manifestHub1.sp[15]" "cubeStamp16.spawnedBy";
connectAttr "cube16.msg" "hyperLayout20.hyp[0].dn";
connectAttr "cube16Shape.msg" "hyperLayout20.hyp[1].dn";
connectAttr "cube17.t" "cubeStamp17.boc[0]";
connectAttr "cube17.tx" "cubeStamp17.boc[1]";
connectAttr "cube17.ty" "cubeStamp17.boc[2]";
connectAttr "cube17.tz" "cubeStamp17.boc[3]";
connectAttr "cube17.r" "cubeStamp17.boc[4]";
connectAttr "cube17.rx" "cubeStamp17.boc[5]";
connectAttr "cube17.ry" "cubeStamp17.boc[6]";
connectAttr "cube17.rz" "cubeStamp17.boc[7]";
connectAttr "cube17.s" "cubeStamp17.boc[8]";
connectAttr "cube17.sx" "cubeStamp17.boc[9]";
connectAttr "cube17.sy" "cubeStamp17.boc[10]";
connectAttr "cube17.sz" "cubeStamp17.boc[11]";
connectAttr "hyperLayout21.msg" "cubeStamp17.hl";
connectAttr "manifestHub1.sp[16]" "cubeStamp17.spawnedBy";
connectAttr "cube17.msg" "hyperLayout21.hyp[0].dn";
connectAttr "cube17Shape.msg" "hyperLayout21.hyp[1].dn";
connectAttr "cube18.t" "cubeStamp18.boc[0]";
connectAttr "cube18.tx" "cubeStamp18.boc[1]";
connectAttr "cube18.ty" "cubeStamp18.boc[2]";
connectAttr "cube18.tz" "cubeStamp18.boc[3]";
connectAttr "cube18.r" "cubeStamp18.boc[4]";
connectAttr "cube18.rx" "cubeStamp18.boc[5]";
connectAttr "cube18.ry" "cubeStamp18.boc[6]";
connectAttr "cube18.rz" "cubeStamp18.boc[7]";
connectAttr "cube18.s" "cubeStamp18.boc[8]";
connectAttr "cube18.sx" "cubeStamp18.boc[9]";
connectAttr "cube18.sy" "cubeStamp18.boc[10]";
connectAttr "cube18.sz" "cubeStamp18.boc[11]";
connectAttr "hyperLayout22.msg" "cubeStamp18.hl";
connectAttr "manifestHub1.sp[17]" "cubeStamp18.spawnedBy";
connectAttr "cube18.msg" "hyperLayout22.hyp[0].dn";
connectAttr "cube18Shape.msg" "hyperLayout22.hyp[1].dn";
connectAttr "cube19.t" "cubeStamp19.boc[0]";
connectAttr "cube19.tx" "cubeStamp19.boc[1]";
connectAttr "cube19.ty" "cubeStamp19.boc[2]";
connectAttr "cube19.tz" "cubeStamp19.boc[3]";
connectAttr "cube19.r" "cubeStamp19.boc[4]";
connectAttr "cube19.rx" "cubeStamp19.boc[5]";
connectAttr "cube19.ry" "cubeStamp19.boc[6]";
connectAttr "cube19.rz" "cubeStamp19.boc[7]";
connectAttr "cube19.s" "cubeStamp19.boc[8]";
connectAttr "cube19.sx" "cubeStamp19.boc[9]";
connectAttr "cube19.sy" "cubeStamp19.boc[10]";
connectAttr "cube19.sz" "cubeStamp19.boc[11]";
connectAttr "hyperLayout23.msg" "cubeStamp19.hl";
connectAttr "manifestHub1.sp[18]" "cubeStamp19.spawnedBy";
connectAttr "cube19.msg" "hyperLayout23.hyp[0].dn";
connectAttr "cube19Shape.msg" "hyperLayout23.hyp[1].dn";
connectAttr "cube20.t" "cubeStamp20.boc[0]";
connectAttr "cube20.tx" "cubeStamp20.boc[1]";
connectAttr "cube20.ty" "cubeStamp20.boc[2]";
connectAttr "cube20.tz" "cubeStamp20.boc[3]";
connectAttr "cube20.r" "cubeStamp20.boc[4]";
connectAttr "cube20.rx" "cubeStamp20.boc[5]";
connectAttr "cube20.ry" "cubeStamp20.boc[6]";
connectAttr "cube20.rz" "cubeStamp20.boc[7]";
connectAttr "cube20.s" "cubeStamp20.boc[8]";
connectAttr "cube20.sx" "cubeStamp20.boc[9]";
connectAttr "cube20.sy" "cubeStamp20.boc[10]";
connectAttr "cube20.sz" "cubeStamp20.boc[11]";
connectAttr "hyperLayout24.msg" "cubeStamp20.hl";
connectAttr "manifestHub1.sp[19]" "cubeStamp20.spawnedBy";
connectAttr "cube20.msg" "hyperLayout24.hyp[0].dn";
connectAttr "cube20Shape.msg" "hyperLayout24.hyp[1].dn";
connectAttr "cube21.t" "cubeStamp21.boc[0]";
connectAttr "cube21.tx" "cubeStamp21.boc[1]";
connectAttr "cube21.ty" "cubeStamp21.boc[2]";
connectAttr "cube21.tz" "cubeStamp21.boc[3]";
connectAttr "cube21.r" "cubeStamp21.boc[4]";
connectAttr "cube21.rx" "cubeStamp21.boc[5]";
connectAttr "cube21.ry" "cubeStamp21.boc[6]";
connectAttr "cube21.rz" "cubeStamp21.boc[7]";
connectAttr "cube21.s" "cubeStamp21.boc[8]";
connectAttr "cube21.sx" "cubeStamp21.boc[9]";
connectAttr "cube21.sy" "cubeStamp21.boc[10]";
connectAttr "cube21.sz" "cubeStamp21.boc[11]";
connectAttr "hyperLayout25.msg" "cubeStamp21.hl";
connectAttr "manifestHub1.sp[20]" "cubeStamp21.spawnedBy";
connectAttr "cube21.msg" "hyperLayout25.hyp[0].dn";
connectAttr "cube21Shape.msg" "hyperLayout25.hyp[1].dn";
connectAttr "cube22.t" "cubeStamp22.boc[0]";
connectAttr "cube22.tx" "cubeStamp22.boc[1]";
connectAttr "cube22.ty" "cubeStamp22.boc[2]";
connectAttr "cube22.tz" "cubeStamp22.boc[3]";
connectAttr "cube22.r" "cubeStamp22.boc[4]";
connectAttr "cube22.rx" "cubeStamp22.boc[5]";
connectAttr "cube22.ry" "cubeStamp22.boc[6]";
connectAttr "cube22.rz" "cubeStamp22.boc[7]";
connectAttr "cube22.s" "cubeStamp22.boc[8]";
connectAttr "cube22.sx" "cubeStamp22.boc[9]";
connectAttr "cube22.sy" "cubeStamp22.boc[10]";
connectAttr "cube22.sz" "cubeStamp22.boc[11]";
connectAttr "hyperLayout26.msg" "cubeStamp22.hl";
connectAttr "manifestHub1.sp[21]" "cubeStamp22.spawnedBy";
connectAttr "cube22.msg" "hyperLayout26.hyp[0].dn";
connectAttr "cube22Shape.msg" "hyperLayout26.hyp[1].dn";
connectAttr "cube23.t" "cubeStamp23.boc[0]";
connectAttr "cube23.tx" "cubeStamp23.boc[1]";
connectAttr "cube23.ty" "cubeStamp23.boc[2]";
connectAttr "cube23.tz" "cubeStamp23.boc[3]";
connectAttr "cube23.r" "cubeStamp23.boc[4]";
connectAttr "cube23.rx" "cubeStamp23.boc[5]";
connectAttr "cube23.ry" "cubeStamp23.boc[6]";
connectAttr "cube23.rz" "cubeStamp23.boc[7]";
connectAttr "cube23.s" "cubeStamp23.boc[8]";
connectAttr "cube23.sx" "cubeStamp23.boc[9]";
connectAttr "cube23.sy" "cubeStamp23.boc[10]";
connectAttr "cube23.sz" "cubeStamp23.boc[11]";
connectAttr "hyperLayout27.msg" "cubeStamp23.hl";
connectAttr "manifestHub1.sp[22]" "cubeStamp23.spawnedBy";
connectAttr "cube23.msg" "hyperLayout27.hyp[0].dn";
connectAttr "cube23Shape.msg" "hyperLayout27.hyp[1].dn";
connectAttr "cube24.t" "cubeStamp24.boc[0]";
connectAttr "cube24.tx" "cubeStamp24.boc[1]";
connectAttr "cube24.ty" "cubeStamp24.boc[2]";
connectAttr "cube24.tz" "cubeStamp24.boc[3]";
connectAttr "cube24.r" "cubeStamp24.boc[4]";
connectAttr "cube24.rx" "cubeStamp24.boc[5]";
connectAttr "cube24.ry" "cubeStamp24.boc[6]";
connectAttr "cube24.rz" "cubeStamp24.boc[7]";
connectAttr "cube24.s" "cubeStamp24.boc[8]";
connectAttr "cube24.sx" "cubeStamp24.boc[9]";
connectAttr "cube24.sy" "cubeStamp24.boc[10]";
connectAttr "cube24.sz" "cubeStamp24.boc[11]";
connectAttr "hyperLayout28.msg" "cubeStamp24.hl";
connectAttr "manifestHub1.sp[23]" "cubeStamp24.spawnedBy";
connectAttr "cube24.msg" "hyperLayout28.hyp[0].dn";
connectAttr "cube24Shape.msg" "hyperLayout28.hyp[1].dn";
connectAttr "cube25.t" "cubeStamp25.boc[0]";
connectAttr "cube25.tx" "cubeStamp25.boc[1]";
connectAttr "cube25.ty" "cubeStamp25.boc[2]";
connectAttr "cube25.tz" "cubeStamp25.boc[3]";
connectAttr "cube25.r" "cubeStamp25.boc[4]";
connectAttr "cube25.rx" "cubeStamp25.boc[5]";
connectAttr "cube25.ry" "cubeStamp25.boc[6]";
connectAttr "cube25.rz" "cubeStamp25.boc[7]";
connectAttr "cube25.s" "cubeStamp25.boc[8]";
connectAttr "cube25.sx" "cubeStamp25.boc[9]";
connectAttr "cube25.sy" "cubeStamp25.boc[10]";
connectAttr "cube25.sz" "cubeStamp25.boc[11]";
connectAttr "hyperLayout29.msg" "cubeStamp25.hl";
connectAttr "manifestHub1.sp[24]" "cubeStamp25.spawnedBy";
connectAttr "cube25.msg" "hyperLayout29.hyp[0].dn";
connectAttr "cube25Shape.msg" "hyperLayout29.hyp[1].dn";
connectAttr "cube26.t" "cubeStamp26.boc[0]";
connectAttr "cube26.tx" "cubeStamp26.boc[1]";
connectAttr "cube26.ty" "cubeStamp26.boc[2]";
connectAttr "cube26.tz" "cubeStamp26.boc[3]";
connectAttr "cube26.r" "cubeStamp26.boc[4]";
connectAttr "cube26.rx" "cubeStamp26.boc[5]";
connectAttr "cube26.ry" "cubeStamp26.boc[6]";
connectAttr "cube26.rz" "cubeStamp26.boc[7]";
connectAttr "cube26.s" "cubeStamp26.boc[8]";
connectAttr "cube26.sx" "cubeStamp26.boc[9]";
connectAttr "cube26.sy" "cubeStamp26.boc[10]";
connectAttr "cube26.sz" "cubeStamp26.boc[11]";
connectAttr "hyperLayout30.msg" "cubeStamp26.hl";
connectAttr "manifestHub1.sp[25]" "cubeStamp26.spawnedBy";
connectAttr "cube26.msg" "hyperLayout30.hyp[0].dn";
connectAttr "cube26Shape.msg" "hyperLayout30.hyp[1].dn";
connectAttr "cube27.t" "cubeStamp27.boc[0]";
connectAttr "cube27.tx" "cubeStamp27.boc[1]";
connectAttr "cube27.ty" "cubeStamp27.boc[2]";
connectAttr "cube27.tz" "cubeStamp27.boc[3]";
connectAttr "cube27.r" "cubeStamp27.boc[4]";
connectAttr "cube27.rx" "cubeStamp27.boc[5]";
connectAttr "cube27.ry" "cubeStamp27.boc[6]";
connectAttr "cube27.rz" "cubeStamp27.boc[7]";
connectAttr "cube27.s" "cubeStamp27.boc[8]";
connectAttr "cube27.sx" "cubeStamp27.boc[9]";
connectAttr "cube27.sy" "cubeStamp27.boc[10]";
connectAttr "cube27.sz" "cubeStamp27.boc[11]";
connectAttr "hyperLayout31.msg" "cubeStamp27.hl";
connectAttr "manifestHub1.sp[26]" "cubeStamp27.spawnedBy";
connectAttr "cube27.msg" "hyperLayout31.hyp[0].dn";
connectAttr "cube27Shape.msg" "hyperLayout31.hyp[1].dn";
connectAttr "cube28.t" "cubeStamp28.boc[0]";
connectAttr "cube28.tx" "cubeStamp28.boc[1]";
connectAttr "cube28.ty" "cubeStamp28.boc[2]";
connectAttr "cube28.tz" "cubeStamp28.boc[3]";
connectAttr "cube28.r" "cubeStamp28.boc[4]";
connectAttr "cube28.rx" "cubeStamp28.boc[5]";
connectAttr "cube28.ry" "cubeStamp28.boc[6]";
connectAttr "cube28.rz" "cubeStamp28.boc[7]";
connectAttr "cube28.s" "cubeStamp28.boc[8]";
connectAttr "cube28.sx" "cubeStamp28.boc[9]";
connectAttr "cube28.sy" "cubeStamp28.boc[10]";
connectAttr "cube28.sz" "cubeStamp28.boc[11]";
connectAttr "hyperLayout32.msg" "cubeStamp28.hl";
connectAttr "manifestHub1.sp[27]" "cubeStamp28.spawnedBy";
connectAttr "cube28.msg" "hyperLayout32.hyp[0].dn";
connectAttr "cube28Shape.msg" "hyperLayout32.hyp[1].dn";
connectAttr "cube29.t" "cubeStamp29.boc[0]";
connectAttr "cube29.tx" "cubeStamp29.boc[1]";
connectAttr "cube29.ty" "cubeStamp29.boc[2]";
connectAttr "cube29.tz" "cubeStamp29.boc[3]";
connectAttr "cube29.r" "cubeStamp29.boc[4]";
connectAttr "cube29.rx" "cubeStamp29.boc[5]";
connectAttr "cube29.ry" "cubeStamp29.boc[6]";
connectAttr "cube29.rz" "cubeStamp29.boc[7]";
connectAttr "cube29.s" "cubeStamp29.boc[8]";
connectAttr "cube29.sx" "cubeStamp29.boc[9]";
connectAttr "cube29.sy" "cubeStamp29.boc[10]";
connectAttr "cube29.sz" "cubeStamp29.boc[11]";
connectAttr "hyperLayout33.msg" "cubeStamp29.hl";
connectAttr "manifestHub1.sp[28]" "cubeStamp29.spawnedBy";
connectAttr "cube29.msg" "hyperLayout33.hyp[0].dn";
connectAttr "cube29Shape.msg" "hyperLayout33.hyp[1].dn";
connectAttr "cube30.t" "cubeStamp30.boc[0]";
connectAttr "cube30.tx" "cubeStamp30.boc[1]";
connectAttr "cube30.ty" "cubeStamp30.boc[2]";
connectAttr "cube30.tz" "cubeStamp30.boc[3]";
connectAttr "cube30.r" "cubeStamp30.boc[4]";
connectAttr "cube30.rx" "cubeStamp30.boc[5]";
connectAttr "cube30.ry" "cubeStamp30.boc[6]";
connectAttr "cube30.rz" "cubeStamp30.boc[7]";
connectAttr "cube30.s" "cubeStamp30.boc[8]";
connectAttr "cube30.sx" "cubeStamp30.boc[9]";
connectAttr "cube30.sy" "cubeStamp30.boc[10]";
connectAttr "cube30.sz" "cubeStamp30.boc[11]";
connectAttr "hyperLayout34.msg" "cubeStamp30.hl";
connectAttr "manifestHub1.sp[29]" "cubeStamp30.spawnedBy";
connectAttr "cube30.msg" "hyperLayout34.hyp[0].dn";
connectAttr "cube30Shape.msg" "hyperLayout34.hyp[1].dn";
connectAttr "cube31.t" "cubeStamp31.boc[0]";
connectAttr "cube31.tx" "cubeStamp31.boc[1]";
connectAttr "cube31.ty" "cubeStamp31.boc[2]";
connectAttr "cube31.tz" "cubeStamp31.boc[3]";
connectAttr "cube31.r" "cubeStamp31.boc[4]";
connectAttr "cube31.rx" "cubeStamp31.boc[5]";
connectAttr "cube31.ry" "cubeStamp31.boc[6]";
connectAttr "cube31.rz" "cubeStamp31.boc[7]";
connectAttr "cube31.s" "cubeStamp31.boc[8]";
connectAttr "cube31.sx" "cubeStamp31.boc[9]";
connectAttr "cube31.sy" "cubeStamp31.boc[10]";
connectAttr "cube31.sz" "cubeStamp31.boc[11]";
connectAttr "hyperLayout35.msg" "cubeStamp31.hl";
connectAttr "manifestHub1.sp[30]" "cubeStamp31.spawnedBy";
connectAttr "cube31.msg" "hyperLayout35.hyp[0].dn";
connectAttr "cube31Shape.msg" "hyperLayout35.hyp[1].dn";
connectAttr "cube32.t" "cubeStamp32.boc[0]";
connectAttr "cube32.tx" "cubeStamp32.boc[1]";
connectAttr "cube32.ty" "cubeStamp32.boc[2]";
connectAttr "cube32.tz" "cubeStamp32.boc[3]";
connectAttr "cube32.r" "cubeStamp32.boc[4]";
connectAttr "cube32.rx" "cubeStamp32.boc[5]";
connectAttr "cube32.ry" "cubeStamp32.boc[6]";
connectAttr "cube32.rz" "cubeStamp32.boc[7]";
connectAttr "cube32.s" "cubeStamp32.boc[8]";
connectAttr "cube32.sx" "cubeStamp32.boc[9]";
connectAttr "cube32.sy" "cubeStamp32.boc[10]";
connectAttr "cube32.sz" "cubeStamp32.boc[11]";
connectAttr "hyperLayout36.msg" "cubeStamp32.hl";
connectAttr "manifestHub1.sp[31]" "cubeStamp32.spawnedBy";
connectAttr "cube32.msg" "hyperLayout36.hyp[0].dn";
connectAttr "cube32Shape.msg" "hyperLayout36.hyp[1].dn";
connectAttr "cube33.t" "cubeStamp33.boc[0]";
connectAttr "cube33.tx" "cubeStamp33.boc[1]";
connectAttr "cube33.ty" "cubeStamp33.boc[2]";
connectAttr "cube33.tz" "cubeStamp33.boc[3]";
connectAttr "cube33.r" "cubeStamp33.boc[4]";
connectAttr "cube33.rx" "cubeStamp33.boc[5]";
connectAttr "cube33.ry" "cubeStamp33.boc[6]";
connectAttr "cube33.rz" "cubeStamp33.boc[7]";
connectAttr "cube33.s" "cubeStamp33.boc[8]";
connectAttr "cube33.sx" "cubeStamp33.boc[9]";
connectAttr "cube33.sy" "cubeStamp33.boc[10]";
connectAttr "cube33.sz" "cubeStamp33.boc[11]";
connectAttr "hyperLayout37.msg" "cubeStamp33.hl";
connectAttr "manifestHub1.sp[32]" "cubeStamp33.spawnedBy";
connectAttr "cube33.msg" "hyperLayout37.hyp[0].dn";
connectAttr "cube33Shape.msg" "hyperLayout37.hyp[1].dn";
connectAttr "cube34.t" "cubeStamp34.boc[0]";
connectAttr "cube34.tx" "cubeStamp34.boc[1]";
connectAttr "cube34.ty" "cubeStamp34.boc[2]";
connectAttr "cube34.tz" "cubeStamp34.boc[3]";
connectAttr "cube34.r" "cubeStamp34.boc[4]";
connectAttr "cube34.rx" "cubeStamp34.boc[5]";
connectAttr "cube34.ry" "cubeStamp34.boc[6]";
connectAttr "cube34.rz" "cubeStamp34.boc[7]";
connectAttr "cube34.s" "cubeStamp34.boc[8]";
connectAttr "cube34.sx" "cubeStamp34.boc[9]";
connectAttr "cube34.sy" "cubeStamp34.boc[10]";
connectAttr "cube34.sz" "cubeStamp34.boc[11]";
connectAttr "hyperLayout38.msg" "cubeStamp34.hl";
connectAttr "manifestHub1.sp[33]" "cubeStamp34.spawnedBy";
connectAttr "cube34.msg" "hyperLayout38.hyp[0].dn";
connectAttr "cube34Shape.msg" "hyperLayout38.hyp[1].dn";
connectAttr "cube35.t" "cubeStamp35.boc[0]";
connectAttr "cube35.tx" "cubeStamp35.boc[1]";
connectAttr "cube35.ty" "cubeStamp35.boc[2]";
connectAttr "cube35.tz" "cubeStamp35.boc[3]";
connectAttr "cube35.r" "cubeStamp35.boc[4]";
connectAttr "cube35.rx" "cubeStamp35.boc[5]";
connectAttr "cube35.ry" "cubeStamp35.boc[6]";
connectAttr "cube35.rz" "cubeStamp35.boc[7]";
connectAttr "cube35.s" "cubeStamp35.boc[8]";
connectAttr "cube35.sx" "cubeStamp35.boc[9]";
connectAttr "cube35.sy" "cubeStamp35.boc[10]";
connectAttr "cube35.sz" "cubeStamp35.boc[11]";
connectAttr "hyperLayout39.msg" "cubeStamp35.hl";
connectAttr "manifestHub1.sp[34]" "cubeStamp35.spawnedBy";
connectAttr "cube35.msg" "hyperLayout39.hyp[0].dn";
connectAttr "cube35Shape.msg" "hyperLayout39.hyp[1].dn";
connectAttr "cube36.t" "cubeStamp36.boc[0]";
connectAttr "cube36.tx" "cubeStamp36.boc[1]";
connectAttr "cube36.ty" "cubeStamp36.boc[2]";
connectAttr "cube36.tz" "cubeStamp36.boc[3]";
connectAttr "cube36.r" "cubeStamp36.boc[4]";
connectAttr "cube36.rx" "cubeStamp36.boc[5]";
connectAttr "cube36.ry" "cubeStamp36.boc[6]";
connectAttr "cube36.rz" "cubeStamp36.boc[7]";
connectAttr "cube36.s" "cubeStamp36.boc[8]";
connectAttr "cube36.sx" "cubeStamp36.boc[9]";
connectAttr "cube36.sy" "cubeStamp36.boc[10]";
connectAttr "cube36.sz" "cubeStamp36.boc[11]";
connectAttr "hyperLayout40.msg" "cubeStamp36.hl";
connectAttr "manifestHub1.sp[35]" "cubeStamp36.spawnedBy";
connectAttr "cube36.msg" "hyperLayout40.hyp[0].dn";
connectAttr "cube36Shape.msg" "hyperLayout40.hyp[1].dn";
connectAttr "cube37.t" "cubeStamp37.boc[0]";
connectAttr "cube37.tx" "cubeStamp37.boc[1]";
connectAttr "cube37.ty" "cubeStamp37.boc[2]";
connectAttr "cube37.tz" "cubeStamp37.boc[3]";
connectAttr "cube37.r" "cubeStamp37.boc[4]";
connectAttr "cube37.rx" "cubeStamp37.boc[5]";
connectAttr "cube37.ry" "cubeStamp37.boc[6]";
connectAttr "cube37.rz" "cubeStamp37.boc[7]";
connectAttr "cube37.s" "cubeStamp37.boc[8]";
connectAttr "cube37.sx" "cubeStamp37.boc[9]";
connectAttr "cube37.sy" "cubeStamp37.boc[10]";
connectAttr "cube37.sz" "cubeStamp37.boc[11]";
connectAttr "hyperLayout41.msg" "cubeStamp37.hl";
connectAttr "manifestHub1.sp[36]" "cubeStamp37.spawnedBy";
connectAttr "cube37.msg" "hyperLayout41.hyp[0].dn";
connectAttr "cube37Shape.msg" "hyperLayout41.hyp[1].dn";
connectAttr "cube38.t" "cubeStamp38.boc[0]";
connectAttr "cube38.tx" "cubeStamp38.boc[1]";
connectAttr "cube38.ty" "cubeStamp38.boc[2]";
connectAttr "cube38.tz" "cubeStamp38.boc[3]";
connectAttr "cube38.r" "cubeStamp38.boc[4]";
connectAttr "cube38.rx" "cubeStamp38.boc[5]";
connectAttr "cube38.ry" "cubeStamp38.boc[6]";
connectAttr "cube38.rz" "cubeStamp38.boc[7]";
connectAttr "cube38.s" "cubeStamp38.boc[8]";
connectAttr "cube38.sx" "cubeStamp38.boc[9]";
connectAttr "cube38.sy" "cubeStamp38.boc[10]";
connectAttr "cube38.sz" "cubeStamp38.boc[11]";
connectAttr "hyperLayout42.msg" "cubeStamp38.hl";
connectAttr "manifestHub1.sp[37]" "cubeStamp38.spawnedBy";
connectAttr "cube38.msg" "hyperLayout42.hyp[0].dn";
connectAttr "cube38Shape.msg" "hyperLayout42.hyp[1].dn";
connectAttr "cube39.t" "cubeStamp39.boc[0]";
connectAttr "cube39.tx" "cubeStamp39.boc[1]";
connectAttr "cube39.ty" "cubeStamp39.boc[2]";
connectAttr "cube39.tz" "cubeStamp39.boc[3]";
connectAttr "cube39.r" "cubeStamp39.boc[4]";
connectAttr "cube39.rx" "cubeStamp39.boc[5]";
connectAttr "cube39.ry" "cubeStamp39.boc[6]";
connectAttr "cube39.rz" "cubeStamp39.boc[7]";
connectAttr "cube39.s" "cubeStamp39.boc[8]";
connectAttr "cube39.sx" "cubeStamp39.boc[9]";
connectAttr "cube39.sy" "cubeStamp39.boc[10]";
connectAttr "cube39.sz" "cubeStamp39.boc[11]";
connectAttr "hyperLayout43.msg" "cubeStamp39.hl";
connectAttr "manifestHub1.sp[38]" "cubeStamp39.spawnedBy";
connectAttr "cube39.msg" "hyperLayout43.hyp[0].dn";
connectAttr "cube39Shape.msg" "hyperLayout43.hyp[1].dn";
connectAttr "cube40.t" "cubeStamp40.boc[0]";
connectAttr "cube40.tx" "cubeStamp40.boc[1]";
connectAttr "cube40.ty" "cubeStamp40.boc[2]";
connectAttr "cube40.tz" "cubeStamp40.boc[3]";
connectAttr "cube40.r" "cubeStamp40.boc[4]";
connectAttr "cube40.rx" "cubeStamp40.boc[5]";
connectAttr "cube40.ry" "cubeStamp40.boc[6]";
connectAttr "cube40.rz" "cubeStamp40.boc[7]";
connectAttr "cube40.s" "cubeStamp40.boc[8]";
connectAttr "cube40.sx" "cubeStamp40.boc[9]";
connectAttr "cube40.sy" "cubeStamp40.boc[10]";
connectAttr "cube40.sz" "cubeStamp40.boc[11]";
connectAttr "hyperLayout44.msg" "cubeStamp40.hl";
connectAttr "manifestHub1.sp[39]" "cubeStamp40.spawnedBy";
connectAttr "cube40.msg" "hyperLayout44.hyp[0].dn";
connectAttr "cube40Shape.msg" "hyperLayout44.hyp[1].dn";
connectAttr "cube41.t" "cubeStamp41.boc[0]";
connectAttr "cube41.tx" "cubeStamp41.boc[1]";
connectAttr "cube41.ty" "cubeStamp41.boc[2]";
connectAttr "cube41.tz" "cubeStamp41.boc[3]";
connectAttr "cube41.r" "cubeStamp41.boc[4]";
connectAttr "cube41.rx" "cubeStamp41.boc[5]";
connectAttr "cube41.ry" "cubeStamp41.boc[6]";
connectAttr "cube41.rz" "cubeStamp41.boc[7]";
connectAttr "cube41.s" "cubeStamp41.boc[8]";
connectAttr "cube41.sx" "cubeStamp41.boc[9]";
connectAttr "cube41.sy" "cubeStamp41.boc[10]";
connectAttr "cube41.sz" "cubeStamp41.boc[11]";
connectAttr "hyperLayout45.msg" "cubeStamp41.hl";
connectAttr "manifestHub1.sp[40]" "cubeStamp41.spawnedBy";
connectAttr "cube41.msg" "hyperLayout45.hyp[0].dn";
connectAttr "cube41Shape.msg" "hyperLayout45.hyp[1].dn";
connectAttr "cube42.t" "cubeStamp42.boc[0]";
connectAttr "cube42.tx" "cubeStamp42.boc[1]";
connectAttr "cube42.ty" "cubeStamp42.boc[2]";
connectAttr "cube42.tz" "cubeStamp42.boc[3]";
connectAttr "cube42.r" "cubeStamp42.boc[4]";
connectAttr "cube42.rx" "cubeStamp42.boc[5]";
connectAttr "cube42.ry" "cubeStamp42.boc[6]";
connectAttr "cube42.rz" "cubeStamp42.boc[7]";
connectAttr "cube42.s" "cubeStamp42.boc[8]";
connectAttr "cube42.sx" "cubeStamp42.boc[9]";
connectAttr "cube42.sy" "cubeStamp42.boc[10]";
connectAttr "cube42.sz" "cubeStamp42.boc[11]";
connectAttr "hyperLayout46.msg" "cubeStamp42.hl";
connectAttr "manifestHub1.sp[41]" "cubeStamp42.spawnedBy";
connectAttr "cube42.msg" "hyperLayout46.hyp[0].dn";
connectAttr "cube42Shape.msg" "hyperLayout46.hyp[1].dn";
connectAttr "cube43.t" "cubeStamp43.boc[0]";
connectAttr "cube43.tx" "cubeStamp43.boc[1]";
connectAttr "cube43.ty" "cubeStamp43.boc[2]";
connectAttr "cube43.tz" "cubeStamp43.boc[3]";
connectAttr "cube43.r" "cubeStamp43.boc[4]";
connectAttr "cube43.rx" "cubeStamp43.boc[5]";
connectAttr "cube43.ry" "cubeStamp43.boc[6]";
connectAttr "cube43.rz" "cubeStamp43.boc[7]";
connectAttr "cube43.s" "cubeStamp43.boc[8]";
connectAttr "cube43.sx" "cubeStamp43.boc[9]";
connectAttr "cube43.sy" "cubeStamp43.boc[10]";
connectAttr "cube43.sz" "cubeStamp43.boc[11]";
connectAttr "hyperLayout47.msg" "cubeStamp43.hl";
connectAttr "manifestHub1.sp[42]" "cubeStamp43.spawnedBy";
connectAttr "cube43.msg" "hyperLayout47.hyp[0].dn";
connectAttr "cube43Shape.msg" "hyperLayout47.hyp[1].dn";
connectAttr "cube44.t" "cubeStamp44.boc[0]";
connectAttr "cube44.tx" "cubeStamp44.boc[1]";
connectAttr "cube44.ty" "cubeStamp44.boc[2]";
connectAttr "cube44.tz" "cubeStamp44.boc[3]";
connectAttr "cube44.r" "cubeStamp44.boc[4]";
connectAttr "cube44.rx" "cubeStamp44.boc[5]";
connectAttr "cube44.ry" "cubeStamp44.boc[6]";
connectAttr "cube44.rz" "cubeStamp44.boc[7]";
connectAttr "cube44.s" "cubeStamp44.boc[8]";
connectAttr "cube44.sx" "cubeStamp44.boc[9]";
connectAttr "cube44.sy" "cubeStamp44.boc[10]";
connectAttr "cube44.sz" "cubeStamp44.boc[11]";
connectAttr "hyperLayout48.msg" "cubeStamp44.hl";
connectAttr "manifestHub1.sp[43]" "cubeStamp44.spawnedBy";
connectAttr "cube44.msg" "hyperLayout48.hyp[0].dn";
connectAttr "cube44Shape.msg" "hyperLayout48.hyp[1].dn";
connectAttr "cube45.t" "cubeStamp45.boc[0]";
connectAttr "cube45.tx" "cubeStamp45.boc[1]";
connectAttr "cube45.ty" "cubeStamp45.boc[2]";
connectAttr "cube45.tz" "cubeStamp45.boc[3]";
connectAttr "cube45.r" "cubeStamp45.boc[4]";
connectAttr "cube45.rx" "cubeStamp45.boc[5]";
connectAttr "cube45.ry" "cubeStamp45.boc[6]";
connectAttr "cube45.rz" "cubeStamp45.boc[7]";
connectAttr "cube45.s" "cubeStamp45.boc[8]";
connectAttr "cube45.sx" "cubeStamp45.boc[9]";
connectAttr "cube45.sy" "cubeStamp45.boc[10]";
connectAttr "cube45.sz" "cubeStamp45.boc[11]";
connectAttr "hyperLayout49.msg" "cubeStamp45.hl";
connectAttr "manifestHub1.sp[44]" "cubeStamp45.spawnedBy";
connectAttr "cube45.msg" "hyperLayout49.hyp[0].dn";
connectAttr "cube45Shape.msg" "hyperLayout49.hyp[1].dn";
connectAttr "cube46.t" "cubeStamp46.boc[0]";
connectAttr "cube46.tx" "cubeStamp46.boc[1]";
connectAttr "cube46.ty" "cubeStamp46.boc[2]";
connectAttr "cube46.tz" "cubeStamp46.boc[3]";
connectAttr "cube46.r" "cubeStamp46.boc[4]";
connectAttr "cube46.rx" "cubeStamp46.boc[5]";
connectAttr "cube46.ry" "cubeStamp46.boc[6]";
connectAttr "cube46.rz" "cubeStamp46.boc[7]";
connectAttr "cube46.s" "cubeStamp46.boc[8]";
connectAttr "cube46.sx" "cubeStamp46.boc[9]";
connectAttr "cube46.sy" "cubeStamp46.boc[10]";
connectAttr "cube46.sz" "cubeStamp46.boc[11]";
connectAttr "hyperLayout50.msg" "cubeStamp46.hl";
connectAttr "manifestHub1.sp[45]" "cubeStamp46.spawnedBy";
connectAttr "cube46.msg" "hyperLayout50.hyp[0].dn";
connectAttr "cube46Shape.msg" "hyperLayout50.hyp[1].dn";
connectAttr "cube47.t" "cubeStamp47.boc[0]";
connectAttr "cube47.tx" "cubeStamp47.boc[1]";
connectAttr "cube47.ty" "cubeStamp47.boc[2]";
connectAttr "cube47.tz" "cubeStamp47.boc[3]";
connectAttr "cube47.r" "cubeStamp47.boc[4]";
connectAttr "cube47.rx" "cubeStamp47.boc[5]";
connectAttr "cube47.ry" "cubeStamp47.boc[6]";
connectAttr "cube47.rz" "cubeStamp47.boc[7]";
connectAttr "cube47.s" "cubeStamp47.boc[8]";
connectAttr "cube47.sx" "cubeStamp47.boc[9]";
connectAttr "cube47.sy" "cubeStamp47.boc[10]";
connectAttr "cube47.sz" "cubeStamp47.boc[11]";
connectAttr "hyperLayout51.msg" "cubeStamp47.hl";
connectAttr "manifestHub1.sp[46]" "cubeStamp47.spawnedBy";
connectAttr "cube47.msg" "hyperLayout51.hyp[0].dn";
connectAttr "cube47Shape.msg" "hyperLayout51.hyp[1].dn";
connectAttr "cube48.t" "cubeStamp48.boc[0]";
connectAttr "cube48.tx" "cubeStamp48.boc[1]";
connectAttr "cube48.ty" "cubeStamp48.boc[2]";
connectAttr "cube48.tz" "cubeStamp48.boc[3]";
connectAttr "cube48.r" "cubeStamp48.boc[4]";
connectAttr "cube48.rx" "cubeStamp48.boc[5]";
connectAttr "cube48.ry" "cubeStamp48.boc[6]";
connectAttr "cube48.rz" "cubeStamp48.boc[7]";
connectAttr "cube48.s" "cubeStamp48.boc[8]";
connectAttr "cube48.sx" "cubeStamp48.boc[9]";
connectAttr "cube48.sy" "cubeStamp48.boc[10]";
connectAttr "cube48.sz" "cubeStamp48.boc[11]";
connectAttr "hyperLayout52.msg" "cubeStamp48.hl";
connectAttr "manifestHub1.sp[47]" "cubeStamp48.spawnedBy";
connectAttr "cube48.msg" "hyperLayout52.hyp[0].dn";
connectAttr "cube48Shape.msg" "hyperLayout52.hyp[1].dn";
connectAttr "cube49.t" "cubeStamp49.boc[0]";
connectAttr "cube49.tx" "cubeStamp49.boc[1]";
connectAttr "cube49.ty" "cubeStamp49.boc[2]";
connectAttr "cube49.tz" "cubeStamp49.boc[3]";
connectAttr "cube49.r" "cubeStamp49.boc[4]";
connectAttr "cube49.rx" "cubeStamp49.boc[5]";
connectAttr "cube49.ry" "cubeStamp49.boc[6]";
connectAttr "cube49.rz" "cubeStamp49.boc[7]";
connectAttr "cube49.s" "cubeStamp49.boc[8]";
connectAttr "cube49.sx" "cubeStamp49.boc[9]";
connectAttr "cube49.sy" "cubeStamp49.boc[10]";
connectAttr "cube49.sz" "cubeStamp49.boc[11]";
connectAttr "hyperLayout53.msg" "cubeStamp49.hl";
connectAttr "manifestHub1.sp[48]" "cubeStamp49.spawnedBy";
connectAttr "cube49.msg" "hyperLayout53.hyp[0].dn";
connectAttr "cube49Shape.msg" "hyperLayout53.hyp[1].dn";
connectAttr "cube50.t" "cubeStamp50.boc[0]";
connectAttr "cube50.tx" "cubeStamp50.boc[1]";
connectAttr "cube50.ty" "cubeStamp50.boc[2]";
connectAttr "cube50.tz" "cubeStamp50.boc[3]";
connectAttr "cube50.r" "cubeStamp50.boc[4]";
connectAttr "cube50.rx" "cubeStamp50.boc[5]";
connectAttr "cube50.ry" "cubeStamp50.boc[6]";
connectAttr "cube50.rz" "cubeStamp50.boc[7]";
connectAttr "cube50.s" "cubeStamp50.boc[8]";
connectAttr "cube50.sx" "cubeStamp50.boc[9]";
connectAttr "cube50.sy" "cubeStamp50.boc[10]";
connectAttr "cube50.sz" "cubeStamp50.boc[11]";
connectAttr "hyperLayout54.msg" "cubeStamp50.hl";
connectAttr "manifestHub1.sp[49]" "cubeStamp50.spawnedBy";
connectAttr "cube50.msg" "hyperLayout54.hyp[0].dn";
connectAttr "cube50Shape.msg" "hyperLayout54.hyp[1].dn";
connectAttr "cube51.t" "cubeStamp51.boc[0]";
connectAttr "cube51.tx" "cubeStamp51.boc[1]";
connectAttr "cube51.ty" "cubeStamp51.boc[2]";
connectAttr "cube51.tz" "cubeStamp51.boc[3]";
connectAttr "cube51.r" "cubeStamp51.boc[4]";
connectAttr "cube51.rx" "cubeStamp51.boc[5]";
connectAttr "cube51.ry" "cubeStamp51.boc[6]";
connectAttr "cube51.rz" "cubeStamp51.boc[7]";
connectAttr "cube51.s" "cubeStamp51.boc[8]";
connectAttr "cube51.sx" "cubeStamp51.boc[9]";
connectAttr "cube51.sy" "cubeStamp51.boc[10]";
connectAttr "cube51.sz" "cubeStamp51.boc[11]";
connectAttr "hyperLayout55.msg" "cubeStamp51.hl";
connectAttr "manifestHub1.sp[50]" "cubeStamp51.spawnedBy";
connectAttr "cube51.msg" "hyperLayout55.hyp[0].dn";
connectAttr "cube51Shape.msg" "hyperLayout55.hyp[1].dn";
connectAttr "cube52.t" "cubeStamp52.boc[0]";
connectAttr "cube52.tx" "cubeStamp52.boc[1]";
connectAttr "cube52.ty" "cubeStamp52.boc[2]";
connectAttr "cube52.tz" "cubeStamp52.boc[3]";
connectAttr "cube52.r" "cubeStamp52.boc[4]";
connectAttr "cube52.rx" "cubeStamp52.boc[5]";
connectAttr "cube52.ry" "cubeStamp52.boc[6]";
connectAttr "cube52.rz" "cubeStamp52.boc[7]";
connectAttr "cube52.s" "cubeStamp52.boc[8]";
connectAttr "cube52.sx" "cubeStamp52.boc[9]";
connectAttr "cube52.sy" "cubeStamp52.boc[10]";
connectAttr "cube52.sz" "cubeStamp52.boc[11]";
connectAttr "hyperLayout56.msg" "cubeStamp52.hl";
connectAttr "manifestHub1.sp[51]" "cubeStamp52.spawnedBy";
connectAttr "cube52.msg" "hyperLayout56.hyp[0].dn";
connectAttr "cube52Shape.msg" "hyperLayout56.hyp[1].dn";
connectAttr "cube53.t" "cubeStamp53.boc[0]";
connectAttr "cube53.tx" "cubeStamp53.boc[1]";
connectAttr "cube53.ty" "cubeStamp53.boc[2]";
connectAttr "cube53.tz" "cubeStamp53.boc[3]";
connectAttr "cube53.r" "cubeStamp53.boc[4]";
connectAttr "cube53.rx" "cubeStamp53.boc[5]";
connectAttr "cube53.ry" "cubeStamp53.boc[6]";
connectAttr "cube53.rz" "cubeStamp53.boc[7]";
connectAttr "cube53.s" "cubeStamp53.boc[8]";
connectAttr "cube53.sx" "cubeStamp53.boc[9]";
connectAttr "cube53.sy" "cubeStamp53.boc[10]";
connectAttr "cube53.sz" "cubeStamp53.boc[11]";
connectAttr "hyperLayout57.msg" "cubeStamp53.hl";
connectAttr "manifestHub1.sp[52]" "cubeStamp53.spawnedBy";
connectAttr "cube53.msg" "hyperLayout57.hyp[0].dn";
connectAttr "cube53Shape.msg" "hyperLayout57.hyp[1].dn";
connectAttr "cube54.t" "cubeStamp54.boc[0]";
connectAttr "cube54.tx" "cubeStamp54.boc[1]";
connectAttr "cube54.ty" "cubeStamp54.boc[2]";
connectAttr "cube54.tz" "cubeStamp54.boc[3]";
connectAttr "cube54.r" "cubeStamp54.boc[4]";
connectAttr "cube54.rx" "cubeStamp54.boc[5]";
connectAttr "cube54.ry" "cubeStamp54.boc[6]";
connectAttr "cube54.rz" "cubeStamp54.boc[7]";
connectAttr "cube54.s" "cubeStamp54.boc[8]";
connectAttr "cube54.sx" "cubeStamp54.boc[9]";
connectAttr "cube54.sy" "cubeStamp54.boc[10]";
connectAttr "cube54.sz" "cubeStamp54.boc[11]";
connectAttr "hyperLayout58.msg" "cubeStamp54.hl";
connectAttr "manifestHub1.sp[53]" "cubeStamp54.spawnedBy";
connectAttr "cube54.msg" "hyperLayout58.hyp[0].dn";
connectAttr "cube54Shape.msg" "hyperLayout58.hyp[1].dn";
connectAttr "cube55.t" "cubeStamp55.boc[0]";
connectAttr "cube55.tx" "cubeStamp55.boc[1]";
connectAttr "cube55.ty" "cubeStamp55.boc[2]";
connectAttr "cube55.tz" "cubeStamp55.boc[3]";
connectAttr "cube55.r" "cubeStamp55.boc[4]";
connectAttr "cube55.rx" "cubeStamp55.boc[5]";
connectAttr "cube55.ry" "cubeStamp55.boc[6]";
connectAttr "cube55.rz" "cubeStamp55.boc[7]";
connectAttr "cube55.s" "cubeStamp55.boc[8]";
connectAttr "cube55.sx" "cubeStamp55.boc[9]";
connectAttr "cube55.sy" "cubeStamp55.boc[10]";
connectAttr "cube55.sz" "cubeStamp55.boc[11]";
connectAttr "hyperLayout59.msg" "cubeStamp55.hl";
connectAttr "manifestHub1.sp[54]" "cubeStamp55.spawnedBy";
connectAttr "cube55.msg" "hyperLayout59.hyp[0].dn";
connectAttr "cube55Shape.msg" "hyperLayout59.hyp[1].dn";
connectAttr "cube56.t" "cubeStamp56.boc[0]";
connectAttr "cube56.tx" "cubeStamp56.boc[1]";
connectAttr "cube56.ty" "cubeStamp56.boc[2]";
connectAttr "cube56.tz" "cubeStamp56.boc[3]";
connectAttr "cube56.r" "cubeStamp56.boc[4]";
connectAttr "cube56.rx" "cubeStamp56.boc[5]";
connectAttr "cube56.ry" "cubeStamp56.boc[6]";
connectAttr "cube56.rz" "cubeStamp56.boc[7]";
connectAttr "cube56.s" "cubeStamp56.boc[8]";
connectAttr "cube56.sx" "cubeStamp56.boc[9]";
connectAttr "cube56.sy" "cubeStamp56.boc[10]";
connectAttr "cube56.sz" "cubeStamp56.boc[11]";
connectAttr "hyperLayout60.msg" "cubeStamp56.hl";
connectAttr "manifestHub1.sp[55]" "cubeStamp56.spawnedBy";
connectAttr "cube56.msg" "hyperLayout60.hyp[0].dn";
connectAttr "cube56Shape.msg" "hyperLayout60.hyp[1].dn";
connectAttr "cube57.t" "cubeStamp57.boc[0]";
connectAttr "cube57.tx" "cubeStamp57.boc[1]";
connectAttr "cube57.ty" "cubeStamp57.boc[2]";
connectAttr "cube57.tz" "cubeStamp57.boc[3]";
connectAttr "cube57.r" "cubeStamp57.boc[4]";
connectAttr "cube57.rx" "cubeStamp57.boc[5]";
connectAttr "cube57.ry" "cubeStamp57.boc[6]";
connectAttr "cube57.rz" "cubeStamp57.boc[7]";
connectAttr "cube57.s" "cubeStamp57.boc[8]";
connectAttr "cube57.sx" "cubeStamp57.boc[9]";
connectAttr "cube57.sy" "cubeStamp57.boc[10]";
connectAttr "cube57.sz" "cubeStamp57.boc[11]";
connectAttr "hyperLayout61.msg" "cubeStamp57.hl";
connectAttr "manifestHub1.sp[56]" "cubeStamp57.spawnedBy";
connectAttr "cube57.msg" "hyperLayout61.hyp[0].dn";
connectAttr "cube57Shape.msg" "hyperLayout61.hyp[1].dn";
connectAttr "cube58.t" "cubeStamp58.boc[0]";
connectAttr "cube58.tx" "cubeStamp58.boc[1]";
connectAttr "cube58.ty" "cubeStamp58.boc[2]";
connectAttr "cube58.tz" "cubeStamp58.boc[3]";
connectAttr "cube58.r" "cubeStamp58.boc[4]";
connectAttr "cube58.rx" "cubeStamp58.boc[5]";
connectAttr "cube58.ry" "cubeStamp58.boc[6]";
connectAttr "cube58.rz" "cubeStamp58.boc[7]";
connectAttr "cube58.s" "cubeStamp58.boc[8]";
connectAttr "cube58.sx" "cubeStamp58.boc[9]";
connectAttr "cube58.sy" "cubeStamp58.boc[10]";
connectAttr "cube58.sz" "cubeStamp58.boc[11]";
connectAttr "hyperLayout62.msg" "cubeStamp58.hl";
connectAttr "manifestHub1.sp[57]" "cubeStamp58.spawnedBy";
connectAttr "cube58.msg" "hyperLayout62.hyp[0].dn";
connectAttr "cube58Shape.msg" "hyperLayout62.hyp[1].dn";
connectAttr "cube59.t" "cubeStamp59.boc[0]";
connectAttr "cube59.tx" "cubeStamp59.boc[1]";
connectAttr "cube59.ty" "cubeStamp59.boc[2]";
connectAttr "cube59.tz" "cubeStamp59.boc[3]";
connectAttr "cube59.r" "cubeStamp59.boc[4]";
connectAttr "cube59.rx" "cubeStamp59.boc[5]";
connectAttr "cube59.ry" "cubeStamp59.boc[6]";
connectAttr "cube59.rz" "cubeStamp59.boc[7]";
connectAttr "cube59.s" "cubeStamp59.boc[8]";
connectAttr "cube59.sx" "cubeStamp59.boc[9]";
connectAttr "cube59.sy" "cubeStamp59.boc[10]";
connectAttr "cube59.sz" "cubeStamp59.boc[11]";
connectAttr "hyperLayout63.msg" "cubeStamp59.hl";
connectAttr "manifestHub1.sp[58]" "cubeStamp59.spawnedBy";
connectAttr "cube59.msg" "hyperLayout63.hyp[0].dn";
connectAttr "cube59Shape.msg" "hyperLayout63.hyp[1].dn";
connectAttr "nParticleCloudSE.pa" ":renderPartition.st" -na;
connectAttr "cubeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube11Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube12Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube13Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube14Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube15Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube16Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube17Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube18Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube19Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube20Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube21Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube22Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube23Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube24Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube25Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube26Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube27Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube28Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube29Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube30Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube31Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube32Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube33Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube34Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube35Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube36Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube37Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube38Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube39Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube40Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube41Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube42Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube43Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube44Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube45Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube46Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube47Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube48Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube49Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube50Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube51Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube52Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube53Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube54Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube55Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube56Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube57Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube58Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube59Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "npCloudBlinn.msg" ":defaultShaderList1.s" -na;
connectAttr "npCloudVolume.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "hyperView1.msg" ":hyperGraphInfo.b[0]";
connectAttr "hyperView3.msg" ":hyperGraphInfo.b[2]";
// End of manifestSimple.ma
