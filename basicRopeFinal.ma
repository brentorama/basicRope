//Maya ASCII 8.5 scene
//Name: basicRopeFinal.ma
//Last modified: Tue, Jan 22, 2008 01:03:06 PM
//Codeset: 1252
requires maya "8.5";
requires "Mayatomr" "8.5.1.3m - 3.5.6.7 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Complete 8.5";
fileInfo "version" "8.5";
fileInfo "cutIdentifier" "200612162224-692032";
fileInfo "osv" "Microsoft Windows XP Service Pack 2 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -16.203507637184245 8.9497707905292003 -4.1470578832380713 ;
	setAttr ".r" -type "double3" -27.338352729955648 -99.800000000017462 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 18.191260298510016;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "BasicRope:godNode";
createNode transform -n "BasicRope:basecurve1" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
createNode nurbsCurve -n "BasicRope:basecurveShape1" -p "BasicRope:basecurve1";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "BasicRope:basecurveShape1Orig1" -p "BasicRope:basecurve1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 8
		2
		0 0 4
		0 0 -4
		;
createNode transform -n "BasicRope:baseClstrA" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0 4 ;
	setAttr ".sp" -type "double3" 0 0 4 ;
createNode clusterHandle -n "BasicRope:baseClstrAShape" -p "BasicRope:baseClstrA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".or" -type "double3" 0 0 4 ;
createNode pointConstraint -n "BasicRope:cluster1Handle_pointConstraint1" -p "BasicRope:baseClstrA";
	addAttr -ci true -sn "w0" -ln "duplicatedCurve2W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:baseClstrB" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0 -4 ;
	setAttr ".sp" -type "double3" 0 0 -4 ;
createNode clusterHandle -n "BasicRope:baseClstrBShape" -p "BasicRope:baseClstrB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".or" -type "double3" 0 0 -4 ;
createNode pointConstraint -n "BasicRope:cluster2Handle_pointConstraint1" -p "BasicRope:baseClstrB";
	addAttr -ci true -sn "w0" -ln "duplicatedCurve1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:RopeCTRLGrp1" -p "BasicRope:godNode";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-017 -4 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-017 -4 ;
	setAttr ".smd" 7;
createNode transform -n "BasicRope:ropeCTRL1" -p "BasicRope:RopeCTRLGrp1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 -4 ;
	setAttr ".sp" -type "double3" 0 0 -4 ;
	setAttr ".hdl" -type "double3" 0 0 -4 ;
	setAttr ".dh" yes;
createNode nurbsCurve -n "BasicRope:ropeCTRLShape1" -p "BasicRope:ropeCTRL1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35167353018510678 0.35167353018510622 -4
		-5.6741721427161011e-017 0.49734147591540162 -4
		-0.35167353018510644 0.35167353018510644 -4
		-0.49734147591540162 1.5501537371188569e-016 -4
		-0.35167353018510655 -0.35167353018510639 -4
		-1.6747167342594726e-016 -0.49734147591540173 -4
		0.35167353018510628 -0.3516735301851065 -4
		0.49734147591540162 -2.671220711384398e-016 -4
		0.35167353018510678 0.35167353018510622 -4
		-5.6741721427161011e-017 0.49734147591540162 -4
		-0.35167353018510644 0.35167353018510644 -4
		;
createNode transform -n "BasicRope:RopeCTRLGrp2" -p "BasicRope:godNode";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-017 -3 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-017 -3 ;
	setAttr ".smd" 7;
createNode transform -n "BasicRope:ropeCTRL2" -p "BasicRope:RopeCTRLGrp2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 -3 ;
	setAttr ".sp" -type "double3" 0 0 -3 ;
	setAttr ".hdl" -type "double3" 0 0 -3 ;
	setAttr ".dh" yes;
createNode nurbsCurve -n "BasicRope:ropeCTRLShape2" -p "BasicRope:ropeCTRL2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35167353018510678 0.35167353018510622 -3
		-5.6741721427161011e-017 0.49734147591540162 -3
		-0.35167353018510644 0.35167353018510644 -3
		-0.49734147591540162 1.5501537371188569e-016 -3
		-0.35167353018510655 -0.35167353018510639 -3
		-1.6747167342594726e-016 -0.49734147591540173 -3
		0.35167353018510628 -0.3516735301851065 -3
		0.49734147591540162 -2.671220711384398e-016 -3
		0.35167353018510678 0.35167353018510622 -3
		-5.6741721427161011e-017 0.49734147591540162 -3
		-0.35167353018510644 0.35167353018510644 -3
		;
createNode transform -n "BasicRope:RopeCTRLGrp3" -p "BasicRope:godNode";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-017 -2 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-017 -2 ;
	setAttr ".smd" 7;
createNode transform -n "BasicRope:ropeCTRL3" -p "BasicRope:RopeCTRLGrp3";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 -2 ;
	setAttr ".sp" -type "double3" 0 0 -2 ;
	setAttr ".hdl" -type "double3" 0 0 -2 ;
	setAttr ".dh" yes;
createNode nurbsCurve -n "BasicRope:ropeCTRLShape3" -p "BasicRope:ropeCTRL3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35167353018510678 0.35167353018510622 -2
		-5.6741721427161011e-017 0.49734147591540162 -2
		-0.35167353018510644 0.35167353018510644 -2
		-0.49734147591540162 1.5501537371188569e-016 -2
		-0.35167353018510655 -0.35167353018510639 -2
		-1.6747167342594726e-016 -0.49734147591540173 -2
		0.35167353018510628 -0.3516735301851065 -2
		0.49734147591540162 -2.671220711384398e-016 -2
		0.35167353018510678 0.35167353018510622 -2
		-5.6741721427161011e-017 0.49734147591540162 -2
		-0.35167353018510644 0.35167353018510644 -2
		;
createNode transform -n "BasicRope:RopeCTRLGrp4" -p "BasicRope:godNode";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-017 -1 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-017 -1 ;
	setAttr ".smd" 7;
createNode transform -n "BasicRope:ropeCTRL4" -p "BasicRope:RopeCTRLGrp4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 -1 ;
	setAttr ".sp" -type "double3" 0 0 -1 ;
	setAttr ".hdl" -type "double3" 0 0 -1 ;
	setAttr ".dh" yes;
createNode nurbsCurve -n "BasicRope:ropeCTRLShape4" -p "BasicRope:ropeCTRL4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35167353018510678 0.35167353018510622 -1
		-5.6741721427161011e-017 0.49734147591540162 -1
		-0.35167353018510644 0.35167353018510644 -1
		-0.49734147591540162 1.5501537371188569e-016 -1
		-0.35167353018510655 -0.35167353018510639 -0.99999999999999989
		-1.6747167342594726e-016 -0.49734147591540173 -0.99999999999999989
		0.35167353018510628 -0.3516735301851065 -0.99999999999999989
		0.49734147591540162 -2.671220711384398e-016 -1
		0.35167353018510678 0.35167353018510622 -1
		-5.6741721427161011e-017 0.49734147591540162 -1
		-0.35167353018510644 0.35167353018510644 -1
		;
createNode transform -n "BasicRope:RopeCTRLGrp5" -p "BasicRope:godNode";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-017 6.1629758220391547e-033 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-017 6.1629758220391547e-033 ;
	setAttr ".smd" 7;
createNode transform -n "BasicRope:ropeCTRL5" -p "BasicRope:RopeCTRLGrp5";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 7.5472193501228375e-049 0 -9.2423727698516196e-065 ;
	setAttr ".sp" -type "double3" 7.5472193501228375e-049 0 -9.2423727698516196e-065 ;
	setAttr ".hdl" -type "double3" 7.5472193501228375e-049 0 -9.2423727698516196e-065 ;
	setAttr ".dh" yes;
createNode nurbsCurve -n "BasicRope:ropeCTRLShape5" -p "BasicRope:ropeCTRL5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35167353018510678 0.35167353018510622 -5.6554128095751661e-017
		-5.6741721427161011e-017 0.49734147591540162 -7.997961496119734e-017
		-0.35167353018510644 0.35167353018510644 -5.6554128095751686e-017
		-0.49734147591540162 1.5501537371188569e-016 -2.4928686833775468e-032
		-0.35167353018510655 -0.35167353018510639 5.6554128095751674e-017
		-1.6747167342594726e-016 -0.49734147591540173 7.9979614961197352e-017
		0.35167353018510628 -0.3516735301851065 5.6554128095751698e-017
		0.49734147591540162 -2.671220711384398e-016 4.2957045474574655e-032
		0.35167353018510678 0.35167353018510622 -5.6554128095751661e-017
		-5.6741721427161011e-017 0.49734147591540162 -7.997961496119734e-017
		-0.35167353018510644 0.35167353018510644 -5.6554128095751686e-017
		;
createNode transform -n "BasicRope:RopeCTRLGrp6" -p "BasicRope:godNode";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-017 1 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-017 1 ;
	setAttr ".smd" 7;
createNode transform -n "BasicRope:ropeCTRL6" -p "BasicRope:RopeCTRLGrp6";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 1 ;
	setAttr ".sp" -type "double3" 0 0 1 ;
	setAttr ".hdl" -type "double3" 0 0 1 ;
	setAttr ".dh" yes;
createNode nurbsCurve -n "BasicRope:ropeCTRLShape6" -p "BasicRope:ropeCTRL6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35167353018510678 0.35167353018510622 0.99999999999999989
		-5.6741721427161011e-017 0.49734147591540162 0.99999999999999989
		-0.35167353018510644 0.35167353018510644 0.99999999999999989
		-0.49734147591540162 1.5501537371188569e-016 1
		-0.35167353018510655 -0.35167353018510639 1
		-1.6747167342594726e-016 -0.49734147591540173 1
		0.35167353018510628 -0.3516735301851065 1
		0.49734147591540162 -2.671220711384398e-016 1
		0.35167353018510678 0.35167353018510622 0.99999999999999989
		-5.6741721427161011e-017 0.49734147591540162 0.99999999999999989
		-0.35167353018510644 0.35167353018510644 0.99999999999999989
		;
createNode transform -n "BasicRope:RopeCTRLGrp7" -p "BasicRope:godNode";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-017 2 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-017 2 ;
	setAttr ".smd" 7;
createNode transform -n "BasicRope:ropeCTRL7" -p "BasicRope:RopeCTRLGrp7";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 4.9303806576313238e-032 0 2 ;
	setAttr ".sp" -type "double3" 4.9303806576313238e-032 0 2 ;
	setAttr ".hdl" -type "double3" 4.9303806576313238e-032 0 2 ;
	setAttr ".dh" yes;
createNode nurbsCurve -n "BasicRope:ropeCTRLShape7" -p "BasicRope:ropeCTRL7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35167353018510678 0.35167353018510622 2
		-5.6741721427161011e-017 0.49734147591540162 2
		-0.35167353018510644 0.35167353018510644 2
		-0.49734147591540162 1.5501537371188569e-016 2
		-0.35167353018510655 -0.35167353018510639 2
		-1.6747167342594726e-016 -0.49734147591540173 2
		0.35167353018510628 -0.3516735301851065 2
		0.49734147591540162 -2.671220711384398e-016 2
		0.35167353018510678 0.35167353018510622 2
		-5.6741721427161011e-017 0.49734147591540162 2
		-0.35167353018510644 0.35167353018510644 2
		;
createNode transform -n "BasicRope:RopeCTRLGrp8" -p "BasicRope:godNode";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-017 3 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-017 3 ;
	setAttr ".smd" 7;
createNode transform -n "BasicRope:ropeCTRL8" -p "BasicRope:RopeCTRLGrp8";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -4.9303806576313238e-032 0 3 ;
	setAttr ".sp" -type "double3" -4.9303806576313238e-032 0 3 ;
	setAttr ".hdl" -type "double3" -4.9303806576313238e-032 0 3 ;
	setAttr ".dh" yes;
createNode nurbsCurve -n "BasicRope:ropeCTRLShape8" -p "BasicRope:ropeCTRL8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35167353018510678 0.35167353018510622 3
		-5.6741721427161011e-017 0.49734147591540162 3
		-0.35167353018510644 0.35167353018510644 3
		-0.49734147591540162 1.5501537371188569e-016 3
		-0.35167353018510655 -0.35167353018510639 3
		-1.6747167342594726e-016 -0.49734147591540173 3
		0.35167353018510628 -0.3516735301851065 3
		0.49734147591540162 -2.671220711384398e-016 3
		0.35167353018510678 0.35167353018510622 3
		-5.6741721427161011e-017 0.49734147591540162 3
		-0.35167353018510644 0.35167353018510644 3
		;
createNode transform -n "BasicRope:RopeCTRLGrp9" -p "BasicRope:godNode";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-017 4 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-017 4 ;
	setAttr ".smd" 7;
createNode transform -n "BasicRope:ropeCTRL9" -p "BasicRope:RopeCTRLGrp9";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 4 ;
	setAttr ".sp" -type "double3" 0 0 4 ;
	setAttr ".hdl" -type "double3" 0 0 4 ;
	setAttr ".dh" yes;
createNode nurbsCurve -n "BasicRope:ropeCTRLShape9" -p "BasicRope:ropeCTRL9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.35167353018510678 0.35167353018510622 4
		-5.6741721427161011e-017 0.49734147591540162 4
		-0.35167353018510644 0.35167353018510644 4
		-0.49734147591540162 1.5501537371188569e-016 4
		-0.35167353018510655 -0.35167353018510639 4
		-1.6747167342594726e-016 -0.49734147591540173 4
		0.35167353018510628 -0.3516735301851065 4
		0.49734147591540162 -2.671220711384398e-016 4
		0.35167353018510678 0.35167353018510622 4
		-5.6741721427161011e-017 0.49734147591540162 4
		-0.35167353018510644 0.35167353018510644 4
		;
createNode transform -n "BasicRope:path_curve" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "BasicRope:path_curveShape" -p "BasicRope:path_curve";
	setAttr -k off ".v";
	setAttr -s 22 ".iog[0].og";
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "BasicRope:path_curveShape1Orig" -p "BasicRope:path_curve";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 8
		2
		0 0 4
		0 0 -4
		;
createNode nurbsCurve -n "BasicRope:path_curveShapeOrig" -p "BasicRope:path_curve";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		0 0 4
		0 0 3.6666666628538378
		0 0 3.0000000032489975
		0 0 1.9999999984349071
		0 0 1.000000000644532
		0 0 -1.053979120721545e-015
		0 0 -1.00000000064453
		0 0 -1.9999999984349104
		0 0 -3.0000000032489944
		0 0 -3.66666666285384
		0 0 -4
		;
createNode pointEmitter -n "BasicRope:Lock" -p "BasicRope:path_curve";
	setAttr ".sro" no;
	setAttr -l on ".urpp";
createNode transform -n "BasicRope:PathDefClstr1" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0 -4 ;
	setAttr ".sp" -type "double3" 0 0 -4 ;
createNode clusterHandle -n "BasicRope:PathDefClstr1Shape" -p "BasicRope:PathDefClstr1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".or" -type "double3" 0 0 -3.8333333314269202 ;
createNode pointConstraint -n "BasicRope:cluster3Handle_pointConstraint1" -p "BasicRope:PathDefClstr1";
	addAttr -ci true -sn "w0" -ln "nurbsCircle5W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 5.5511151231257827e-017 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "BasicRope:cluster3Handle_orientConstraint1" -p "BasicRope:PathDefClstr1";
	addAttr -ci true -sn "w0" -ln "nurbsCircle5W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 0 ;
	setAttr ".o" -type "double3" 7.0195835743237771e-015 180 0 ;
	setAttr ".rsrr" -type "double3" 0 360 0 ;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:PathDefClstr2" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0 -3.0000000032489944 ;
	setAttr ".sp" -type "double3" 0 0 -3.0000000032489944 ;
createNode clusterHandle -n "BasicRope:PathDefClstr2Shape" -p "BasicRope:PathDefClstr2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".or" -type "double3" 0 0 -3.0000000032489944 ;
createNode pointConstraint -n "BasicRope:cluster4Handle_pointConstraint1" -p "BasicRope:PathDefClstr2";
	addAttr -ci true -sn "w0" -ln "nurbsCircle4W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 5.5511151231257827e-017 2.5678024151432055e-009 ;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:PathDefClstr3" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0 -1.9999999984349104 ;
	setAttr ".sp" -type "double3" 0 0 -1.9999999984349104 ;
createNode clusterHandle -n "BasicRope:PathDefClstr3Shape" -p "BasicRope:PathDefClstr3";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".or" -type "double3" 0 0 -1.9999999984349104 ;
createNode pointConstraint -n "BasicRope:cluster5Handle_pointConstraint1" -p "BasicRope:PathDefClstr3";
	addAttr -ci true -sn "w0" -ln "nurbsCircle3W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 5.5511151231257827e-017 -1.1706176028525306e-009 ;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:PathDefClstr4" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0 -1.00000000064453 ;
	setAttr ".sp" -type "double3" 0 0 -1.00000000064453 ;
createNode clusterHandle -n "BasicRope:PathDefClstr4Shape" -p "BasicRope:PathDefClstr4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".or" -type "double3" 0 0 -1.00000000064453 ;
createNode pointConstraint -n "BasicRope:cluster6Handle_pointConstraint1" -p "BasicRope:PathDefClstr4";
	addAttr -ci true -sn "w0" -ln "nurbsCircle2W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 5.5511151231257827e-017 4.7569126415680785e-010 ;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:PathDefClstr5" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0 -1.053979120721545e-015 ;
	setAttr ".sp" -type "double3" 0 0 -1.053979120721545e-015 ;
createNode clusterHandle -n "BasicRope:PathDefClstr5Shape" -p "BasicRope:PathDefClstr5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".or" -type "double3" 0 0 -1.053979120721545e-015 ;
createNode pointConstraint -n "BasicRope:cluster7Handle_pointConstraint1" -p "BasicRope:PathDefClstr5";
	addAttr -ci true -sn "w0" -ln "nurbsCircle1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.5094438700245675e-048 5.5511151231257827e-017 
		6.3764548648711132e-016 ;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:PathDefClstr6" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0 1.000000000644532 ;
	setAttr ".sp" -type "double3" 0 0 1.000000000644532 ;
createNode clusterHandle -n "BasicRope:PathDefClstr6Shape" -p "BasicRope:PathDefClstr6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".or" -type "double3" 0 0 1.000000000644532 ;
createNode pointConstraint -n "BasicRope:cluster8Handle_pointConstraint1" -p "BasicRope:PathDefClstr6";
	addAttr -ci true -sn "w0" -ln "nurbsCircle6W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 5.5511151231257827e-017 -4.7569281846904232e-010 ;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:PathDefClstr7" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0 1.9999999984349071 ;
	setAttr ".sp" -type "double3" 0 0 1.9999999984349071 ;
createNode clusterHandle -n "BasicRope:PathDefClstr7Shape" -p "BasicRope:PathDefClstr7";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".or" -type "double3" 0 0 1.9999999984349071 ;
createNode pointConstraint -n "BasicRope:cluster9Handle_pointConstraint1" -p "BasicRope:PathDefClstr7";
	addAttr -ci true -sn "w0" -ln "nurbsCircle7W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -4.9303806576313238e-032 5.5511151231257827e-017 
		1.1706191571647651e-009 ;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:PathDefClstr8" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0 3.0000000032489975 ;
	setAttr ".sp" -type "double3" 0 0 3.0000000032489975 ;
createNode clusterHandle -n "BasicRope:PathDefClstr8Shape" -p "BasicRope:PathDefClstr8";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".or" -type "double3" 0 0 3.0000000032489975 ;
createNode pointConstraint -n "BasicRope:cluster10Handle_pointConstraint1" -p "BasicRope:PathDefClstr8";
	addAttr -ci true -sn "w0" -ln "nurbsCircle8W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4.9303806576313238e-032 5.5511151231257827e-017 -2.5678046355892548e-009 ;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:PathDefClstr9" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0 4 ;
	setAttr ".sp" -type "double3" 0 0 4 ;
createNode clusterHandle -n "BasicRope:PathDefClstr9Shape" -p "BasicRope:PathDefClstr9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".or" -type "double3" 0 0 3.8333333314269189 ;
createNode pointConstraint -n "BasicRope:cluster11Handle_pointConstraint1" -p "BasicRope:PathDefClstr9";
	addAttr -ci true -sn "w0" -ln "nurbsCircle9W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 5.5511151231257827e-017 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "BasicRope:cluster11Handle_orientConstraint1" -p "BasicRope:PathDefClstr9";
	addAttr -ci true -sn "w0" -ln "nurbsCircle9W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 180 0 ;
	setAttr ".o" -type "double3" 7.0195835743237771e-015 180 0 ;
	setAttr ".rsrr" -type "double3" 0 360 0 ;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:RopeCTRLGrp" -p "BasicRope:godNode";
createNode transform -n "BasicRope:RopeEndB" -p "BasicRope:RopeCTRLGrp";
	addAttr -ci true -sn "ThickB" -ln "ThickB" -dv 1 -min 0 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 -4 ;
	setAttr ".sp" -type "double3" 0 0 -4 ;
	setAttr -k on ".ThickB";
createNode nurbsCurve -n "BasicRope:RopeEndBShape" -p "BasicRope:RopeEndB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 22 1 no 3
		27 0 0 0 1 2 3 4 4 4 5 6 7 8 8 8 9 10 11 12 12 12 13 14 15 16 16 16
		25
		9.5961577477086953e-017 3.1108867720261781e-017 -5
		0.25512228824339328 -1.1796119636642288e-016 -5
		0.78665241825139853 -1.3236337024019038e-016 -4.7836116248912246
		1.1066737908743007 -8.3266726846886741e-017 -4
		0.7866524182513992 -1.5265566588595902e-016 -4
		0.25512228824339367 -2.0122792321330962e-016 -4
		1.7399673366363375e-016 1.6804838495427943e-017 -4
		2.0236529968262605e-016 0.25512228824339367 -4
		3.273275913099114e-016 0.78665241825139898 -4
		3.2899767152245757e-016 1.1066737908743007 -4
		1.330385620005089e-016 0.78665241825139831 -4.7836116248912246
		-4.7434880858034205e-017 0.25512228824339306 -5
		-2.5315347264529309e-016 -1.2608302744794429e-016 -5
		-0.25512228824339328 -1.8158852056403496e-016 -5
		-0.78665241825139853 2.3004770872486751e-016 -4.7836116248912246
		-1.1066737908743007 7.1025259178936489e-016 -4
		-0.78665241825139898 5.9833347169790385e-016 -4
		-0.25512228824339361 2.9025626490165664e-016 -4
		-1.739967336636337e-016 -1.6804838495427844e-017 -4
		5.2553074969958056e-017 -0.25512228824339361 -4
		4.5869607309787419e-016 -0.78665241825139931 -4
		7.7679157951761112e-016 -1.1066737908743007 -3.9999999999999996
		6.5298510240727638e-016 -0.78665241825139876 -4.7836116248912246
		3.023532555106182e-016 -0.2551222882433935 -5
		2.5315347264529319e-016 -3.1800618240211805e-016 -5
		;
createNode transform -n "BasicRope:RopeEndA" -p "BasicRope:RopeCTRLGrp";
	addAttr -ci true -sn "ThickA" -ln "ThickA" -dv 1 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "Twist" -ln "Twist" -min -720 -max 720 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 4 ;
	setAttr ".sp" -type "double3" 0 0 4 ;
	setAttr -k on ".ThickA";
	setAttr -k on ".Twist" 720;
createNode nurbsCurve -n "BasicRope:RopeEndAShape" -p "BasicRope:RopeEndA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 22 1 no 3
		27 0 0 0 1 2 3 4 4 4 5 6 7 8 8 8 9 10 11 12 12 12 13 14 15 16 16 16
		25
		9.5961577477086953e-017 -4.7519807757032445e-016 5
		0.25512228824339328 -3.2612801348363973e-016 5
		0.78665241825139853 -2.1563009708707712e-016 4.7836116248912246
		1.1066737908743007 8.3266726846886741e-017 4
		0.7866524182513992 1.5265566588595902e-016 4
		0.25512228824339367 2.0122792321330962e-016 4
		1.7399673366363375e-016 -1.6804838495427943e-017 4
		2.0236529968262605e-016 -0.25512228824339367 4
		3.273275913099114e-016 -0.78665241825139898 4
		3.2899767152245757e-016 -1.1066737908743007 3.9999999999999996
		1.330385620005089e-016 -0.78665241825139876 4.7836116248912246
		-4.7434880858034205e-017 -0.2551222882433935 5
		-2.5315347264529309e-016 -3.1800618240211835e-016 5
		-0.25512228824339328 -2.6250068928602763e-016 5
		-0.78665241825139853 -5.7804117605213496e-016 4.7836116248912246
		-1.1066737908743007 -7.1025259178936489e-016 4
		-0.78665241825139898 -5.9833347169790385e-016 4
		-0.25512228824339361 -2.9025626490165664e-016 4
		-1.739967336636337e-016 1.6804838495427844e-017 4
		5.2553074969958056e-017 0.25512228824339361 4
		4.5869607309787419e-016 0.78665241825139931 4
		7.7679157951761112e-016 1.1066737908743007 4
		6.5298510240727638e-016 0.78665241825139831 4.7836116248912246
		3.023532555106182e-016 0.25512228824339306 5
		2.5315347264529319e-016 -1.2608302744794456e-016 5
		;
createNode transform -n "BasicRope:Profile_Curve" -p "BasicRope:godNode";
	setAttr -l on ".v" no;
createNode nurbsCurve -n "BasicRope:Profile_CurveShape" -p "BasicRope:Profile_Curve";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.50746819043149527 -0.27614343445972905 
		0.78361162489122438 8.1878834268399709e-017 -0.39052579017323491 1.1081941875543886 
		0.50746819043149527 -0.27614343445972922 0.78361162489122438 0.71766839738115284 
		-1.2172220544528038e-016 3.4541083832369599e-016 0.50746819043149527 0.27614343445972922 
		-0.78361162489122471 2.416631897694045e-016 0.39052579017323491 -1.108194187554389 
		-0.50746819043149483 0.27614343445972944 -0.78361162489122471 -0.71766839738115284 
		2.0975137396703876e-016 -5.9521101886435661e-016 0 0 0 0 0 0 0 0 0;
createNode pointConstraint -n "BasicRope:nurbsCircle1_pointConstraint1" -p "BasicRope:Profile_Curve";
	addAttr -ci true -sn "w0" -ln "LockW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 5.5511151231257827e-017 4 ;
	setAttr -k on ".w0";
createNode tangentConstraint -n "BasicRope:nurbsCircle1_tangentConstraint1" -p "BasicRope:Profile_Curve";
	addAttr -ci true -sn "w0" -ln "path_curveW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".rsrr" -type "double3" 0 179.99999999999997 0 ;
	setAttr -k on ".w0";
createNode transform -n "BasicRope:RopeMsh" -p "BasicRope:godNode";
createNode nurbsSurface -n "BasicRope:RopeMshShape" -p "BasicRope:RopeMsh";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".dvu" 1;
	setAttr ".dvv" 1;
	setAttr ".cpr" 7;
	setAttr ".cps" 2;
createNode lightLinker -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 14 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	setAttr ".outp" -type "string" "I:/Renders/Episode103";
createNode mentalrayOptions -s -n "miDefaultOptions";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 2;
	setAttr ".rflr" 0;
	setAttr ".rfrr" 0;
	setAttr ".maxr" 2;
	setAttr ".cb" yes;
	setAttr ".ecc" no;
	setAttr ".ci" yes;
	setAttr ".cm" yes;
	setAttr ".cl" yes;
	setAttr ".ecd" no;
	setAttr ".cn" 20;
	setAttr ".euv" no;
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	setAttr ".cs" 8;
	setAttr ".cf" 2;
createNode mentalrayOptions -s -n "Draft";
	setAttr ".maxr" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	setAttr ".maxr" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "DraftRapidMotion";
	setAttr ".scan" 3;
	setAttr ".rapc" 1;
	setAttr ".raps" 0.25;
	setAttr ".maxr" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "Preview";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewRapidMotion";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 4;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewCaustics";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".ca" yes;
	setAttr ".cc" 1;
	setAttr ".cr" 1;
createNode mentalrayOptions -s -n "PreviewGlobalIllum";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".gi" yes;
	setAttr ".gc" 1;
	setAttr ".gr" 1;
createNode mentalrayOptions -s -n "PreviewFinalGather";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".fg" yes;
createNode mentalrayOptions -s -n "Production";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".scan" 3;
	setAttr ".rapc" 8;
	setAttr ".raps" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "PreviewFur";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.059999998658895493;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" yes;
createNode script -n "BasicRope:uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 0\n                -planes 0\n                -lights 1\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 0\n                -manipulators 1\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 0\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 0\n            -planes 0\n            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 0\n            -manipulators 1\n            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 0\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 0\n                -subdivSurfaces 0\n                -planes 0\n                -lights 0\n                -cameras 0\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 0\n                -ikHandles 0\n                -deformers 0\n                -dynamics 0\n                -fluids 0\n                -hairSystems 0\n                -follicles 0\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 0\n                -manipulators 1\n                -dimensions 0\n                -handles 0\n                -pivots 0\n                -textures 0\n                -strokes 0\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 0\n            -subdivSurfaces 0\n            -planes 0\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 0\n            -ikHandles 0\n            -deformers 0\n            -dynamics 0\n            -fluids 0\n            -hairSystems 0\n            -follicles 0\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 0\n            -manipulators 1\n"
		+ "            -dimensions 0\n            -handles 0\n            -pivots 0\n            -textures 0\n            -strokes 0\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n"
		+ "                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -autoExpand 0\n            -showDagOnly 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render Window Panel 1\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render Window Panel 1\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render Window Panel 1\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" (localizedPanelLabel(\"Web Browser\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n"
		+ "                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Model Panel5\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n"
		+ "                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Model Panel5\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n"
		+ "            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 0\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 0\\n    -manipulators 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 0\\n    -subdivSurfaces 0\\n    -planes 0\\n    -lights 0\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 0\\n    -dynamics 0\\n    -fluids 0\\n    -hairSystems 0\\n    -follicles 0\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 0\\n    -manipulators 1\\n    -dimensions 0\\n    -handles 0\\n    -pivots 0\\n    -textures 0\\n    -strokes 0\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n}\n");
	setAttr ".st" 3;
createNode script -n "BasicRope:sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 160 ";
	setAttr ".st" 6;
createNode renderGlobals -s -n "inkworksRenderGlobals";
	addAttr -ci true -sn "bb" -ln "blendBackgr" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rm" -ln "renderMode" -at "short";
	addAttr -ci true -sn "as" -ln "adaptiveSubdv" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "twos" -ln "twoSided" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "oiw" -ln "onlyIW" -min 0 -max 1 -at "bool";
createNode renderGlobals -s -n "inkPaintRenderGlobals";
	addAttr -ci true -sn "regMode" -ln "regionMode" -at "short";
	addAttr -ci true -sn "dpi" -ln "dpiValue" -dv 100 -at "short";
createNode partition -n "BasicRope:mtorPartition";
	addAttr -ci true -sn "inmsg" -ln "inmessage" -bt "UNKN" -at "message";
	addAttr -ci true -sn "rmd" -ln "rmanData" -bt "UNKN" -dt "string";
	addAttr -ci true -sn "sd" -ln "slimData" -bt "UNKN" -dt "string";
	setAttr ".rmd" -type "string" (
		"  RManControls {\n\tRIBFormat ascii\n\tRIBGen immediate\n\talfEnvKey {}\n\talfNRMMax 3\n\talfNRMMin 1\n\talfPause 0\n\talfSvc {}\n\talfTag {}\n\tanimFPS 24\n\tbackPlane 0\n\tbinaryDice 0\n\tblurCamera 0\n\tblurSubframe 0\n\tcamName perspShape\n\tcomputeBy 1\n\tcomputeLocation local\n\tcomputeOrder counting\n\tcomputeStart 1\n\tcomputeStop 24\n\tcomputedMaps use\n\tcontextString {}\n\tconvertTextures 1\n\tcropWinXMax 1\n\tcropWinXMin 0\n\tcropWinYMax 1\n\tcropWinYMin 0\n\tcustomImageSvc {}\n\tcustomImageTag {}\n\tcustomImager {}\n\tcustomRenderSvc {}\n\tcustomRenderTag {}\n\tcustomRenderer notepad\n\tdoAnim 0\n\tdoCrop 0\n\tdoDOF 0\n\tdoMotionBlur 0\n\tdofUseLookat 0\n\tdspyBucketX 0\n\tdspyBucketY 0\n\tdspyFormatX 640\n\tdspyFormatY 480\n\tdspyGain 1\n\tdspyGamma 1\n\tdspyGrid 0\n\tdspyName untitled\n\tdspyQuantizeDither .5\n\tdspyQuantizeMax 255\n\tdspyQuantizeMin 0\n\tdspyQuantizeMode none\n\tdspyQuantizeOne 255\n\tdspyServer it\n\tdspyServerMode rgba\n\tdspyUnique 1\n\teyeSplits 0\n\tfilterWidthX 3\n\tfilterWidthY 3\n\tfrontPlane 0\n\thider standard\n\timager none\n\tirradianceFileMode ignore\n\tirradianceHandle {[irradiancecache global]}\n"
		+ "\tirradianceMaxError -1\n\tirradianceMaxPixelDist -1\n\tjitter 1\n\tjobChunkSize subframe\n\tjobCleanup {rib map tex}\n\tlazyCompute off\n\tlightsOnly 0\n\tmotionFactor 1\n\tobjectsOnly 0\n\tphotonCausticMap {}\n\tphotonEstimator 50\n\tphotonGlobalMap {}\n\tphotonShadingModel matte\n\tpixelFilter catmull-rom\n\tpixelRatio 1\n\tpixelSamplesX 3\n\tpixelSamplesY 3\n\trayTrace 0\n\treferenceFrame 0\n\trenderer render\n\tselectedSet {}\n\tsequenceStart 1\n\tsequenceStop 100\n\tshadingInterp 1\n\tshadingRate 5\n\tshadowBias 0\n\tshutterAngle 90\n\tshutterConfig moving\n\tshutterTiming frameOpen\n\tsuperframeCount 5\n\ttraceBias 0.05\n\ttraceBreadthSampleFactor 1\n\ttraceDepthSampleFactor 1\n\ttraceDisplacements 0\n\ttraceMaxDepth 10\n\ttraceMaxDiffuseDepth 1\n\ttraceMaxSpecularDepth 2\n\ttraceSampleMotion 0\n\ttraceSpecularThreshold 10\n\tzealousCaching 0\n  }");
	setAttr ".sd" -type "string" "slim 1 TOR slim {\n}\n";
createNode hyperView -n "BasicRope:hyperView1";
	setAttr ".vl" -type "double2" 616.6 -600.27123287671202 ;
	setAttr ".vh" -type "double2" 1364.5999999999999 175.72876712328795 ;
	setAttr ".dag" no;
createNode partition -n "BasicRope:templateControls_mtorPartition";
	addAttr -ci true -sn "inmsg" -ln "inmessage" -bt "UNKN" -at "message";
	addAttr -ci true -sn "rmd" -ln "rmanData" -bt "UNKN" -dt "string";
	addAttr -ci true -sn "sd" -ln "slimData" -bt "UNKN" -dt "string";
	setAttr ".rmd" -type "string" (
		"  RManControls {\n\tRIBFormat ascii\n\tRIBGen immediate\n\talfEnvKey {}\n\talfNRMMax 3\n\talfNRMMin 1\n\talfPause 0\n\talfSvc {}\n\talfTag {}\n\tanimFPS 24\n\tbackPlane 0\n\tbinaryDice 0\n\tblurCamera 0\n\tblurSubframe 0\n\tcamName perspShape\n\tcomputeBy 1\n\tcomputeLocation local\n\tcomputeOrder counting\n\tcomputeStart 1\n\tcomputeStop 24\n\tcomputedMaps use\n\tcontextString {}\n\tconvertTextures 1\n\tcropWinXMax 1\n\tcropWinXMin 0\n\tcropWinYMax 1\n\tcropWinYMin 0\n\tcustomImageSvc {}\n\tcustomImageTag {}\n\tcustomImager {}\n\tcustomRenderSvc {}\n\tcustomRenderTag {}\n\tcustomRenderer notepad\n\tdoAnim 0\n\tdoCrop 0\n\tdoDOF 0\n\tdoMotionBlur 0\n\tdofUseLookat 0\n\tdspyBucketX 0\n\tdspyBucketY 0\n\tdspyFormatX 640\n\tdspyFormatY 480\n\tdspyGain 1\n\tdspyGamma 1\n\tdspyGrid 0\n\tdspyName untitled\n\tdspyQuantizeDither .5\n\tdspyQuantizeMax 255\n\tdspyQuantizeMin 0\n\tdspyQuantizeMode none\n\tdspyQuantizeOne 255\n\tdspyServer it\n\tdspyServerMode rgba\n\tdspyUnique 1\n\teyeSplits 0\n\tfilterWidthX 3\n\tfilterWidthY 3\n\tfrontPlane 0\n\thider standard\n\timager none\n\tirradianceFileMode ignore\n\tirradianceHandle {[irradiancecache global]}\n"
		+ "\tirradianceMaxError -1\n\tirradianceMaxPixelDist -1\n\tjitter 1\n\tjobChunkSize subframe\n\tjobCleanup {rib map tex}\n\tlazyCompute off\n\tlightsOnly 0\n\tmotionFactor 1\n\tobjectsOnly 0\n\tphotonCausticMap {}\n\tphotonEstimator 50\n\tphotonGlobalMap {}\n\tphotonShadingModel matte\n\tpixelFilter catmull-rom\n\tpixelRatio 1\n\tpixelSamplesX 3\n\tpixelSamplesY 3\n\trayTrace 0\n\treferenceFrame 0\n\trenderer render\n\tselectedSet {}\n\tsequenceStart 1\n\tsequenceStop 100\n\tshadingInterp 1\n\tshadingRate 5\n\tshadowBias 0\n\tshutterAngle 90\n\tshutterConfig moving\n\tshutterTiming frameOpen\n\tsuperframeCount 5\n\ttraceBias 0.05\n\ttraceBreadthSampleFactor 1\n\ttraceDepthSampleFactor 1\n\ttraceDisplacements 0\n\ttraceMaxDepth 10\n\ttraceMaxDiffuseDepth 1\n\ttraceMaxSpecularDepth 2\n\ttraceSampleMotion 0\n\ttraceSpecularThreshold 10\n\tzealousCaching 0\n  }");
	setAttr ".sd" -type "string" "slim 1 TOR slim {\n}\n";
createNode hyperView -n "BasicRope:templateControls_hyperView1";
	setAttr ".vl" -type "double2" 616.6 -600.27123287671202 ;
	setAttr ".vh" -type "double2" 1364.5999999999999 175.72876712328795 ;
	setAttr ".dag" no;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOff";
	setAttr ".splck" no;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".ray" no;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOn";
	setAttr ".splck" no;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 3;
	setAttr ".shrd" 1;
createNode checker -n "BasicRope:checker1";
	setAttr ".bnm" -type "string" "ed";
	setAttr ".c2" -type "float3" 0.72799999 0.72799999 0.72799999 ;
createNode cluster -n "BasicRope:baseClstrACluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "BasicRope:tweak1";
createNode objectSet -n "BasicRope:cluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:cluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:cluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode objectSet -n "BasicRope:tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "BasicRope:baseClstrBCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "BasicRope:cluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:cluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:cluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode rebuildCurve -n "BasicRope:rebuildCurve1";
	setAttr ".s" 8;
	setAttr ".end" 1;
	setAttr ".kt" no;
createNode motionPath -n "BasicRope:motionPath1";
	setAttr -av ".u" 1;
	setAttr ".f" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "BasicRope:addDoubleLinear1";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear2";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear3";
createNode motionPath -n "BasicRope:motionPath2";
	setAttr -av ".u" 0.875;
	setAttr ".f" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "BasicRope:addDoubleLinear4";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear5";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear6";
createNode motionPath -n "BasicRope:motionPath3";
	setAttr -av ".u" 0.75;
	setAttr ".f" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "BasicRope:addDoubleLinear7";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear8";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear9";
createNode motionPath -n "BasicRope:motionPath4";
	setAttr -av ".u" 0.625;
	setAttr ".f" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "BasicRope:addDoubleLinear10";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear11";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear12";
createNode motionPath -n "BasicRope:motionPath5";
	setAttr -av ".u" 0.5;
	setAttr ".f" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "BasicRope:addDoubleLinear13";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear14";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear15";
createNode motionPath -n "BasicRope:motionPath6";
	setAttr -av ".u" 0.375;
	setAttr ".f" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "BasicRope:addDoubleLinear16";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear17";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear18";
createNode motionPath -n "BasicRope:motionPath7";
	setAttr -av ".u" 0.25;
	setAttr ".f" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "BasicRope:addDoubleLinear19";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear20";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear21";
createNode motionPath -n "BasicRope:motionPath8";
	setAttr -av ".u" 0.125;
	setAttr ".f" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "BasicRope:addDoubleLinear22";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear23";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear24";
createNode motionPath -n "BasicRope:motionPath9";
	setAttr ".f" yes;
	setAttr ".fa" 2;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "BasicRope:addDoubleLinear25";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear26";
createNode addDoubleLinear -n "BasicRope:addDoubleLinear27";
createNode cluster -n "BasicRope:PathDefClstr1Cluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "BasicRope:tweak2";
createNode objectSet -n "BasicRope:cluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:cluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:cluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[9:10]";
createNode objectSet -n "BasicRope:tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "BasicRope:PathDefClstr2Cluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "BasicRope:cluster4Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:cluster4GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:cluster4GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[8]";
createNode cluster -n "BasicRope:PathDefClstr3Cluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "BasicRope:cluster5Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:cluster5GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:cluster5GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[7]";
createNode cluster -n "BasicRope:PathDefClstr4Cluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "BasicRope:cluster6Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:cluster6GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:cluster6GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[6]";
createNode cluster -n "BasicRope:PathDefClstr5Cluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "BasicRope:cluster7Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:cluster7GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:cluster7GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[5]";
createNode cluster -n "BasicRope:PathDefClstr6Cluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "BasicRope:cluster8Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:cluster8GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:cluster8GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[4]";
createNode cluster -n "BasicRope:PathDefClstr7Cluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "BasicRope:cluster9Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:cluster9GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:cluster9GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[3]";
createNode cluster -n "BasicRope:PathDefClstr8Cluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "BasicRope:cluster10Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:cluster10GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:cluster10GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[2]";
createNode cluster -n "BasicRope:PathDefClstr9Cluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "BasicRope:cluster11Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "BasicRope:cluster11GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:cluster11GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1]";
createNode geoConnector -n "BasicRope:geoConnector1";
createNode objectSet -n "BasicRope:Lockset";
	setAttr ".ihi" 0;
createNode groupId -n "BasicRope:groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "BasicRope:groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode makeNurbCircle -n "BasicRope:makeNurbCircle1";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode extrude -n "BasicRope:extrude1";
	setAttr ".p" -type "double3" 0 5.5511151231257827e-017 4 ;
	setAttr ".rsp" yes;
createNode unitConversion -n "BasicRope:unitConversion1";
	setAttr ".cf" 0.017453292519943295;
createNode blinn -n "blinn1";
	setAttr ".bnm" -type "string" "ed";
	setAttr ".ic" -type "float3" 0.35538 0.35538 0.35538 ;
	setAttr ".tcf" 0;
	setAttr ".trsd" 0.05000000074505806;
createNode shadingEngine -n "blinn1SG";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode reverseSurface -n "reverseSurface1";
	setAttr ".d" 3;
createNode checker -n "checker1";
	setAttr ".bnm" -type "string" "ed";
	setAttr ".c1" -type "float3" 0.43801999 0.43801999 0.43801999 ;
	setAttr ".c2" -type "float3" 0.61984003 0.61984003 0.61984003 ;
createNode place2dTexture -n "place2dTexture1";
	setAttr ".bnm" -type "string" "ed";
	setAttr ".re" -type "float2" 0.5 10 ;
select -ne :time1;
	setAttr -l on ".o" 0;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :lambert1;
	setAttr ".miic" -type "float3" 9.8696051 9.8696051 9.8696051 ;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
	setAttr ".sdf" -type "string" "";
	setAttr ".ef" 99;
	setAttr -l on ".bfs";
	setAttr ".ofe" -type "string" "";
	setAttr ".efe" -type "string" "";
	setAttr ".oft" -type "string" "";
	setAttr ".pff" yes;
	setAttr ".ifp" -type "string" "EDHair";
	setAttr -l on ".mb";
	setAttr -k on ".mbf";
	setAttr -l on ".afp";
	setAttr ".prm" -type "string" "";
	setAttr ".pom" -type "string" "";
	setAttr ".pfrm" -type "string" "";
	setAttr ".pfom" -type "string" "";
	setAttr ".hbl" -type "string" "ed";
select -ne :defaultRenderQuality;
	setAttr ".rfl" 10;
	setAttr ".rfr" 10;
	setAttr ".sl" 10;
	setAttr ".eaa" 0;
	setAttr ".ufil" yes;
	setAttr ".ss" 2;
	setAttr ".rct" 0.20000000298023224;
	setAttr ".gct" 0.15000000596046448;
	setAttr ".bct" 0.30000001192092896;
select -ne :defaultResolution;
	setAttr ".w" 960;
	setAttr ".h" 540;
	setAttr ".dar" 1.7769999504089355;
	setAttr ".ldar" yes;
	setAttr ".off" no;
select -ne :hardwareRenderGlobals;
	addAttr -ci true -sn "ani" -ln "animation" -bt "ANIM" -min 0 -max 1 -at "bool";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr ".enpt" no;
	setAttr ".hgcd" no;
	setAttr ".hgci" no;
	setAttr -k on ".ani";
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :hyperGraphInfo;
connectAttr "BasicRope:rebuildCurve1.oc" "BasicRope:basecurveShape1.cr";
connectAttr "BasicRope:tweak1.pl[0].cp[0]" "BasicRope:basecurveShape1.twl";
connectAttr "BasicRope:cluster1GroupId.id" "BasicRope:basecurveShape1.iog.og[0].gid"
		;
connectAttr "BasicRope:cluster1Set.mwc" "BasicRope:basecurveShape1.iog.og[0].gco"
		;
connectAttr "BasicRope:groupId2.id" "BasicRope:basecurveShape1.iog.og[1].gid";
connectAttr "BasicRope:tweakSet1.mwc" "BasicRope:basecurveShape1.iog.og[1].gco";
connectAttr "BasicRope:cluster2GroupId.id" "BasicRope:basecurveShape1.iog.og[2].gid"
		;
connectAttr "BasicRope:cluster2Set.mwc" "BasicRope:basecurveShape1.iog.og[2].gco"
		;
connectAttr "BasicRope:cluster1Handle_pointConstraint1.ctx" "BasicRope:baseClstrA.tx"
		;
connectAttr "BasicRope:cluster1Handle_pointConstraint1.cty" "BasicRope:baseClstrA.ty"
		;
connectAttr "BasicRope:cluster1Handle_pointConstraint1.ctz" "BasicRope:baseClstrA.tz"
		;
connectAttr "BasicRope:baseClstrA.pim" "BasicRope:cluster1Handle_pointConstraint1.cpim"
		;
connectAttr "BasicRope:baseClstrA.rp" "BasicRope:cluster1Handle_pointConstraint1.crp"
		;
connectAttr "BasicRope:baseClstrA.rpt" "BasicRope:cluster1Handle_pointConstraint1.crt"
		;
connectAttr "BasicRope:RopeEndA.t" "BasicRope:cluster1Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:RopeEndA.rp" "BasicRope:cluster1Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:RopeEndA.rpt" "BasicRope:cluster1Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:RopeEndA.pm" "BasicRope:cluster1Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster1Handle_pointConstraint1.w0" "BasicRope:cluster1Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:cluster2Handle_pointConstraint1.ctx" "BasicRope:baseClstrB.tx"
		;
connectAttr "BasicRope:cluster2Handle_pointConstraint1.cty" "BasicRope:baseClstrB.ty"
		;
connectAttr "BasicRope:cluster2Handle_pointConstraint1.ctz" "BasicRope:baseClstrB.tz"
		;
connectAttr "BasicRope:baseClstrB.pim" "BasicRope:cluster2Handle_pointConstraint1.cpim"
		;
connectAttr "BasicRope:baseClstrB.rp" "BasicRope:cluster2Handle_pointConstraint1.crp"
		;
connectAttr "BasicRope:baseClstrB.rpt" "BasicRope:cluster2Handle_pointConstraint1.crt"
		;
connectAttr "BasicRope:RopeEndB.t" "BasicRope:cluster2Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:RopeEndB.rp" "BasicRope:cluster2Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:RopeEndB.rpt" "BasicRope:cluster2Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:RopeEndB.pm" "BasicRope:cluster2Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster2Handle_pointConstraint1.w0" "BasicRope:cluster2Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:addDoubleLinear1.o" "BasicRope:RopeCTRLGrp1.tx" -l on;
connectAttr "BasicRope:addDoubleLinear2.o" "BasicRope:RopeCTRLGrp1.ty" -l on;
connectAttr "BasicRope:addDoubleLinear3.o" "BasicRope:RopeCTRLGrp1.tz" -l on;
connectAttr "BasicRope:motionPath1.msg" "BasicRope:RopeCTRLGrp1.sml";
connectAttr "BasicRope:motionPath1.rx" "BasicRope:RopeCTRLGrp1.rx" -l on;
connectAttr "BasicRope:motionPath1.ry" "BasicRope:RopeCTRLGrp1.ry" -l on;
connectAttr "BasicRope:motionPath1.rz" "BasicRope:RopeCTRLGrp1.rz" -l on;
connectAttr "BasicRope:motionPath1.ro" "BasicRope:RopeCTRLGrp1.ro";
connectAttr "BasicRope:addDoubleLinear4.o" "BasicRope:RopeCTRLGrp2.tx" -l on;
connectAttr "BasicRope:addDoubleLinear5.o" "BasicRope:RopeCTRLGrp2.ty" -l on;
connectAttr "BasicRope:addDoubleLinear6.o" "BasicRope:RopeCTRLGrp2.tz" -l on;
connectAttr "BasicRope:motionPath2.msg" "BasicRope:RopeCTRLGrp2.sml";
connectAttr "BasicRope:motionPath2.rx" "BasicRope:RopeCTRLGrp2.rx" -l on;
connectAttr "BasicRope:motionPath2.ry" "BasicRope:RopeCTRLGrp2.ry" -l on;
connectAttr "BasicRope:motionPath2.rz" "BasicRope:RopeCTRLGrp2.rz" -l on;
connectAttr "BasicRope:motionPath2.ro" "BasicRope:RopeCTRLGrp2.ro";
connectAttr "BasicRope:addDoubleLinear7.o" "BasicRope:RopeCTRLGrp3.tx" -l on;
connectAttr "BasicRope:addDoubleLinear8.o" "BasicRope:RopeCTRLGrp3.ty" -l on;
connectAttr "BasicRope:addDoubleLinear9.o" "BasicRope:RopeCTRLGrp3.tz" -l on;
connectAttr "BasicRope:motionPath3.msg" "BasicRope:RopeCTRLGrp3.sml";
connectAttr "BasicRope:motionPath3.rx" "BasicRope:RopeCTRLGrp3.rx" -l on;
connectAttr "BasicRope:motionPath3.ry" "BasicRope:RopeCTRLGrp3.ry" -l on;
connectAttr "BasicRope:motionPath3.rz" "BasicRope:RopeCTRLGrp3.rz" -l on;
connectAttr "BasicRope:motionPath3.ro" "BasicRope:RopeCTRLGrp3.ro";
connectAttr "BasicRope:addDoubleLinear10.o" "BasicRope:RopeCTRLGrp4.tx" -l on;
connectAttr "BasicRope:addDoubleLinear11.o" "BasicRope:RopeCTRLGrp4.ty" -l on;
connectAttr "BasicRope:addDoubleLinear12.o" "BasicRope:RopeCTRLGrp4.tz" -l on;
connectAttr "BasicRope:motionPath4.msg" "BasicRope:RopeCTRLGrp4.sml";
connectAttr "BasicRope:motionPath4.rx" "BasicRope:RopeCTRLGrp4.rx" -l on;
connectAttr "BasicRope:motionPath4.ry" "BasicRope:RopeCTRLGrp4.ry" -l on;
connectAttr "BasicRope:motionPath4.rz" "BasicRope:RopeCTRLGrp4.rz" -l on;
connectAttr "BasicRope:motionPath4.ro" "BasicRope:RopeCTRLGrp4.ro";
connectAttr "BasicRope:addDoubleLinear13.o" "BasicRope:RopeCTRLGrp5.tx" -l on;
connectAttr "BasicRope:addDoubleLinear14.o" "BasicRope:RopeCTRLGrp5.ty" -l on;
connectAttr "BasicRope:addDoubleLinear15.o" "BasicRope:RopeCTRLGrp5.tz" -l on;
connectAttr "BasicRope:motionPath5.msg" "BasicRope:RopeCTRLGrp5.sml";
connectAttr "BasicRope:motionPath5.rx" "BasicRope:RopeCTRLGrp5.rx" -l on;
connectAttr "BasicRope:motionPath5.ry" "BasicRope:RopeCTRLGrp5.ry" -l on;
connectAttr "BasicRope:motionPath5.rz" "BasicRope:RopeCTRLGrp5.rz" -l on;
connectAttr "BasicRope:motionPath5.ro" "BasicRope:RopeCTRLGrp5.ro";
connectAttr "BasicRope:addDoubleLinear16.o" "BasicRope:RopeCTRLGrp6.tx" -l on;
connectAttr "BasicRope:addDoubleLinear17.o" "BasicRope:RopeCTRLGrp6.ty" -l on;
connectAttr "BasicRope:addDoubleLinear18.o" "BasicRope:RopeCTRLGrp6.tz" -l on;
connectAttr "BasicRope:motionPath6.msg" "BasicRope:RopeCTRLGrp6.sml";
connectAttr "BasicRope:motionPath6.rx" "BasicRope:RopeCTRLGrp6.rx" -l on;
connectAttr "BasicRope:motionPath6.ry" "BasicRope:RopeCTRLGrp6.ry" -l on;
connectAttr "BasicRope:motionPath6.rz" "BasicRope:RopeCTRLGrp6.rz" -l on;
connectAttr "BasicRope:motionPath6.ro" "BasicRope:RopeCTRLGrp6.ro";
connectAttr "BasicRope:addDoubleLinear19.o" "BasicRope:RopeCTRLGrp7.tx" -l on;
connectAttr "BasicRope:addDoubleLinear20.o" "BasicRope:RopeCTRLGrp7.ty" -l on;
connectAttr "BasicRope:addDoubleLinear21.o" "BasicRope:RopeCTRLGrp7.tz" -l on;
connectAttr "BasicRope:motionPath7.msg" "BasicRope:RopeCTRLGrp7.sml";
connectAttr "BasicRope:motionPath7.rx" "BasicRope:RopeCTRLGrp7.rx" -l on;
connectAttr "BasicRope:motionPath7.ry" "BasicRope:RopeCTRLGrp7.ry" -l on;
connectAttr "BasicRope:motionPath7.rz" "BasicRope:RopeCTRLGrp7.rz" -l on;
connectAttr "BasicRope:motionPath7.ro" "BasicRope:RopeCTRLGrp7.ro";
connectAttr "BasicRope:addDoubleLinear22.o" "BasicRope:RopeCTRLGrp8.tx" -l on;
connectAttr "BasicRope:addDoubleLinear23.o" "BasicRope:RopeCTRLGrp8.ty" -l on;
connectAttr "BasicRope:addDoubleLinear24.o" "BasicRope:RopeCTRLGrp8.tz" -l on;
connectAttr "BasicRope:motionPath8.msg" "BasicRope:RopeCTRLGrp8.sml";
connectAttr "BasicRope:motionPath8.rx" "BasicRope:RopeCTRLGrp8.rx" -l on;
connectAttr "BasicRope:motionPath8.ry" "BasicRope:RopeCTRLGrp8.ry" -l on;
connectAttr "BasicRope:motionPath8.rz" "BasicRope:RopeCTRLGrp8.rz" -l on;
connectAttr "BasicRope:motionPath8.ro" "BasicRope:RopeCTRLGrp8.ro";
connectAttr "BasicRope:addDoubleLinear25.o" "BasicRope:RopeCTRLGrp9.tx" -l on;
connectAttr "BasicRope:addDoubleLinear26.o" "BasicRope:RopeCTRLGrp9.ty" -l on;
connectAttr "BasicRope:addDoubleLinear27.o" "BasicRope:RopeCTRLGrp9.tz" -l on;
connectAttr "BasicRope:motionPath9.msg" "BasicRope:RopeCTRLGrp9.sml";
connectAttr "BasicRope:motionPath9.rx" "BasicRope:RopeCTRLGrp9.rx" -l on;
connectAttr "BasicRope:motionPath9.ry" "BasicRope:RopeCTRLGrp9.ry" -l on;
connectAttr "BasicRope:motionPath9.rz" "BasicRope:RopeCTRLGrp9.rz" -l on;
connectAttr "BasicRope:motionPath9.ro" "BasicRope:RopeCTRLGrp9.ro";
connectAttr "BasicRope:groupParts5.og" "BasicRope:path_curveShape.cr";
connectAttr "BasicRope:tweak2.pl[0].cp[0]" "BasicRope:path_curveShape.twl";
connectAttr "BasicRope:cluster3GroupId.id" "BasicRope:path_curveShape.iog.og[5].gid"
		;
connectAttr "BasicRope:cluster3Set.mwc" "BasicRope:path_curveShape.iog.og[5].gco"
		;
connectAttr "BasicRope:groupId4.id" "BasicRope:path_curveShape.iog.og[6].gid";
connectAttr "BasicRope:tweakSet2.mwc" "BasicRope:path_curveShape.iog.og[6].gco";
connectAttr "BasicRope:cluster4GroupId.id" "BasicRope:path_curveShape.iog.og[7].gid"
		;
connectAttr "BasicRope:cluster4Set.mwc" "BasicRope:path_curveShape.iog.og[7].gco"
		;
connectAttr "BasicRope:cluster5GroupId.id" "BasicRope:path_curveShape.iog.og[8].gid"
		;
connectAttr "BasicRope:cluster5Set.mwc" "BasicRope:path_curveShape.iog.og[8].gco"
		;
connectAttr "BasicRope:cluster6GroupId.id" "BasicRope:path_curveShape.iog.og[9].gid"
		;
connectAttr "BasicRope:cluster6Set.mwc" "BasicRope:path_curveShape.iog.og[9].gco"
		;
connectAttr "BasicRope:cluster7GroupId.id" "BasicRope:path_curveShape.iog.og[10].gid"
		;
connectAttr "BasicRope:cluster7Set.mwc" "BasicRope:path_curveShape.iog.og[10].gco"
		;
connectAttr "BasicRope:cluster8GroupId.id" "BasicRope:path_curveShape.iog.og[11].gid"
		;
connectAttr "BasicRope:cluster8Set.mwc" "BasicRope:path_curveShape.iog.og[11].gco"
		;
connectAttr "BasicRope:cluster9GroupId.id" "BasicRope:path_curveShape.iog.og[12].gid"
		;
connectAttr "BasicRope:cluster9Set.mwc" "BasicRope:path_curveShape.iog.og[12].gco"
		;
connectAttr "BasicRope:cluster10GroupId.id" "BasicRope:path_curveShape.iog.og[13].gid"
		;
connectAttr "BasicRope:cluster10Set.mwc" "BasicRope:path_curveShape.iog.og[13].gco"
		;
connectAttr "BasicRope:cluster11GroupId.id" "BasicRope:path_curveShape.iog.og[14].gid"
		;
connectAttr "BasicRope:cluster11Set.mwc" "BasicRope:path_curveShape.iog.og[14].gco"
		;
connectAttr "BasicRope:groupId5.id" "BasicRope:path_curveShape.iog.og[16].gid";
connectAttr "BasicRope:Lockset.mwc" "BasicRope:path_curveShape.iog.og[16].gco";
connectAttr ":time1.o" "BasicRope:Lock.ct";
connectAttr "BasicRope:geoConnector1.cpc[0]" "BasicRope:Lock.ocd";
connectAttr "BasicRope:geoConnector1.ccl[0]" "BasicRope:Lock.t";
connectAttr "BasicRope:geoConnector1.cpp[0]" "BasicRope:Lock.opd";
connectAttr "BasicRope:geoConnector1.cpv[0]" "BasicRope:Lock.ovd";
connectAttr "BasicRope:geoConnector1.swg" "BasicRope:Lock.swge";
connectAttr "BasicRope:cluster3Handle_pointConstraint1.ctx" "BasicRope:PathDefClstr1.tx"
		;
connectAttr "BasicRope:cluster3Handle_pointConstraint1.cty" "BasicRope:PathDefClstr1.ty"
		;
connectAttr "BasicRope:cluster3Handle_pointConstraint1.ctz" "BasicRope:PathDefClstr1.tz"
		;
connectAttr "BasicRope:cluster3Handle_orientConstraint1.crx" "BasicRope:PathDefClstr1.rx"
		;
connectAttr "BasicRope:cluster3Handle_orientConstraint1.cry" "BasicRope:PathDefClstr1.ry"
		;
connectAttr "BasicRope:cluster3Handle_orientConstraint1.crz" "BasicRope:PathDefClstr1.rz"
		;
connectAttr "BasicRope:PathDefClstr1.pim" "BasicRope:cluster3Handle_pointConstraint1.cpim"
		;
connectAttr "BasicRope:PathDefClstr1.rp" "BasicRope:cluster3Handle_pointConstraint1.crp"
		;
connectAttr "BasicRope:PathDefClstr1.rpt" "BasicRope:cluster3Handle_pointConstraint1.crt"
		;
connectAttr "BasicRope:ropeCTRL1.t" "BasicRope:cluster3Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:ropeCTRL1.rp" "BasicRope:cluster3Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:ropeCTRL1.rpt" "BasicRope:cluster3Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:ropeCTRL1.pm" "BasicRope:cluster3Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster3Handle_pointConstraint1.w0" "BasicRope:cluster3Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:PathDefClstr1.ro" "BasicRope:cluster3Handle_orientConstraint1.cro"
		;
connectAttr "BasicRope:PathDefClstr1.pim" "BasicRope:cluster3Handle_orientConstraint1.cpim"
		;
connectAttr "BasicRope:ropeCTRL1.r" "BasicRope:cluster3Handle_orientConstraint1.tg[0].tr"
		;
connectAttr "BasicRope:ropeCTRL1.ro" "BasicRope:cluster3Handle_orientConstraint1.tg[0].tro"
		;
connectAttr "BasicRope:ropeCTRL1.pm" "BasicRope:cluster3Handle_orientConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster3Handle_orientConstraint1.w0" "BasicRope:cluster3Handle_orientConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:cluster4Handle_pointConstraint1.ctx" "BasicRope:PathDefClstr2.tx"
		;
connectAttr "BasicRope:cluster4Handle_pointConstraint1.cty" "BasicRope:PathDefClstr2.ty"
		;
connectAttr "BasicRope:cluster4Handle_pointConstraint1.ctz" "BasicRope:PathDefClstr2.tz"
		;
connectAttr "BasicRope:PathDefClstr2.pim" "BasicRope:cluster4Handle_pointConstraint1.cpim"
		;
connectAttr "BasicRope:PathDefClstr2.rp" "BasicRope:cluster4Handle_pointConstraint1.crp"
		;
connectAttr "BasicRope:PathDefClstr2.rpt" "BasicRope:cluster4Handle_pointConstraint1.crt"
		;
connectAttr "BasicRope:ropeCTRL2.t" "BasicRope:cluster4Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:ropeCTRL2.rp" "BasicRope:cluster4Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:ropeCTRL2.rpt" "BasicRope:cluster4Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:ropeCTRL2.pm" "BasicRope:cluster4Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster4Handle_pointConstraint1.w0" "BasicRope:cluster4Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:cluster5Handle_pointConstraint1.ctx" "BasicRope:PathDefClstr3.tx"
		;
connectAttr "BasicRope:cluster5Handle_pointConstraint1.cty" "BasicRope:PathDefClstr3.ty"
		;
connectAttr "BasicRope:cluster5Handle_pointConstraint1.ctz" "BasicRope:PathDefClstr3.tz"
		;
connectAttr "BasicRope:PathDefClstr3.pim" "BasicRope:cluster5Handle_pointConstraint1.cpim"
		;
connectAttr "BasicRope:PathDefClstr3.rp" "BasicRope:cluster5Handle_pointConstraint1.crp"
		;
connectAttr "BasicRope:PathDefClstr3.rpt" "BasicRope:cluster5Handle_pointConstraint1.crt"
		;
connectAttr "BasicRope:ropeCTRL3.t" "BasicRope:cluster5Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:ropeCTRL3.rp" "BasicRope:cluster5Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:ropeCTRL3.rpt" "BasicRope:cluster5Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:ropeCTRL3.pm" "BasicRope:cluster5Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster5Handle_pointConstraint1.w0" "BasicRope:cluster5Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:cluster6Handle_pointConstraint1.ctx" "BasicRope:PathDefClstr4.tx"
		;
connectAttr "BasicRope:cluster6Handle_pointConstraint1.cty" "BasicRope:PathDefClstr4.ty"
		;
connectAttr "BasicRope:cluster6Handle_pointConstraint1.ctz" "BasicRope:PathDefClstr4.tz"
		;
connectAttr "BasicRope:PathDefClstr4.pim" "BasicRope:cluster6Handle_pointConstraint1.cpim"
		;
connectAttr "BasicRope:PathDefClstr4.rp" "BasicRope:cluster6Handle_pointConstraint1.crp"
		;
connectAttr "BasicRope:PathDefClstr4.rpt" "BasicRope:cluster6Handle_pointConstraint1.crt"
		;
connectAttr "BasicRope:ropeCTRL4.t" "BasicRope:cluster6Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:ropeCTRL4.rp" "BasicRope:cluster6Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:ropeCTRL4.rpt" "BasicRope:cluster6Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:ropeCTRL4.pm" "BasicRope:cluster6Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster6Handle_pointConstraint1.w0" "BasicRope:cluster6Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:cluster7Handle_pointConstraint1.ctx" "BasicRope:PathDefClstr5.tx"
		;
connectAttr "BasicRope:cluster7Handle_pointConstraint1.cty" "BasicRope:PathDefClstr5.ty"
		;
connectAttr "BasicRope:cluster7Handle_pointConstraint1.ctz" "BasicRope:PathDefClstr5.tz"
		;
connectAttr "BasicRope:PathDefClstr5.pim" "BasicRope:cluster7Handle_pointConstraint1.cpim"
		;
connectAttr "BasicRope:PathDefClstr5.rp" "BasicRope:cluster7Handle_pointConstraint1.crp"
		;
connectAttr "BasicRope:PathDefClstr5.rpt" "BasicRope:cluster7Handle_pointConstraint1.crt"
		;
connectAttr "BasicRope:ropeCTRL5.t" "BasicRope:cluster7Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:ropeCTRL5.rp" "BasicRope:cluster7Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:ropeCTRL5.rpt" "BasicRope:cluster7Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:ropeCTRL5.pm" "BasicRope:cluster7Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster7Handle_pointConstraint1.w0" "BasicRope:cluster7Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:cluster8Handle_pointConstraint1.ctx" "BasicRope:PathDefClstr6.tx"
		;
connectAttr "BasicRope:cluster8Handle_pointConstraint1.cty" "BasicRope:PathDefClstr6.ty"
		;
connectAttr "BasicRope:cluster8Handle_pointConstraint1.ctz" "BasicRope:PathDefClstr6.tz"
		;
connectAttr "BasicRope:PathDefClstr6.pim" "BasicRope:cluster8Handle_pointConstraint1.cpim"
		;
connectAttr "BasicRope:PathDefClstr6.rp" "BasicRope:cluster8Handle_pointConstraint1.crp"
		;
connectAttr "BasicRope:PathDefClstr6.rpt" "BasicRope:cluster8Handle_pointConstraint1.crt"
		;
connectAttr "BasicRope:ropeCTRL6.t" "BasicRope:cluster8Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:ropeCTRL6.rp" "BasicRope:cluster8Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:ropeCTRL6.rpt" "BasicRope:cluster8Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:ropeCTRL6.pm" "BasicRope:cluster8Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster8Handle_pointConstraint1.w0" "BasicRope:cluster8Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:cluster9Handle_pointConstraint1.ctx" "BasicRope:PathDefClstr7.tx"
		;
connectAttr "BasicRope:cluster9Handle_pointConstraint1.cty" "BasicRope:PathDefClstr7.ty"
		;
connectAttr "BasicRope:cluster9Handle_pointConstraint1.ctz" "BasicRope:PathDefClstr7.tz"
		;
connectAttr "BasicRope:PathDefClstr7.pim" "BasicRope:cluster9Handle_pointConstraint1.cpim"
		;
connectAttr "BasicRope:PathDefClstr7.rp" "BasicRope:cluster9Handle_pointConstraint1.crp"
		;
connectAttr "BasicRope:PathDefClstr7.rpt" "BasicRope:cluster9Handle_pointConstraint1.crt"
		;
connectAttr "BasicRope:ropeCTRL7.t" "BasicRope:cluster9Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:ropeCTRL7.rp" "BasicRope:cluster9Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:ropeCTRL7.rpt" "BasicRope:cluster9Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:ropeCTRL7.pm" "BasicRope:cluster9Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster9Handle_pointConstraint1.w0" "BasicRope:cluster9Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:cluster10Handle_pointConstraint1.ctx" "BasicRope:PathDefClstr8.tx"
		;
connectAttr "BasicRope:cluster10Handle_pointConstraint1.cty" "BasicRope:PathDefClstr8.ty"
		;
connectAttr "BasicRope:cluster10Handle_pointConstraint1.ctz" "BasicRope:PathDefClstr8.tz"
		;
connectAttr "BasicRope:PathDefClstr8.pim" "BasicRope:cluster10Handle_pointConstraint1.cpim"
		;
connectAttr "BasicRope:PathDefClstr8.rp" "BasicRope:cluster10Handle_pointConstraint1.crp"
		;
connectAttr "BasicRope:PathDefClstr8.rpt" "BasicRope:cluster10Handle_pointConstraint1.crt"
		;
connectAttr "BasicRope:ropeCTRL8.t" "BasicRope:cluster10Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:ropeCTRL8.rp" "BasicRope:cluster10Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:ropeCTRL8.rpt" "BasicRope:cluster10Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:ropeCTRL8.pm" "BasicRope:cluster10Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster10Handle_pointConstraint1.w0" "BasicRope:cluster10Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:cluster11Handle_pointConstraint1.ctx" "BasicRope:PathDefClstr9.tx"
		;
connectAttr "BasicRope:cluster11Handle_pointConstraint1.cty" "BasicRope:PathDefClstr9.ty"
		;
connectAttr "BasicRope:cluster11Handle_pointConstraint1.ctz" "BasicRope:PathDefClstr9.tz"
		;
connectAttr "BasicRope:cluster11Handle_orientConstraint1.crx" "BasicRope:PathDefClstr9.rx"
		;
connectAttr "BasicRope:cluster11Handle_orientConstraint1.cry" "BasicRope:PathDefClstr9.ry"
		;
connectAttr "BasicRope:cluster11Handle_orientConstraint1.crz" "BasicRope:PathDefClstr9.rz"
		;
connectAttr "BasicRope:PathDefClstr9.pim" "BasicRope:cluster11Handle_pointConstraint1.cpim"
		;
connectAttr "BasicRope:PathDefClstr9.rp" "BasicRope:cluster11Handle_pointConstraint1.crp"
		;
connectAttr "BasicRope:PathDefClstr9.rpt" "BasicRope:cluster11Handle_pointConstraint1.crt"
		;
connectAttr "BasicRope:ropeCTRL9.t" "BasicRope:cluster11Handle_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:ropeCTRL9.rp" "BasicRope:cluster11Handle_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:ropeCTRL9.rpt" "BasicRope:cluster11Handle_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:ropeCTRL9.pm" "BasicRope:cluster11Handle_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster11Handle_pointConstraint1.w0" "BasicRope:cluster11Handle_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:PathDefClstr9.ro" "BasicRope:cluster11Handle_orientConstraint1.cro"
		;
connectAttr "BasicRope:PathDefClstr9.pim" "BasicRope:cluster11Handle_orientConstraint1.cpim"
		;
connectAttr "BasicRope:ropeCTRL9.r" "BasicRope:cluster11Handle_orientConstraint1.tg[0].tr"
		;
connectAttr "BasicRope:ropeCTRL9.ro" "BasicRope:cluster11Handle_orientConstraint1.tg[0].tro"
		;
connectAttr "BasicRope:ropeCTRL9.pm" "BasicRope:cluster11Handle_orientConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:cluster11Handle_orientConstraint1.w0" "BasicRope:cluster11Handle_orientConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:nurbsCircle1_pointConstraint1.ctx" "BasicRope:Profile_Curve.tx"
		 -l on;
connectAttr "BasicRope:nurbsCircle1_pointConstraint1.cty" "BasicRope:Profile_Curve.ty"
		 -l on;
connectAttr "BasicRope:nurbsCircle1_pointConstraint1.ctz" "BasicRope:Profile_Curve.tz"
		 -l on;
connectAttr "BasicRope:nurbsCircle1_tangentConstraint1.crx" "BasicRope:Profile_Curve.rx"
		 -l on;
connectAttr "BasicRope:nurbsCircle1_tangentConstraint1.cry" "BasicRope:Profile_Curve.ry"
		 -l on;
connectAttr "BasicRope:nurbsCircle1_tangentConstraint1.crz" "BasicRope:Profile_Curve.rz"
		 -l on;
connectAttr "BasicRope:RopeEndA.ThickA" "BasicRope:Profile_Curve.sx" -l on;
connectAttr "BasicRope:Profile_Curve.sx" "BasicRope:Profile_Curve.sy" -l on;
connectAttr "BasicRope:Profile_Curve.sx" "BasicRope:Profile_Curve.sz" -l on;
connectAttr "BasicRope:makeNurbCircle1.oc" "BasicRope:Profile_CurveShape.cr";
connectAttr "BasicRope:Profile_Curve.pim" "BasicRope:nurbsCircle1_pointConstraint1.cpim"
		;
connectAttr "BasicRope:Profile_Curve.rp" "BasicRope:nurbsCircle1_pointConstraint1.crp"
		;
connectAttr "BasicRope:Profile_Curve.rpt" "BasicRope:nurbsCircle1_pointConstraint1.crt"
		;
connectAttr "BasicRope:Lock.t" "BasicRope:nurbsCircle1_pointConstraint1.tg[0].tt"
		;
connectAttr "BasicRope:Lock.rp" "BasicRope:nurbsCircle1_pointConstraint1.tg[0].trp"
		;
connectAttr "BasicRope:Lock.rpt" "BasicRope:nurbsCircle1_pointConstraint1.tg[0].trt"
		;
connectAttr "BasicRope:Lock.pm" "BasicRope:nurbsCircle1_pointConstraint1.tg[0].tpm"
		;
connectAttr "BasicRope:nurbsCircle1_pointConstraint1.w0" "BasicRope:nurbsCircle1_pointConstraint1.tg[0].tw"
		;
connectAttr "BasicRope:Profile_Curve.pim" "BasicRope:nurbsCircle1_tangentConstraint1.cpim"
		;
connectAttr "BasicRope:Profile_Curve.t" "BasicRope:nurbsCircle1_tangentConstraint1.ct"
		;
connectAttr "BasicRope:Profile_Curve.rp" "BasicRope:nurbsCircle1_tangentConstraint1.crp"
		;
connectAttr "BasicRope:Profile_Curve.rpt" "BasicRope:nurbsCircle1_tangentConstraint1.crt"
		;
connectAttr "BasicRope:Profile_Curve.ro" "BasicRope:nurbsCircle1_tangentConstraint1.cro"
		;
connectAttr "BasicRope:path_curveShape.ws" "BasicRope:nurbsCircle1_tangentConstraint1.tg[0].tgm"
		;
connectAttr "BasicRope:nurbsCircle1_tangentConstraint1.w0" "BasicRope:nurbsCircle1_tangentConstraint1.tg[0].tw"
		;
connectAttr "reverseSurface1.os" "BasicRope:RopeMshShape.cr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr "blinn1SG.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[7].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[7].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[2].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[3].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[3].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[4].sllk";
connectAttr "blinn1SG.msg" "lightLinker1.slnk[4].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Draft.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":DraftMotionBlur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":DraftRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Preview.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewMotionblur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewCaustics.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewGlobalIllum.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewFinalGather.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Production.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionMotionblur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewFur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr ":defaultRenderGlobals.msg" "BasicRope:mtorPartition.inmsg";
connectAttr ":defaultRenderGlobals.msg" "BasicRope:templateControls_mtorPartition.inmsg"
		;
connectAttr "BasicRope:cluster1GroupParts.og" "BasicRope:baseClstrACluster.ip[0].ig"
		;
connectAttr "BasicRope:cluster1GroupId.id" "BasicRope:baseClstrACluster.ip[0].gi"
		;
connectAttr "BasicRope:baseClstrA.wm" "BasicRope:baseClstrACluster.ma";
connectAttr "BasicRope:baseClstrAShape.x" "BasicRope:baseClstrACluster.x";
connectAttr "BasicRope:groupParts2.og" "BasicRope:tweak1.ip[0].ig";
connectAttr "BasicRope:groupId2.id" "BasicRope:tweak1.ip[0].gi";
connectAttr "BasicRope:cluster1GroupId.msg" "BasicRope:cluster1Set.gn" -na;
connectAttr "BasicRope:basecurveShape1.iog.og[0]" "BasicRope:cluster1Set.dsm" -na
		;
connectAttr "BasicRope:baseClstrACluster.msg" "BasicRope:cluster1Set.ub[0]";
connectAttr "BasicRope:tweak1.og[0]" "BasicRope:cluster1GroupParts.ig";
connectAttr "BasicRope:cluster1GroupId.id" "BasicRope:cluster1GroupParts.gi";
connectAttr "BasicRope:groupId2.msg" "BasicRope:tweakSet1.gn" -na;
connectAttr "BasicRope:basecurveShape1.iog.og[1]" "BasicRope:tweakSet1.dsm" -na;
connectAttr "BasicRope:tweak1.msg" "BasicRope:tweakSet1.ub[0]";
connectAttr "BasicRope:basecurveShape1Orig1.ws" "BasicRope:groupParts2.ig";
connectAttr "BasicRope:groupId2.id" "BasicRope:groupParts2.gi";
connectAttr "BasicRope:cluster2GroupParts.og" "BasicRope:baseClstrBCluster.ip[0].ig"
		;
connectAttr "BasicRope:cluster2GroupId.id" "BasicRope:baseClstrBCluster.ip[0].gi"
		;
connectAttr "BasicRope:baseClstrB.wm" "BasicRope:baseClstrBCluster.ma";
connectAttr "BasicRope:baseClstrBShape.x" "BasicRope:baseClstrBCluster.x";
connectAttr "BasicRope:cluster2GroupId.msg" "BasicRope:cluster2Set.gn" -na;
connectAttr "BasicRope:basecurveShape1.iog.og[2]" "BasicRope:cluster2Set.dsm" -na
		;
connectAttr "BasicRope:baseClstrBCluster.msg" "BasicRope:cluster2Set.ub[0]";
connectAttr "BasicRope:baseClstrACluster.og[0]" "BasicRope:cluster2GroupParts.ig"
		;
connectAttr "BasicRope:cluster2GroupId.id" "BasicRope:cluster2GroupParts.gi";
connectAttr "BasicRope:baseClstrBCluster.og[0]" "BasicRope:rebuildCurve1.ic";
connectAttr "BasicRope:basecurveShape1.ws" "BasicRope:motionPath1.gp";
connectAttr "BasicRope:RopeCTRLGrp1.tmrx" "BasicRope:addDoubleLinear1.i1";
connectAttr "BasicRope:motionPath1.xc" "BasicRope:addDoubleLinear1.i2";
connectAttr "BasicRope:RopeCTRLGrp1.tmry" "BasicRope:addDoubleLinear2.i1";
connectAttr "BasicRope:motionPath1.yc" "BasicRope:addDoubleLinear2.i2";
connectAttr "BasicRope:RopeCTRLGrp1.tmrz" "BasicRope:addDoubleLinear3.i1";
connectAttr "BasicRope:motionPath1.zc" "BasicRope:addDoubleLinear3.i2";
connectAttr "BasicRope:basecurveShape1.ws" "BasicRope:motionPath2.gp";
connectAttr "BasicRope:RopeCTRLGrp2.tmrx" "BasicRope:addDoubleLinear4.i1";
connectAttr "BasicRope:motionPath2.xc" "BasicRope:addDoubleLinear4.i2";
connectAttr "BasicRope:RopeCTRLGrp2.tmry" "BasicRope:addDoubleLinear5.i1";
connectAttr "BasicRope:motionPath2.yc" "BasicRope:addDoubleLinear5.i2";
connectAttr "BasicRope:RopeCTRLGrp2.tmrz" "BasicRope:addDoubleLinear6.i1";
connectAttr "BasicRope:motionPath2.zc" "BasicRope:addDoubleLinear6.i2";
connectAttr "BasicRope:basecurveShape1.ws" "BasicRope:motionPath3.gp";
connectAttr "BasicRope:RopeCTRLGrp3.tmrx" "BasicRope:addDoubleLinear7.i1";
connectAttr "BasicRope:motionPath3.xc" "BasicRope:addDoubleLinear7.i2";
connectAttr "BasicRope:RopeCTRLGrp3.tmry" "BasicRope:addDoubleLinear8.i1";
connectAttr "BasicRope:motionPath3.yc" "BasicRope:addDoubleLinear8.i2";
connectAttr "BasicRope:RopeCTRLGrp3.tmrz" "BasicRope:addDoubleLinear9.i1";
connectAttr "BasicRope:motionPath3.zc" "BasicRope:addDoubleLinear9.i2";
connectAttr "BasicRope:basecurveShape1.ws" "BasicRope:motionPath4.gp";
connectAttr "BasicRope:RopeCTRLGrp4.tmrx" "BasicRope:addDoubleLinear10.i1";
connectAttr "BasicRope:motionPath4.xc" "BasicRope:addDoubleLinear10.i2";
connectAttr "BasicRope:RopeCTRLGrp4.tmry" "BasicRope:addDoubleLinear11.i1";
connectAttr "BasicRope:motionPath4.yc" "BasicRope:addDoubleLinear11.i2";
connectAttr "BasicRope:RopeCTRLGrp4.tmrz" "BasicRope:addDoubleLinear12.i1";
connectAttr "BasicRope:motionPath4.zc" "BasicRope:addDoubleLinear12.i2";
connectAttr "BasicRope:basecurveShape1.ws" "BasicRope:motionPath5.gp";
connectAttr "BasicRope:RopeCTRLGrp5.tmrx" "BasicRope:addDoubleLinear13.i1";
connectAttr "BasicRope:motionPath5.xc" "BasicRope:addDoubleLinear13.i2";
connectAttr "BasicRope:RopeCTRLGrp5.tmry" "BasicRope:addDoubleLinear14.i1";
connectAttr "BasicRope:motionPath5.yc" "BasicRope:addDoubleLinear14.i2";
connectAttr "BasicRope:RopeCTRLGrp5.tmrz" "BasicRope:addDoubleLinear15.i1";
connectAttr "BasicRope:motionPath5.zc" "BasicRope:addDoubleLinear15.i2";
connectAttr "BasicRope:basecurveShape1.ws" "BasicRope:motionPath6.gp";
connectAttr "BasicRope:RopeCTRLGrp6.tmrx" "BasicRope:addDoubleLinear16.i1";
connectAttr "BasicRope:motionPath6.xc" "BasicRope:addDoubleLinear16.i2";
connectAttr "BasicRope:RopeCTRLGrp6.tmry" "BasicRope:addDoubleLinear17.i1";
connectAttr "BasicRope:motionPath6.yc" "BasicRope:addDoubleLinear17.i2";
connectAttr "BasicRope:RopeCTRLGrp6.tmrz" "BasicRope:addDoubleLinear18.i1";
connectAttr "BasicRope:motionPath6.zc" "BasicRope:addDoubleLinear18.i2";
connectAttr "BasicRope:basecurveShape1.ws" "BasicRope:motionPath7.gp";
connectAttr "BasicRope:RopeCTRLGrp7.tmrx" "BasicRope:addDoubleLinear19.i1";
connectAttr "BasicRope:motionPath7.xc" "BasicRope:addDoubleLinear19.i2";
connectAttr "BasicRope:RopeCTRLGrp7.tmry" "BasicRope:addDoubleLinear20.i1";
connectAttr "BasicRope:motionPath7.yc" "BasicRope:addDoubleLinear20.i2";
connectAttr "BasicRope:RopeCTRLGrp7.tmrz" "BasicRope:addDoubleLinear21.i1";
connectAttr "BasicRope:motionPath7.zc" "BasicRope:addDoubleLinear21.i2";
connectAttr "BasicRope:basecurveShape1.ws" "BasicRope:motionPath8.gp";
connectAttr "BasicRope:RopeCTRLGrp8.tmrx" "BasicRope:addDoubleLinear22.i1";
connectAttr "BasicRope:motionPath8.xc" "BasicRope:addDoubleLinear22.i2";
connectAttr "BasicRope:RopeCTRLGrp8.tmry" "BasicRope:addDoubleLinear23.i1";
connectAttr "BasicRope:motionPath8.yc" "BasicRope:addDoubleLinear23.i2";
connectAttr "BasicRope:RopeCTRLGrp8.tmrz" "BasicRope:addDoubleLinear24.i1";
connectAttr "BasicRope:motionPath8.zc" "BasicRope:addDoubleLinear24.i2";
connectAttr "BasicRope:basecurveShape1.ws" "BasicRope:motionPath9.gp";
connectAttr "BasicRope:RopeCTRLGrp9.tmrx" "BasicRope:addDoubleLinear25.i1";
connectAttr "BasicRope:motionPath9.xc" "BasicRope:addDoubleLinear25.i2";
connectAttr "BasicRope:RopeCTRLGrp9.tmry" "BasicRope:addDoubleLinear26.i1";
connectAttr "BasicRope:motionPath9.yc" "BasicRope:addDoubleLinear26.i2";
connectAttr "BasicRope:RopeCTRLGrp9.tmrz" "BasicRope:addDoubleLinear27.i1";
connectAttr "BasicRope:motionPath9.zc" "BasicRope:addDoubleLinear27.i2";
connectAttr "BasicRope:cluster3GroupParts.og" "BasicRope:PathDefClstr1Cluster.ip[0].ig"
		;
connectAttr "BasicRope:cluster3GroupId.id" "BasicRope:PathDefClstr1Cluster.ip[0].gi"
		;
connectAttr "BasicRope:PathDefClstr1.wm" "BasicRope:PathDefClstr1Cluster.ma";
connectAttr "BasicRope:PathDefClstr1Shape.x" "BasicRope:PathDefClstr1Cluster.x";
connectAttr "BasicRope:groupParts4.og" "BasicRope:tweak2.ip[0].ig";
connectAttr "BasicRope:groupId4.id" "BasicRope:tweak2.ip[0].gi";
connectAttr "BasicRope:cluster3GroupId.msg" "BasicRope:cluster3Set.gn" -na;
connectAttr "BasicRope:path_curveShape.iog.og[5]" "BasicRope:cluster3Set.dsm" -na
		;
connectAttr "BasicRope:PathDefClstr1Cluster.msg" "BasicRope:cluster3Set.ub[0]";
connectAttr "BasicRope:tweak2.og[0]" "BasicRope:cluster3GroupParts.ig";
connectAttr "BasicRope:cluster3GroupId.id" "BasicRope:cluster3GroupParts.gi";
connectAttr "BasicRope:groupId4.msg" "BasicRope:tweakSet2.gn" -na;
connectAttr "BasicRope:path_curveShape.iog.og[6]" "BasicRope:tweakSet2.dsm" -na;
connectAttr "BasicRope:tweak2.msg" "BasicRope:tweakSet2.ub[0]";
connectAttr "BasicRope:path_curveShapeOrig.ws" "BasicRope:groupParts4.ig";
connectAttr "BasicRope:groupId4.id" "BasicRope:groupParts4.gi";
connectAttr "BasicRope:cluster4GroupParts.og" "BasicRope:PathDefClstr2Cluster.ip[0].ig"
		;
connectAttr "BasicRope:cluster4GroupId.id" "BasicRope:PathDefClstr2Cluster.ip[0].gi"
		;
connectAttr "BasicRope:PathDefClstr2.wm" "BasicRope:PathDefClstr2Cluster.ma";
connectAttr "BasicRope:PathDefClstr2Shape.x" "BasicRope:PathDefClstr2Cluster.x";
connectAttr "BasicRope:cluster4GroupId.msg" "BasicRope:cluster4Set.gn" -na;
connectAttr "BasicRope:path_curveShape.iog.og[7]" "BasicRope:cluster4Set.dsm" -na
		;
connectAttr "BasicRope:PathDefClstr2Cluster.msg" "BasicRope:cluster4Set.ub[0]";
connectAttr "BasicRope:PathDefClstr1Cluster.og[0]" "BasicRope:cluster4GroupParts.ig"
		;
connectAttr "BasicRope:cluster4GroupId.id" "BasicRope:cluster4GroupParts.gi";
connectAttr "BasicRope:cluster5GroupParts.og" "BasicRope:PathDefClstr3Cluster.ip[0].ig"
		;
connectAttr "BasicRope:cluster5GroupId.id" "BasicRope:PathDefClstr3Cluster.ip[0].gi"
		;
connectAttr "BasicRope:PathDefClstr3.wm" "BasicRope:PathDefClstr3Cluster.ma";
connectAttr "BasicRope:PathDefClstr3Shape.x" "BasicRope:PathDefClstr3Cluster.x";
connectAttr "BasicRope:cluster5GroupId.msg" "BasicRope:cluster5Set.gn" -na;
connectAttr "BasicRope:path_curveShape.iog.og[8]" "BasicRope:cluster5Set.dsm" -na
		;
connectAttr "BasicRope:PathDefClstr3Cluster.msg" "BasicRope:cluster5Set.ub[0]";
connectAttr "BasicRope:PathDefClstr2Cluster.og[0]" "BasicRope:cluster5GroupParts.ig"
		;
connectAttr "BasicRope:cluster5GroupId.id" "BasicRope:cluster5GroupParts.gi";
connectAttr "BasicRope:cluster6GroupParts.og" "BasicRope:PathDefClstr4Cluster.ip[0].ig"
		;
connectAttr "BasicRope:cluster6GroupId.id" "BasicRope:PathDefClstr4Cluster.ip[0].gi"
		;
connectAttr "BasicRope:PathDefClstr4.wm" "BasicRope:PathDefClstr4Cluster.ma";
connectAttr "BasicRope:PathDefClstr4Shape.x" "BasicRope:PathDefClstr4Cluster.x";
connectAttr "BasicRope:cluster6GroupId.msg" "BasicRope:cluster6Set.gn" -na;
connectAttr "BasicRope:path_curveShape.iog.og[9]" "BasicRope:cluster6Set.dsm" -na
		;
connectAttr "BasicRope:PathDefClstr4Cluster.msg" "BasicRope:cluster6Set.ub[0]";
connectAttr "BasicRope:PathDefClstr3Cluster.og[0]" "BasicRope:cluster6GroupParts.ig"
		;
connectAttr "BasicRope:cluster6GroupId.id" "BasicRope:cluster6GroupParts.gi";
connectAttr "BasicRope:cluster7GroupParts.og" "BasicRope:PathDefClstr5Cluster.ip[0].ig"
		;
connectAttr "BasicRope:cluster7GroupId.id" "BasicRope:PathDefClstr5Cluster.ip[0].gi"
		;
connectAttr "BasicRope:PathDefClstr5.wm" "BasicRope:PathDefClstr5Cluster.ma";
connectAttr "BasicRope:PathDefClstr5Shape.x" "BasicRope:PathDefClstr5Cluster.x";
connectAttr "BasicRope:cluster7GroupId.msg" "BasicRope:cluster7Set.gn" -na;
connectAttr "BasicRope:path_curveShape.iog.og[10]" "BasicRope:cluster7Set.dsm" -na
		;
connectAttr "BasicRope:PathDefClstr5Cluster.msg" "BasicRope:cluster7Set.ub[0]";
connectAttr "BasicRope:PathDefClstr4Cluster.og[0]" "BasicRope:cluster7GroupParts.ig"
		;
connectAttr "BasicRope:cluster7GroupId.id" "BasicRope:cluster7GroupParts.gi";
connectAttr "BasicRope:cluster8GroupParts.og" "BasicRope:PathDefClstr6Cluster.ip[0].ig"
		;
connectAttr "BasicRope:cluster8GroupId.id" "BasicRope:PathDefClstr6Cluster.ip[0].gi"
		;
connectAttr "BasicRope:PathDefClstr6.wm" "BasicRope:PathDefClstr6Cluster.ma";
connectAttr "BasicRope:PathDefClstr6Shape.x" "BasicRope:PathDefClstr6Cluster.x";
connectAttr "BasicRope:cluster8GroupId.msg" "BasicRope:cluster8Set.gn" -na;
connectAttr "BasicRope:path_curveShape.iog.og[11]" "BasicRope:cluster8Set.dsm" -na
		;
connectAttr "BasicRope:PathDefClstr6Cluster.msg" "BasicRope:cluster8Set.ub[0]";
connectAttr "BasicRope:PathDefClstr5Cluster.og[0]" "BasicRope:cluster8GroupParts.ig"
		;
connectAttr "BasicRope:cluster8GroupId.id" "BasicRope:cluster8GroupParts.gi";
connectAttr "BasicRope:cluster9GroupParts.og" "BasicRope:PathDefClstr7Cluster.ip[0].ig"
		;
connectAttr "BasicRope:cluster9GroupId.id" "BasicRope:PathDefClstr7Cluster.ip[0].gi"
		;
connectAttr "BasicRope:PathDefClstr7.wm" "BasicRope:PathDefClstr7Cluster.ma";
connectAttr "BasicRope:PathDefClstr7Shape.x" "BasicRope:PathDefClstr7Cluster.x";
connectAttr "BasicRope:cluster9GroupId.msg" "BasicRope:cluster9Set.gn" -na;
connectAttr "BasicRope:path_curveShape.iog.og[12]" "BasicRope:cluster9Set.dsm" -na
		;
connectAttr "BasicRope:PathDefClstr7Cluster.msg" "BasicRope:cluster9Set.ub[0]";
connectAttr "BasicRope:PathDefClstr6Cluster.og[0]" "BasicRope:cluster9GroupParts.ig"
		;
connectAttr "BasicRope:cluster9GroupId.id" "BasicRope:cluster9GroupParts.gi";
connectAttr "BasicRope:cluster10GroupParts.og" "BasicRope:PathDefClstr8Cluster.ip[0].ig"
		;
connectAttr "BasicRope:cluster10GroupId.id" "BasicRope:PathDefClstr8Cluster.ip[0].gi"
		;
connectAttr "BasicRope:PathDefClstr8.wm" "BasicRope:PathDefClstr8Cluster.ma";
connectAttr "BasicRope:PathDefClstr8Shape.x" "BasicRope:PathDefClstr8Cluster.x";
connectAttr "BasicRope:cluster10GroupId.msg" "BasicRope:cluster10Set.gn" -na;
connectAttr "BasicRope:path_curveShape.iog.og[13]" "BasicRope:cluster10Set.dsm" 
		-na;
connectAttr "BasicRope:PathDefClstr8Cluster.msg" "BasicRope:cluster10Set.ub[0]";
connectAttr "BasicRope:PathDefClstr7Cluster.og[0]" "BasicRope:cluster10GroupParts.ig"
		;
connectAttr "BasicRope:cluster10GroupId.id" "BasicRope:cluster10GroupParts.gi";
connectAttr "BasicRope:cluster11GroupParts.og" "BasicRope:PathDefClstr9Cluster.ip[0].ig"
		;
connectAttr "BasicRope:cluster11GroupId.id" "BasicRope:PathDefClstr9Cluster.ip[0].gi"
		;
connectAttr "BasicRope:PathDefClstr9.wm" "BasicRope:PathDefClstr9Cluster.ma";
connectAttr "BasicRope:PathDefClstr9Shape.x" "BasicRope:PathDefClstr9Cluster.x";
connectAttr "BasicRope:cluster11GroupId.msg" "BasicRope:cluster11Set.gn" -na;
connectAttr "BasicRope:path_curveShape.iog.og[14]" "BasicRope:cluster11Set.dsm" 
		-na;
connectAttr "BasicRope:PathDefClstr9Cluster.msg" "BasicRope:cluster11Set.ub[0]";
connectAttr "BasicRope:PathDefClstr8Cluster.og[0]" "BasicRope:cluster11GroupParts.ig"
		;
connectAttr "BasicRope:cluster11GroupId.id" "BasicRope:cluster11GroupParts.gi";
connectAttr ":time1.o" "BasicRope:geoConnector1.ct";
connectAttr "BasicRope:path_curveShape.l" "BasicRope:geoConnector1.lge";
connectAttr "BasicRope:path_curveShape.wm" "BasicRope:geoConnector1.wm";
connectAttr "BasicRope:path_curveShape.msg" "BasicRope:geoConnector1.own";
connectAttr "BasicRope:groupId5.id" "BasicRope:geoConnector1.gri[0]";
connectAttr "BasicRope:groupId5.msg" "BasicRope:Lockset.gn" -na;
connectAttr "BasicRope:path_curveShape.iog.og[16]" "BasicRope:Lockset.dsm" -na;
connectAttr "BasicRope:PathDefClstr9Cluster.og[0]" "BasicRope:groupParts5.ig";
connectAttr "BasicRope:groupId5.id" "BasicRope:groupParts5.gi";
connectAttr "BasicRope:Profile_CurveShape.ws" "BasicRope:extrude1.pr";
connectAttr "BasicRope:path_curveShape.ws" "BasicRope:extrude1.pt";
connectAttr "BasicRope:RopeEndB.ThickB" "BasicRope:extrude1.sc";
connectAttr "BasicRope:unitConversion1.o" "BasicRope:extrude1.ro";
connectAttr "BasicRope:RopeEndA.Twist" "BasicRope:unitConversion1.i";
connectAttr "checker1.oc" "blinn1.c";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "BasicRope:RopeMshShape.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo2.sg";
connectAttr "blinn1.msg" "materialInfo2.m";
connectAttr "checker1.msg" "materialInfo2.t" -na;
connectAttr "BasicRope:extrude1.os" "reverseSurface1.is";
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "BasicRope:checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "BasicRope:hyperView1.msg" ":hyperGraphInfo.b[0]";
// End of basicRopeFinal.ma
