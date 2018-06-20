	//Maya ASCII 2016 scene
	//Name: basicRope.ma
	//Last modified: Fri, Feb 23, 2018 03:57:23 PM
	//Codeset: 1252
	requires maya "2016";
	requires "stereoCamera" "10.0";
	currentUnit -l centimeter -a degree -t film;
	fileInfo "application" "maya";
	fileInfo "product" "Maya 2016";
	fileInfo "version" "2016";
	fileInfo "cutIdentifier" "201502261600-953408";
	fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
	createNode transform -n "root";
	createNode transform -n "anim_GP" -p "root";
	createNode transform -n "CTL_GP" -p "anim_GP";
		addAttr -ci true -k true -sn "guts" -ln "guts" -min 0 -max 1 -at "long";
		addAttr -ci true -k true -sn "meshDisplay" -ln "meshDisplay" -min 0 -max 2 -at "long";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -l on -k off ($trs+$xyz);
			}
		}
		setAttr -k on ".guts";
		setAttr -k on ".meshDisplay";
	createNode transform -n "CTL" -p "CTL_GP";
		addAttr -ci true -sn "resolution" -ln "resolution" -at "double";
		setAttr ".uoc" 1;
		setAttr ".oc" 4;
		setAttr -k on ".resolution";
	createNode nurbsCurve -n "CTLShape" -p "CTL";
		setAttr -k off ".v";
		setAttr ".uoc" 1;
		setAttr ".oc" 4;
		setAttr ".tw" yes;
	createNode transform -n "RopeEndB" -p "CTL";
		addAttr -ci true -sn "thick" -ln "thick" -dv 1 -min 0 -max 10 -at "double";
		addAttr -ci true -sn "twist" -ln "twist" -at "double";
		addAttr -ci true -sn "clip" -ln "clip" -min 0 -max 1 -at "double";
		setAttr -l on -k off ".v";
		setAttr ".uoc" 1;
		setAttr ".oc" 7;
		setAttr -l on -k off ".sx";
		setAttr -l on -k off ".sy";
		setAttr -l on -k off ".sz";
		setAttr ".rp" -type "double3" 0 0 -4 ;
		setAttr ".sp" -type "double3" 0 0 -4 ;
		setAttr -k on ".thick";
		setAttr -k on ".twist";
		setAttr -k on ".clip";
	createNode nurbsCurve -n "RopeEndBShape" -p "RopeEndB";
		setAttr -k off ".v";
		setAttr ".uoc" 1;
		setAttr ".oc" 7;
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
	createNode transform -n "RopeEndA" -p "CTL";
		addAttr -ci true -sn "thick" -ln "thick" -dv 1 -min 0 -max 10 -at "double";
		addAttr -ci true -sn "twist" -ln "twist" -min -720 -max 720 -at "double";
		addAttr -ci true -sn "clip" -ln "clip" -min 0 -max 1 -at "double";
		setAttr -l on -k off ".v";
		setAttr ".uoc" 1;
		setAttr ".oc" 2;
		setAttr -l on -k off ".sx";
		setAttr -l on -k off ".sy";
		setAttr -l on -k off ".sz";
		setAttr ".rp" -type "double3" 0 0 4 ;
		setAttr ".sp" -type "double3" 0 0 4 ;
		setAttr -k on ".thick";
		setAttr -k on ".twist";
		setAttr -k on ".clip";
	createNode nurbsCurve -n "RopeEndAShape" -p "RopeEndA";
		setAttr -k off ".v";
		setAttr ".uoc" 1;
		setAttr ".oc" 2;
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
	createNode transform -n "up" -p "CTL";
		setAttr -l on ".v" no;
		setAttr ".uoc" 1;
		setAttr ".oc" 4;
		setAttr ".t" -type "double3" 0 5 0 ;
	createNode locator -n "upShape" -p "up";
		setAttr -k off ".v";
		setAttr ".uoc" 1;
		setAttr ".oc" 4;

	for ($one in {1, 9}){
		createNode transform -n ("rope_"+$one+"_CTL_GP") -p "CTL_GP";
		setAttr -l on ".v";
		for ($trs in {".t",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -l on ($trs+$xyz);
			}
		}
		setAttr ".rp" -type "double3" 9.9 0 -4 ;
		setAttr ".rpt" -type "double3" -9.9 0 0 ;
		setAttr ".sp" -type "double3" 9.9 0 -4 ;
		setAttr ".smd" 7;
	}

	createNode transform -n "rope_1_CTL" -p "rope_1_CTL_GP";
		setAttr -l on -k off ".v";
		setAttr ".rp" -type "double3" 0 0 -4 ;
		setAttr ".sp" -type "double3" 0 0 -4 ;
		setAttr ".hdl" -type "double3" 0 0 -4 ;
		setAttr ".dh" yes;
	createNode nurbsCurve -n "rope_1_CTLShape" -p "rope_1_CTL";
		setAttr -k off ".v";
		setAttr ".tw" yes;
	createNode aimConstraint -n "rope_1_CTL_GP_aimConstraint1" -p "rope_1_CTL_GP";
		addAttr -dcb 0 -ci true -sn "w0" -ln "RopeEndAW0" -dv 1 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".a" -type "double3" 0 0 -1 ;
		setAttr ".wut" 1;
		setAttr ".rsrr" -type "double3" -129.94848787793524 -2.3713809748462649 176.83744973068613 ;
		setAttr -k on ".w0";
	
	for ($i=2; $i<9; $i++){
        string $CTL = (("rope_")+$i+("_CTL"));
        string $loc = ("loc"+$i)
        createNode transform -n $loc -p "CTL_GP";
		for ($trs in {".t",".r"}){
			for ($xyz in {"x","y","z"}){
				setAttr -l on ($trs+$xyz);
			}
		}
        createNode locator -n ("locShape"+$i) -p $loc;
            setAttr -l on -k off -cb on ".v" no;
        createNode transform -n $CTL -p $loc;
        createNode nurbsCurve -n ($CTL+"Shape") -p $CTL;
            setAttr -k off ".v";
            setAttr ".tw" yes;
    }	

	createNode transform -n "rope_9_CTL" -p "rope_9_CTL_GP";
		setAttr -l on -k off ".v";
		setAttr ".rp" -type "double3" 0 0 4 ;
		setAttr ".sp" -type "double3" 0 0 4 ;
		setAttr ".hdl" -type "double3" 0 0 4 ;
		setAttr ".dh" yes;
	createNode nurbsCurve -n "rope_9_CTLShape" -p "rope_9_CTL";
		setAttr -k off ".v";
		setAttr ".tw" yes;
	createNode transform -n "setup_GP" -p "root";
	createNode transform -n "basecurve" -p "setup_GP";
		setAttr ".ove" yes;
	createNode nurbsCurve -n "basecurveShape" -p "basecurve";
		setAttr -k off ".v";
		setAttr -s 2 ".iog";
		setAttr -s 4 ".iog[0].og";
		setAttr ".ove" yes;
		setAttr ".tw" yes;
	createNode nurbsCurve -n "basecurveShape1Orig" -p "basecurve";
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
	createNode transform -n "baseClstrA" -p "setup_GP";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 4 ;
		setAttr ".sp" -type "double3" 0 0 4 ;
	createNode clusterHandle -n "baseClstrAShape" -p "baseClstrA";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 4 ;
	createNode pointConstraint -n "cluster1Handle_pointConstraint1" -p "baseClstrA";
		addAttr -ci true -sn "w0" -ln "duplicatedCurve2W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr -k on ".w0";
	createNode transform -n "baseClstrB" -p "setup_GP";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -4 ;
		setAttr ".sp" -type "double3" 0 0 -4 ;
	createNode clusterHandle -n "baseClstrBShape" -p "baseClstrB";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -4 ;
	createNode pointConstraint -n "cluster2Handle_pointConstraint1" -p "baseClstrB";
		addAttr -ci true -sn "w0" -ln "duplicatedCurve1W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr -k on ".w0";
	createNode transform -n "path_curve" -p "setup_GP";
		setAttr ".ove" yes;
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
	createNode nurbsCurve -n "path_curveShape" -p "path_curve";
		setAttr -k off ".v";
		setAttr -s 2 ".iog";
		setAttr -s 22 ".iog[0].og";
		setAttr ".ove" yes;
		setAttr ".tw" yes;
		setAttr ".dcv" yes;
	createNode nurbsCurve -n "path_curveShape1Orig" -p "path_curve";
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
		setAttr ".dcv" yes;
	createNode nurbsCurve -n "path_curveShapeOrig" -p "path_curve";
		setAttr -k off ".v";
		setAttr ".io" yes;
		setAttr ".ove" yes;
		setAttr ".cc" -type "nurbsCurve" 
			3 8 0 no 3
			13 0 0 0 1 2 3 4 5 6 7 8 8 8
			11
			0 0 4
			0 0 3
			0 0 3
			0 0 2
			0 0 1
			0 0 -1
			0 0 -1
			0 0 -1
			0 0 -3
			0 0 -3.666
			0 0 -4
			;
		setAttr ".dcv" yes;
	createNode pointEmitter -n "Lock" -p "path_curve";
		setAttr ".sro" no;
		setAttr -l on ".urpp";
	createNode transform -n "PathDefClstr1" -p "setup_GP";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -4 ;
		setAttr ".sp" -type "double3" 0 0 -4 ;
	createNode clusterHandle -n "PathDefClstr1Shape" -p "PathDefClstr1";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -3.8333333314269202 ;
	createNode pointConstraint -n "cluster3Handle_pointConstraint1" -p "PathDefClstr1";
		addAttr -ci true -sn "w0" -ln "nurbsCircle5W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		setAttr ".ove" yes;
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".rst" -type "double3" 0 5.55 0 ;
		setAttr -k on ".w0";
	createNode orientConstraint -n "cluster3Handle_orientConstraint1" -p "PathDefClstr1";
		addAttr -ci true -sn "w0" -ln "nurbsCircle5W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		setAttr ".ove" yes;
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".lr" -type "double3" 0 180 0 ;
		setAttr ".o" -type "double3" 7.02 180 0 ;
		setAttr ".rsrr" -type "double3" 0 360 0 ;
		setAttr -k on ".w0";
	createNode transform -n "PathDefClstr2" -p "setup_GP";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -3 ;
		setAttr ".sp" -type "double3" 0 0 -3 ;
	createNode clusterHandle -n "PathDefClstr2Shape" -p "PathDefClstr2";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -3 ;
	createNode pointConstraint -n "PathDefClstr2_pointConstraint1" -p "PathDefClstr2";
		addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle2W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".rst" -type "double3" -0.047787382461390415 4.2212507606724596 -2.2948295820041706 ;
		setAttr -k on ".w0";
	createNode transform -n "PathDefClstr3" -p "setup_GP";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -1.9999999984349104 ;
		setAttr ".sp" -type "double3" 0 0 -1.9999999984349104 ;
	createNode clusterHandle -n "PathDefClstr3Shape" -p "PathDefClstr3";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -1.9999999984349104 ;
	createNode pointConstraint -n "PathDefClstr3_pointConstraint1" -p "PathDefClstr3";
		addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".rst" -type "double3" 0.088320982020339514 3.9382614330708616 -1.9389813406529119 ;
		setAttr -k on ".w0";
	createNode transform -n "PathDefClstr4" -p "setup_GP";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -1.00000000064453 ;
		setAttr ".sp" -type "double3" 0 0 -1.00000000064453 ;
	createNode clusterHandle -n "PathDefClstr4Shape" -p "PathDefClstr4";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -1.00000000064453 ;
	createNode pointConstraint -n "PathDefClstr4_pointConstraint1" -p "PathDefClstr4";
		addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle4W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".rst" -type "double3" 0.224235069292473 3.6556760363894547 -1.5850683915147263 ;
		setAttr -k on ".w0";
	createNode transform -n "PathDefClstr5" -p "setup_GP";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -1.053979120721545e-015 ;
		setAttr ".sp" -type "double3" 0 0 -1.053979120721545e-015 ;
	createNode clusterHandle -n "PathDefClstr5Shape" -p "PathDefClstr5";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -1.053979120721545e-015 ;
	createNode pointConstraint -n "PathDefClstr5_pointConstraint1" -p "PathDefClstr5";
		addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle5W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".rst" -type "double3" 0.36023537585887189 3.3729113771020884 -1.2302965687071206 ;
		setAttr -k on ".w0";
	createNode transform -n "PathDefClstr6" -p "setup_GP";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 1 ;
		setAttr ".sp" -type "double3" 0 0 1 ;
	createNode clusterHandle -n "PathDefClstr6Shape" -p "PathDefClstr6";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 1 ;
	createNode pointConstraint -n "PathDefClstr6_pointConstraint1" -p "PathDefClstr6";
		addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle6W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".rst" -type "double3" 0.5 3.1 -0.88 ;
		setAttr -k on ".w0";
	createNode transform -n "PathDefClstr7" -p "setup_GP";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 2 ;
		setAttr ".sp" -type "double3" 0 0 2 ;
	createNode clusterHandle -n "PathDefClstr7Shape" -p "PathDefClstr7";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 2 ;
	createNode pointConstraint -n "PathDefClstr7_pointConstraint1" -p "PathDefClstr7";
		addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle7W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".rst" -type "double3" 0.63214976969740466 2.8075613211333197 -0.5216117967613294 ;
		setAttr -k on ".w0";
	createNode transform -n "PathDefClstr8" -p "setup_GP";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 3.0000000032489975 ;
		setAttr ".sp" -type "double3" 0 0 3.0000000032489975 ;
	createNode clusterHandle -n "PathDefClstr8Shape" -p "PathDefClstr8";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 3.0000000032489975 ;
	createNode pointConstraint -n "PathDefClstr8_pointConstraint1" -p "PathDefClstr8";
		addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle9W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".rst" -type "double3" 0.76825813417913302 2.5245719935317177 -0.16576355541007315 ;
		setAttr -k on ".w0";
	createNode transform -n "PathDefClstr9" -p "setup_GP";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 4 ;
		setAttr ".sp" -type "double3" 0 0 4 ;
	createNode clusterHandle -n "PathDefClstr9Shape" -p "PathDefClstr9";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 3.8333333314269189 ;
	createNode pointConstraint -n "cluster11Handle_pointConstraint1" -p "PathDefClstr9";
		addAttr -ci true -sn "w0" -ln "nurbsCircle9W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		setAttr ".ove" yes;
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".rst" -type "double3" 0 5.5511151231257827e-017 0 ;
		setAttr -k on ".w0";
	createNode orientConstraint -n "cluster11Handle_orientConstraint1" -p "PathDefClstr9";
		addAttr -ci true -sn "w0" -ln "nurbsCircle9W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		setAttr ".ove" yes;
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".lr" -type "double3" 0 180 0 ;
		setAttr ".o" -type "double3" 7.0195835743237771e-015 180 0 ;
		setAttr ".rsrr" -type "double3" 0 360 0 ;
		setAttr -k on ".w0";
	createNode transform -n "stroke" -p "setup_GP";
	createNode stroke -n "strokeShape" -p "stroke";
		setAttr -k off ".v" no;
		setAttr ".mpl" 100000;
		setAttr -l on ".cmd" 2;
		setAttr -l on ".lcm" 2;
		setAttr -l on ".fcm" 2;
		setAttr ".dgr" 3;
		setAttr -s 4 ".omc";
		setAttr ".mnt" yes;
		setAttr ".nml" -type "double3" 0 1 0 ;
		setAttr ".pcv[0].smp" 48;
		setAttr ".spm1" 2;
		setAttr -s 9 ".psc[0:8]"  0 1 3 1 1 3 0.875 1 3 0.75 1 3
			0.625 1 3 0.5 1 3 0.375 1 3 0.25 1 3 0.125 1 3;
		setAttr -s 9 ".psc";
	createNode transform -n "render_GP" -p "root";
		for ($i=0;$i<9;$i++){
			$name = ("width"+$i);
			addAttr -ci true -sn $name -ln $name -at "double";
			setAttr -k on ("."+$name);
		}
	createNode transform -n "rope_GEO" -p "render_GP";
	createNode nurbsSurface -n "rope_GEOShape" -p "rope_GEO";
		setAttr -k off ".v";
		setAttr -s 2 ".iog";
		setAttr ".vir" yes;
		setAttr ".vif" yes;
		setAttr ".tw" yes;
		setAttr ".covm[0]"  0 1 1;
		setAttr ".cdvm[0]"  0 1 1;
		setAttr ".dvu" 0;
		setAttr ".dvv" 0;
		setAttr ".cpr" 4;
		setAttr ".cps" 4;
	createNode transform -n "endB_GEO" -p "render_GP";
	createNode nurbsSurface -n "endB_GEOShape" -p "endB_GEO";
		setAttr -k off ".v";
		setAttr ".vir" yes;
		setAttr ".vif" yes;
		setAttr ".tw" yes;
		setAttr ".covm[0]"  0 1 1;
		setAttr ".cdvm[0]"  0 1 1;
		setAttr ".dvu" 2;
		setAttr ".dvv" 2;
		setAttr ".cpr" 4;
		setAttr ".cps" 16;
	createNode transform -n "endA_GEO" -p "render_GP";
	createNode nurbsSurface -n "endA_GEOShape" -p "endA_GEO";
		setAttr -k off ".v";
		setAttr ".vir" yes;
		setAttr ".vif" yes;
		setAttr ".tw" yes;
		setAttr ".covm[0]"  0 1 1;
		setAttr ".cdvm[0]"  0 1 1;
		setAttr ".dvu" 2;
		setAttr ".dvv" 2;
		setAttr ".cpr" 4;
		setAttr ".cps" 16;
	createNode makeNurbCircle -n "makeNurbCircle1";
	createNode makeNurbCircle -n "makeCircle1";
		setAttr ".c" -type "double3" 0 0 -4 ;
	createNode multiplyDivide -n "multiplyDivide2";
		setAttr ".i2" -type "float3" 0.60000002 0.60000002 0.60000002 ;
	createNode pointOnCurveInfo -n "poc2";
		setAttr ".pr" 7;
	createNode makeNurbCircle -n "makeCircle2";
	createNode pointOnCurveInfo -n "poc3";
		setAttr ".pr" 6;
	createNode makeNurbCircle -n "makeCircle3";
	createNode pointOnCurveInfo -n "poc4";
		setAttr ".pr" 5;
	createNode makeNurbCircle -n "makeCircle4";
	createNode multiplyDivide -n "multiplyDivide4";
		setAttr ".i2" -type "float3" 0.60000002 0.60000002 0.60000002 ;
	createNode pointOnCurveInfo -n "poc5";
		setAttr ".pr" 4;
	createNode makeNurbCircle -n "makeCircle5";
	createNode pointOnCurveInfo -n "poc6";
		setAttr ".pr" 3;
	createNode makeNurbCircle -n "makeCircle6";
	createNode pointOnCurveInfo -n "poc7";
		setAttr ".pr" 2;
	createNode makeNurbCircle -n "makeCircle7";
	createNode multiplyDivide -n "multiplyDivide3";
		setAttr ".i2" -type "float3" 0.60000002 0.60000002 0.60000002 ;
	createNode pointOnCurveInfo -n "poc8";
		setAttr ".pr" 1;
	createNode makeNurbCircle -n "makeCircle8";
	createNode makeNurbCircle -n "makeCircle9";
		setAttr ".c" -type "double3" 0 0 4 ;
	createNode rebuildCurve -n "rebuildCurve1";
		setAttr ".s" 8;
		setAttr ".end" 1;
		setAttr ".kt" no;
	createNode cluster -n "baseClstrBCluster";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster2Set";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster2GroupId";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster2GroupParts";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[1]";
	createNode cluster -n "baseClstrACluster";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster1Set";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster1GroupId";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster1GroupParts";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[0]";
	createNode rebuildCurve -n "rebuildCurve2";
		setAttr ".s" 16;
		setAttr ".tol" 1;
		setAttr ".kr" 0;
		setAttr ".kt" no;
	createNode groupParts -n "groupParts5";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[0]";
	createNode cluster -n "PathDefClstr9Cluster";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster11Set";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster11GroupId";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster11GroupParts";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[0:1]";
	createNode cluster -n "PathDefClstr8Cluster";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster10Set";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster10GroupId";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster10GroupParts";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[2]";
	createNode cluster -n "PathDefClstr7Cluster";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster9Set";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster9GroupId";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster9GroupParts";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[3]";
	createNode cluster -n "PathDefClstr6Cluster";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster8Set";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster8GroupId";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster8GroupParts";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[4]";
	createNode cluster -n "PathDefClstr5Cluster";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster7Set";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster7GroupId";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster7GroupParts";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[5]";
	createNode cluster -n "PathDefClstr4Cluster";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster6Set";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster6GroupId";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster6GroupParts";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[6]";
	createNode cluster -n "PathDefClstr3Cluster";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster5Set";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster5GroupId";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster5GroupParts";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[7]";
	createNode cluster -n "PathDefClstr2Cluster";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster4Set";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster4GroupId";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster4GroupParts";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[8]";
	createNode cluster -n "PathDefClstr1Cluster";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster3Set";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster3GroupId";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster3GroupParts";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[9:10]";
	createNode tweak -n "tweak2";
	createNode objectSet -n "tweakSet2";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "groupId4";
		setAttr ".ihi" 0;
	createNode groupParts -n "groupParts4";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[*]";
	createNode groupId -n "groupId5";
		setAttr ".ihi" 0;
	createNode objectSet -n "Lockset";
		setAttr ".ihi" 0;
	createNode geoConnector -n "geoConnector1";
	createNode brush -n "brush";
		setAttr ".dep" yes;
		setAttr ".mdp" no;
		setAttr ".mdc" no;
		setAttr ".mda" no;
		setAttr ".brt" 5;
		setAttr ".sft" 0;
		setAttr ".rll" yes;
		setAttr ".lcl[0]"  0 0.5 1;
		setAttr ".pcl[0]"  0 0.5 1;
		setAttr ".wsc[0]"  0 1 1;
		setAttr ".lws[0]"  0 1 1;
		setAttr ".pws[0]"  0 1 1;
		setAttr ".tls[0]"  0 1 1;
		setAttr -s 3 ".env";
		setAttr ".env[0].envp" 0.2;
		setAttr ".env[0].envc" -type "float3" 0 0 0.15 ;
		setAttr ".env[0].envi" 2;
		setAttr ".env[1].envp" 0.5;
		setAttr ".env[1].envc" -type "float3" 0.5 0.55000001 0.7 ;
		setAttr ".env[1].envi" 2;
		setAttr ".env[2].envp" 1;
		setAttr ".env[2].envc" -type "float3" 0 0.1 0.45 ;
		setAttr ".env[2].envi" 2;
		setAttr ".rro[0]"  0 1 1;
		setAttr ".edc" yes;
	createNode plusMinusAverage -n "plusMinusAverage1";
		setAttr ".op" 2;
		setAttr -s 2 ".i1";
		setAttr -s 2 ".i1";	
	createNode reverse -n "reverse2";
	createNode multiplyDivide -n "multiplyDivide5";
		setAttr ".op" 2;
	createNode addDoubleLinear -n "addDoubleLinear1";
	createNode reverse -n "reverse3";
	createNode distanceBetween -n "distanceBetween1";
	for ($i=1;$i<11;$i++){
		createNode multDoubleLinear -n ("multDoubleLinear"+$i);
		setAttr ".i2" -0.5;
	}
	for ($i=1;$i<8;$i++){
		createNode plusMinusAverage -n ("pma"+$i);
		setAttr ".op" 3;
		setAttr -s 2 ".i1";
		setAttr -s 2 ".i1";
	}
	createNode loft -n "loft1";
		setAttr -s 4 ".ic";
		setAttr ".c" yes;
		setAttr -s 4 ".r[0:3]" no no no no;
	createNode materialInfo -n "materialInfo2";
	createNode shadingEngine -n "blinn1SG";
		setAttr -s 3 ".dsm";
		setAttr ".ro" yes;
	createNode blinn -n "blinn1";
		setAttr ".bnm" -type "string" "ed";
		setAttr ".ic" -type "float3" 0.35538 0.35538 0.35538 ;
		setAttr ".tcf" 0;
		setAttr ".trsd" 0.05000000074505806;
	createNode checker -n "checker1";
		setAttr ".bnm" -type "string" "ed";
		setAttr ".c1" -type "float3" 0.43801999 0.43801999 0.43801999 ;
		setAttr ".c2" -type "float3" 0.61984003 0.61984003 0.61984003 ;
	createNode place2dTexture -n "place2dTexture1";
		setAttr ".bnm" -type "string" "ed";
		setAttr ".rf" 90;
		setAttr ".re" -type "float2" 0.5 10 ;
	createNode reverseSurface -n "reverseSurface1";
	createNode planarTrimSurface -n "planarTrimSurface1";
		setAttr ".tol" 0.00032808400000000003;
	createNode curveFromSurfaceIso -n "curveFromSurfaceIso1";
		setAttr ".ihi" 1;
		setAttr ".max" 0;
		setAttr ".iv" 46;
	createNode planarTrimSurface -n "planarTrimSurface2";
		setAttr ".tol" 0.00035;
	createNode curveFromSurfaceIso -n "curveFromSurfaceIso2";
		setAttr ".ihi" 1;
		setAttr ".max" 0;
	createNode lightLinker -s -n "lightLinker1";
		setAttr -s 5 ".lnk";
		setAttr -s 5 ".slnk";
	select -ne :time1;
		setAttr -l on ".o" 0;
	select -ne :hardwareRenderingGlobals;
		setAttr ".vac" 2;
		setAttr ".hfc" -type "float3" 0.2784 0.38350001 0.1804 ;
	select -ne :renderPartition;
		setAttr -s 5 ".st";
	select -ne :renderGlobalsList1;
	select -ne :defaultShaderList1;
		setAttr -s 7 ".s";
	select -ne :postProcessList1;
		setAttr -s 2 ".p";
	select -ne :defaultRenderUtilityList1;
		setAttr -s 29 ".u";
	select -ne :defaultRenderingList1;
	select -ne :defaultTextureList1;
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
		setAttr ".sdf" -type "string" "";
		setAttr ".ef" 99;
		setAttr -l on ".bfs";
		setAttr ".ep" 1;
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
		setAttr ".dar" 1.7769999504089355;
		setAttr ".ldar" yes;
		setAttr ".off" no;
	select -ne :defaultColorMgtGlobals;
		setAttr ".cme" no;
	select -ne :hardwareRenderGlobals;
		addAttr -ci true -sn "ani" -ln "animation" -min 0 -max 1 -at "bool";
		setAttr ".ctrs" 256;
		setAttr ".btrs" 512;
		setAttr ".enpt" no;
		setAttr ".hgcd" no;
		setAttr ".hgci" no;
		setAttr -k on ".ani";
	select -ne :ikSystem;
		setAttr -s 4 ".sol";
	connectAttr "makeNurbCircle1.oc" "CTLShape.cr";
	connectAttr "baseClstrB.t" "rope_1_CTL_GP.t";
	connectAttr "CTL.s" "rope_1_CTL_GP.s";
	connectAttr "rope_1_CTL_GP_aimConstraint1.crx" "rope_1_CTL_GP.rx" -l on;
	connectAttr "rope_1_CTL_GP_aimConstraint1.cry" "rope_1_CTL_GP.ry" -l on;
	connectAttr "rope_1_CTL_GP_aimConstraint1.crz" "rope_1_CTL_GP.rz" -l on;
	connectAttr "makeCircle1.oc" "rope_1_CTLShape.cr";
	connectAttr "rope_1_CTL_GP.pim" "rope_1_CTL_GP_aimConstraint1.cpim";
	connectAttr "rope_1_CTL_GP.t" "rope_1_CTL_GP_aimConstraint1.ct";
	connectAttr "rope_1_CTL_GP.rp" "rope_1_CTL_GP_aimConstraint1.crp";
	connectAttr "rope_1_CTL_GP.rpt" "rope_1_CTL_GP_aimConstraint1.crt";
	connectAttr "rope_1_CTL_GP.ro" "rope_1_CTL_GP_aimConstraint1.cro";
	connectAttr "RopeEndA.t" "rope_1_CTL_GP_aimConstraint1.tg[0].tt";
	connectAttr "RopeEndA.rp" "rope_1_CTL_GP_aimConstraint1.tg[0].trp";
	connectAttr "RopeEndA.rpt" "rope_1_CTL_GP_aimConstraint1.tg[0].trt";
	connectAttr "RopeEndA.pm" "rope_1_CTL_GP_aimConstraint1.tg[0].tpm";
	connectAttr "rope_1_CTL_GP_aimConstraint1.w0" "rope_1_CTL_GP_aimConstraint1.tg[0].tw"
			;
	connectAttr "up.wm" "rope_1_CTL_GP_aimConstraint1.wum";
	connectAttr "poc2.p" "loc2.t";
	connectAttr "rope_1_CTL_GP.r" "loc2.r";
	connectAttr "CTL.s" "loc2.s";
	connectAttr "makeCircle2.oc" "rope_2_CTLShape.cr";
	connectAttr "poc3.p" "loc3.t";
	connectAttr "rope_1_CTL_GP.r" "loc3.r";
	connectAttr "CTL.s" "loc3.s";
	connectAttr "makeCircle3.oc" "rope_3_CTLShape.cr";
	connectAttr "poc4.p" "loc4.t";
	connectAttr "rope_1_CTL_GP.r" "loc4.r";
	connectAttr "CTL.s" "loc4.s";
	connectAttr "makeCircle4.oc" "rope_4_CTLShape.cr";
	connectAttr "poc5.p" "loc5.t";
	connectAttr "rope_1_CTL_GP.r" "loc5.r";
	connectAttr "CTL.s" "loc5.s";
	connectAttr "makeCircle5.oc" "rope_5_CTLShape.cr";
	connectAttr "poc6.p" "loc6.t";
	connectAttr "rope_1_CTL_GP.r" "loc6.r";
	connectAttr "CTL.s" "loc6.s";
	connectAttr "makeCircle6.oc" "rope_6_CTLShape.cr";
	connectAttr "poc7.p" "loc7.t";
	connectAttr "rope_1_CTL_GP.r" "loc7.r";
	connectAttr "CTL.s" "loc7.s";
	connectAttr "makeCircle7.oc" "rope_7_CTLShape.cr";
	connectAttr "poc8.p" "loc8.t";
	connectAttr "rope_1_CTL_GP.r" "loc8.r";
	connectAttr "CTL.s" "loc8.s";
	connectAttr "makeCircle8.oc" "rope_8_CTLShape.cr";
	connectAttr "baseClstrA.t" "rope_9_CTL_GP.t";
	connectAttr "rope_1_CTL_GP.r" "rope_9_CTL_GP.r";
	connectAttr "CTL.s" "rope_9_CTL_GP.s";
	connectAttr "makeCircle9.oc" "rope_9_CTLShape.cr";
	connectAttr "CTL_GP.guts" "setup_GP.v";
	connectAttr "rebuildCurve1.oc" "basecurveShape.cr";
	connectAttr "cluster1GroupId.id" "basecurveShape.iog.og[0].gid";
	connectAttr "cluster1Set.mwc" "basecurveShape.iog.og[0].gco";
	connectAttr "cluster2GroupId.id" "basecurveShape.iog.og[2].gid";
	connectAttr "cluster2Set.mwc" "basecurveShape.iog.og[2].gco";
	connectAttr "cluster1Handle_pointConstraint1.ctx" "baseClstrA.tx";
	connectAttr "cluster1Handle_pointConstraint1.cty" "baseClstrA.ty";
	connectAttr "cluster1Handle_pointConstraint1.ctz" "baseClstrA.tz";
	connectAttr "baseClstrA.pim" "cluster1Handle_pointConstraint1.cpim";
	connectAttr "baseClstrA.rp" "cluster1Handle_pointConstraint1.crp";
	connectAttr "baseClstrA.rpt" "cluster1Handle_pointConstraint1.crt";
	connectAttr "RopeEndA.t" "cluster1Handle_pointConstraint1.tg[0].tt";
	connectAttr "RopeEndA.rp" "cluster1Handle_pointConstraint1.tg[0].trp";
	connectAttr "RopeEndA.rpt" "cluster1Handle_pointConstraint1.tg[0].trt";
	connectAttr "RopeEndA.pm" "cluster1Handle_pointConstraint1.tg[0].tpm";
	connectAttr "cluster1Handle_pointConstraint1.w0" "cluster1Handle_pointConstraint1.tg[0].tw"
			;
	connectAttr "cluster2Handle_pointConstraint1.ctx" "baseClstrB.tx";
	connectAttr "cluster2Handle_pointConstraint1.cty" "baseClstrB.ty";
	connectAttr "cluster2Handle_pointConstraint1.ctz" "baseClstrB.tz";
	connectAttr "baseClstrB.pim" "cluster2Handle_pointConstraint1.cpim";
	connectAttr "baseClstrB.rp" "cluster2Handle_pointConstraint1.crp";
	connectAttr "baseClstrB.rpt" "cluster2Handle_pointConstraint1.crt";
	connectAttr "RopeEndB.t" "cluster2Handle_pointConstraint1.tg[0].tt";
	connectAttr "RopeEndB.rp" "cluster2Handle_pointConstraint1.tg[0].trp";
	connectAttr "RopeEndB.rpt" "cluster2Handle_pointConstraint1.tg[0].trt";
	connectAttr "RopeEndB.pm" "cluster2Handle_pointConstraint1.tg[0].tpm";
	connectAttr "cluster2Handle_pointConstraint1.w0" "cluster2Handle_pointConstraint1.tg[0].tw"
			;
	connectAttr "rebuildCurve2.oc" "path_curveShape.cr";
	connectAttr "tweak2.pl[0].cp[0]" "path_curveShape.twl";
	connectAttr "cluster3GroupId.id" "path_curveShape.iog.og[5].gid";
	connectAttr "cluster3Set.mwc" "path_curveShape.iog.og[5].gco";
	connectAttr "groupId4.id" "path_curveShape.iog.og[6].gid";
	connectAttr "tweakSet2.mwc" "path_curveShape.iog.og[6].gco";
	connectAttr "cluster4GroupId.id" "path_curveShape.iog.og[7].gid";
	connectAttr "cluster4Set.mwc" "path_curveShape.iog.og[7].gco";
	connectAttr "cluster5GroupId.id" "path_curveShape.iog.og[8].gid";
	connectAttr "cluster5Set.mwc" "path_curveShape.iog.og[8].gco";
	connectAttr "cluster6GroupId.id" "path_curveShape.iog.og[9].gid";
	connectAttr "cluster6Set.mwc" "path_curveShape.iog.og[9].gco";
	connectAttr "cluster7GroupId.id" "path_curveShape.iog.og[10].gid";
	connectAttr "cluster7Set.mwc" "path_curveShape.iog.og[10].gco";
	connectAttr "cluster8GroupId.id" "path_curveShape.iog.og[11].gid";
	connectAttr "cluster8Set.mwc" "path_curveShape.iog.og[11].gco";
	connectAttr "cluster9GroupId.id" "path_curveShape.iog.og[12].gid";
	connectAttr "cluster9Set.mwc" "path_curveShape.iog.og[12].gco";
	connectAttr "cluster10GroupId.id" "path_curveShape.iog.og[13].gid";
	connectAttr "cluster10Set.mwc" "path_curveShape.iog.og[13].gco";
	connectAttr "cluster11GroupId.id" "path_curveShape.iog.og[14].gid";
	connectAttr "cluster11Set.mwc" "path_curveShape.iog.og[14].gco";
	connectAttr "groupId5.id" "path_curveShape.iog.og[16].gid";
	connectAttr "Lockset.mwc" "path_curveShape.iog.og[16].gco";
	connectAttr ":time1.o" "Lock.ct";
	connectAttr "geoConnector1.cpc[0]" "Lock.ocd";
	connectAttr "geoConnector1.ccl[0]" "Lock.t";
	connectAttr "geoConnector1.cpp[0]" "Lock.opd";
	connectAttr "geoConnector1.cpv[0]" "Lock.ovd";
	connectAttr "geoConnector1.swg" "Lock.swge";
	connectAttr "cluster3Handle_pointConstraint1.ctx" "PathDefClstr1.tx";
	connectAttr "cluster3Handle_pointConstraint1.cty" "PathDefClstr1.ty";
	connectAttr "cluster3Handle_pointConstraint1.ctz" "PathDefClstr1.tz";
	connectAttr "cluster3Handle_orientConstraint1.crx" "PathDefClstr1.rx";
	connectAttr "cluster3Handle_orientConstraint1.cry" "PathDefClstr1.ry";
	connectAttr "cluster3Handle_orientConstraint1.crz" "PathDefClstr1.rz";
	connectAttr "PathDefClstr1.pim" "cluster3Handle_pointConstraint1.cpim";
	connectAttr "PathDefClstr1.rp" "cluster3Handle_pointConstraint1.crp";
	connectAttr "PathDefClstr1.rpt" "cluster3Handle_pointConstraint1.crt";
	connectAttr "rope_1_CTL.t" "cluster3Handle_pointConstraint1.tg[0].tt";
	connectAttr "rope_1_CTL.rp" "cluster3Handle_pointConstraint1.tg[0].trp";
	connectAttr "rope_1_CTL.rpt" "cluster3Handle_pointConstraint1.tg[0].trt";
	connectAttr "rope_1_CTL.pm" "cluster3Handle_pointConstraint1.tg[0].tpm";
	connectAttr "cluster3Handle_pointConstraint1.w0" "cluster3Handle_pointConstraint1.tg[0].tw"
			;
	connectAttr "PathDefClstr1.ro" "cluster3Handle_orientConstraint1.cro";
	connectAttr "PathDefClstr1.pim" "cluster3Handle_orientConstraint1.cpim";
	connectAttr "rope_1_CTL.r" "cluster3Handle_orientConstraint1.tg[0].tr";
	connectAttr "rope_1_CTL.ro" "cluster3Handle_orientConstraint1.tg[0].tro";
	connectAttr "rope_1_CTL.pm" "cluster3Handle_orientConstraint1.tg[0].tpm";
	connectAttr "cluster3Handle_orientConstraint1.w0" "cluster3Handle_orientConstraint1.tg[0].tw"
			;
	connectAttr "PathDefClstr2_pointConstraint1.ctx" "PathDefClstr2.tx";
	connectAttr "PathDefClstr2_pointConstraint1.cty" "PathDefClstr2.ty";
	connectAttr "PathDefClstr2_pointConstraint1.ctz" "PathDefClstr2.tz";
	connectAttr "PathDefClstr2.pim" "PathDefClstr2_pointConstraint1.cpim";
	connectAttr "PathDefClstr2.rp" "PathDefClstr2_pointConstraint1.crp";
	connectAttr "PathDefClstr2.rpt" "PathDefClstr2_pointConstraint1.crt";
	connectAttr "rope_2_CTL.t" "PathDefClstr2_pointConstraint1.tg[0].tt";
	connectAttr "rope_2_CTL.rp" "PathDefClstr2_pointConstraint1.tg[0].trp";
	connectAttr "rope_2_CTL.rpt" "PathDefClstr2_pointConstraint1.tg[0].trt";
	connectAttr "rope_2_CTL.pm" "PathDefClstr2_pointConstraint1.tg[0].tpm";
	connectAttr "PathDefClstr2_pointConstraint1.w0" "PathDefClstr2_pointConstraint1.tg[0].tw"
			;
	connectAttr "PathDefClstr3_pointConstraint1.ctx" "PathDefClstr3.tx";
	connectAttr "PathDefClstr3_pointConstraint1.cty" "PathDefClstr3.ty";
	connectAttr "PathDefClstr3_pointConstraint1.ctz" "PathDefClstr3.tz";
	connectAttr "PathDefClstr3.pim" "PathDefClstr3_pointConstraint1.cpim";
	connectAttr "PathDefClstr3.rp" "PathDefClstr3_pointConstraint1.crp";
	connectAttr "PathDefClstr3.rpt" "PathDefClstr3_pointConstraint1.crt";
	connectAttr "rope_3_CTL.t" "PathDefClstr3_pointConstraint1.tg[0].tt";
	connectAttr "rope_3_CTL.rp" "PathDefClstr3_pointConstraint1.tg[0].trp";
	connectAttr "rope_3_CTL.rpt" "PathDefClstr3_pointConstraint1.tg[0].trt";
	connectAttr "rope_3_CTL.pm" "PathDefClstr3_pointConstraint1.tg[0].tpm";
	connectAttr "PathDefClstr3_pointConstraint1.w0" "PathDefClstr3_pointConstraint1.tg[0].tw"
			;
	connectAttr "PathDefClstr4_pointConstraint1.ctx" "PathDefClstr4.tx";
	connectAttr "PathDefClstr4_pointConstraint1.cty" "PathDefClstr4.ty";
	connectAttr "PathDefClstr4_pointConstraint1.ctz" "PathDefClstr4.tz";
	connectAttr "PathDefClstr4.pim" "PathDefClstr4_pointConstraint1.cpim";
	connectAttr "PathDefClstr4.rp" "PathDefClstr4_pointConstraint1.crp";
	connectAttr "PathDefClstr4.rpt" "PathDefClstr4_pointConstraint1.crt";
	connectAttr "rope_4_CTL.t" "PathDefClstr4_pointConstraint1.tg[0].tt";
	connectAttr "rope_4_CTL.rp" "PathDefClstr4_pointConstraint1.tg[0].trp";
	connectAttr "rope_4_CTL.rpt" "PathDefClstr4_pointConstraint1.tg[0].trt";
	connectAttr "rope_4_CTL.pm" "PathDefClstr4_pointConstraint1.tg[0].tpm";
	connectAttr "PathDefClstr4_pointConstraint1.w0" "PathDefClstr4_pointConstraint1.tg[0].tw"
			;
	connectAttr "PathDefClstr5_pointConstraint1.ctx" "PathDefClstr5.tx";
	connectAttr "PathDefClstr5_pointConstraint1.cty" "PathDefClstr5.ty";
	connectAttr "PathDefClstr5_pointConstraint1.ctz" "PathDefClstr5.tz";
	connectAttr "PathDefClstr5.pim" "PathDefClstr5_pointConstraint1.cpim";
	connectAttr "PathDefClstr5.rp" "PathDefClstr5_pointConstraint1.crp";
	connectAttr "PathDefClstr5.rpt" "PathDefClstr5_pointConstraint1.crt";
	connectAttr "rope_5_CTL.t" "PathDefClstr5_pointConstraint1.tg[0].tt";
	connectAttr "rope_5_CTL.rp" "PathDefClstr5_pointConstraint1.tg[0].trp";
	connectAttr "rope_5_CTL.rpt" "PathDefClstr5_pointConstraint1.tg[0].trt";
	connectAttr "rope_5_CTL.pm" "PathDefClstr5_pointConstraint1.tg[0].tpm";
	connectAttr "PathDefClstr5_pointConstraint1.w0" "PathDefClstr5_pointConstraint1.tg[0].tw"
			;
	connectAttr "PathDefClstr6_pointConstraint1.ctx" "PathDefClstr6.tx";
	connectAttr "PathDefClstr6_pointConstraint1.cty" "PathDefClstr6.ty";
	connectAttr "PathDefClstr6_pointConstraint1.ctz" "PathDefClstr6.tz";
	connectAttr "PathDefClstr6.pim" "PathDefClstr6_pointConstraint1.cpim";
	connectAttr "PathDefClstr6.rp" "PathDefClstr6_pointConstraint1.crp";
	connectAttr "PathDefClstr6.rpt" "PathDefClstr6_pointConstraint1.crt";
	connectAttr "rope_6_CTL.t" "PathDefClstr6_pointConstraint1.tg[0].tt";
	connectAttr "rope_6_CTL.rp" "PathDefClstr6_pointConstraint1.tg[0].trp";
	connectAttr "rope_6_CTL.rpt" "PathDefClstr6_pointConstraint1.tg[0].trt";
	connectAttr "rope_6_CTL.pm" "PathDefClstr6_pointConstraint1.tg[0].tpm";
	connectAttr "PathDefClstr6_pointConstraint1.w0" "PathDefClstr6_pointConstraint1.tg[0].tw"
			;
	connectAttr "PathDefClstr7_pointConstraint1.ctx" "PathDefClstr7.tx";
	connectAttr "PathDefClstr7_pointConstraint1.cty" "PathDefClstr7.ty";
	connectAttr "PathDefClstr7_pointConstraint1.ctz" "PathDefClstr7.tz";
	connectAttr "PathDefClstr7.pim" "PathDefClstr7_pointConstraint1.cpim";
	connectAttr "PathDefClstr7.rp" "PathDefClstr7_pointConstraint1.crp";
	connectAttr "PathDefClstr7.rpt" "PathDefClstr7_pointConstraint1.crt";
	connectAttr "rope_7_CTL.t" "PathDefClstr7_pointConstraint1.tg[0].tt";
	connectAttr "rope_7_CTL.rp" "PathDefClstr7_pointConstraint1.tg[0].trp";
	connectAttr "rope_7_CTL.rpt" "PathDefClstr7_pointConstraint1.tg[0].trt";
	connectAttr "rope_7_CTL.pm" "PathDefClstr7_pointConstraint1.tg[0].tpm";
	connectAttr "PathDefClstr7_pointConstraint1.w0" "PathDefClstr7_pointConstraint1.tg[0].tw"
			;
	connectAttr "PathDefClstr8_pointConstraint1.ctx" "PathDefClstr8.tx";
	connectAttr "PathDefClstr8_pointConstraint1.cty" "PathDefClstr8.ty";
	connectAttr "PathDefClstr8_pointConstraint1.ctz" "PathDefClstr8.tz";
	connectAttr "PathDefClstr8.pim" "PathDefClstr8_pointConstraint1.cpim";
	connectAttr "PathDefClstr8.rp" "PathDefClstr8_pointConstraint1.crp";
	connectAttr "PathDefClstr8.rpt" "PathDefClstr8_pointConstraint1.crt";
	connectAttr "rope_8_CTL.t" "PathDefClstr8_pointConstraint1.tg[0].tt";
	connectAttr "rope_8_CTL.rp" "PathDefClstr8_pointConstraint1.tg[0].trp";
	connectAttr "rope_8_CTL.rpt" "PathDefClstr8_pointConstraint1.tg[0].trt";
	connectAttr "rope_8_CTL.pm" "PathDefClstr8_pointConstraint1.tg[0].tpm";
	connectAttr "PathDefClstr8_pointConstraint1.w0" "PathDefClstr8_pointConstraint1.tg[0].tw"
			;
	connectAttr "cluster11Handle_pointConstraint1.ctx" "PathDefClstr9.tx";
	connectAttr "cluster11Handle_pointConstraint1.cty" "PathDefClstr9.ty";
	connectAttr "cluster11Handle_pointConstraint1.ctz" "PathDefClstr9.tz";
	connectAttr "cluster11Handle_orientConstraint1.crx" "PathDefClstr9.rx";
	connectAttr "cluster11Handle_orientConstraint1.cry" "PathDefClstr9.ry";
	connectAttr "cluster11Handle_orientConstraint1.crz" "PathDefClstr9.rz";
	connectAttr "PathDefClstr9.pim" "cluster11Handle_pointConstraint1.cpim";
	connectAttr "PathDefClstr9.rp" "cluster11Handle_pointConstraint1.crp";
	connectAttr "PathDefClstr9.rpt" "cluster11Handle_pointConstraint1.crt";
	connectAttr "rope_9_CTL.t" "cluster11Handle_pointConstraint1.tg[0].tt";
	connectAttr "rope_9_CTL.rp" "cluster11Handle_pointConstraint1.tg[0].trp";
	connectAttr "rope_9_CTL.rpt" "cluster11Handle_pointConstraint1.tg[0].trt";
	connectAttr "rope_9_CTL.pm" "cluster11Handle_pointConstraint1.tg[0].tpm";
	connectAttr "cluster11Handle_pointConstraint1.w0" "cluster11Handle_pointConstraint1.tg[0].tw"
			;
	connectAttr "PathDefClstr9.ro" "cluster11Handle_orientConstraint1.cro";
	connectAttr "PathDefClstr9.pim" "cluster11Handle_orientConstraint1.cpim";
	connectAttr "rope_9_CTL.r" "cluster11Handle_orientConstraint1.tg[0].tr";
	connectAttr "rope_9_CTL.ro" "cluster11Handle_orientConstraint1.tg[0].tro";
	connectAttr "rope_9_CTL.pm" "cluster11Handle_orientConstraint1.tg[0].tpm";
	connectAttr "cluster11Handle_orientConstraint1.w0" "cluster11Handle_orientConstraint1.tg[0].tw"
			;
	connectAttr "brush.obr" "strokeShape.brs";
	connectAttr "path_curveShape.ws" "strokeShape.pcv[0].crv";
	connectAttr "render_GP.width8" "strokeShape.psc[0].pscfv";
	connectAttr "render_GP.width0" "strokeShape.psc[1].pscfv";
	connectAttr "render_GP.width1" "strokeShape.psc[2].pscfv";
	connectAttr "render_GP.width2" "strokeShape.psc[3].pscfv";
	connectAttr "render_GP.width3" "strokeShape.psc[4].pscfv";
	connectAttr "render_GP.width4" "strokeShape.psc[5].pscfv";
	connectAttr "render_GP.width5" "strokeShape.psc[6].pscfv";
	connectAttr "render_GP.width6" "strokeShape.psc[7].pscfv";
	connectAttr "render_GP.width7" "strokeShape.psc[8].pscfv";
	connectAttr "RopeEndA.clip" "strokeShape.mnc";
	connectAttr "reverse2.oy" "strokeShape.mxc";
	connectAttr "addDoubleLinear1.o" "strokeShape.sdn";
	connectAttr "CTL_GP.meshDisplay" "render_GP.ove";
	connectAttr "CTL_GP.meshDisplay" "render_GP.ovdt";
	connectAttr "multDoubleLinear2.o" "render_GP.width0";
	connectAttr "multDoubleLinear9.o" "render_GP.width1";
	connectAttr "multDoubleLinear8.o" "render_GP.width2";
	connectAttr "multDoubleLinear7.o" "render_GP.width3";
	connectAttr "multDoubleLinear6.o" "render_GP.width4";
	connectAttr "multDoubleLinear5.o" "render_GP.width5";
	connectAttr "multDoubleLinear4.o" "render_GP.width6";
	connectAttr "multDoubleLinear3.o" "render_GP.width7";
	connectAttr "multDoubleLinear10.o" "render_GP.width8";
	connectAttr "loft1.os" "rope_GEOShape.cr";
	connectAttr "reverseSurface1.os" "endB_GEOShape.cr";
	connectAttr "planarTrimSurface2.os" "endA_GEOShape.cr";
	connectAttr "multiplyDivide2.ox" "makeCircle1.r";
	connectAttr "render_GP.width0" "multiplyDivide2.i1x";
	connectAttr "render_GP.width1" "multiplyDivide2.i1y";
	connectAttr "render_GP.width2" "multiplyDivide2.i1z";
	connectAttr "basecurveShape.ws" "poc2.ic";
	connectAttr "multiplyDivide2.oy" "makeCircle2.r";
	connectAttr "basecurveShape.ws" "poc3.ic";
	connectAttr "multiplyDivide2.oz" "makeCircle3.r";
	connectAttr "basecurveShape.ws" "poc4.ic";
	connectAttr "multiplyDivide4.ox" "makeCircle4.r";
	connectAttr "render_GP.width3" "multiplyDivide4.i1x";
	connectAttr "render_GP.width4" "multiplyDivide4.i1y";
	connectAttr "render_GP.width5" "multiplyDivide4.i1z";
	connectAttr "basecurveShape.ws" "poc5.ic";
	connectAttr "multiplyDivide4.oy" "makeCircle5.r";
	connectAttr "basecurveShape.ws" "poc6.ic";
	connectAttr "multiplyDivide4.oz" "makeCircle6.r";
	connectAttr "basecurveShape.ws" "poc7.ic";
	connectAttr "multiplyDivide3.ox" "makeCircle7.r";
	connectAttr "render_GP.width6" "multiplyDivide3.i1x";
	connectAttr "render_GP.width7" "multiplyDivide3.i1y";
	connectAttr "render_GP.width8" "multiplyDivide3.i1z";
	connectAttr "basecurveShape.ws" "poc8.ic";
	connectAttr "multiplyDivide3.oy" "makeCircle8.r";
	connectAttr "multiplyDivide3.oz" "makeCircle9.r";
	connectAttr "baseClstrBCluster.og[0]" "rebuildCurve1.ic";
	connectAttr "cluster2GroupParts.og" "baseClstrBCluster.ip[0].ig";
	connectAttr "cluster2GroupId.id" "baseClstrBCluster.ip[0].gi";
	connectAttr "baseClstrB.wm" "baseClstrBCluster.ma";
	connectAttr "baseClstrBShape.x" "baseClstrBCluster.x";
	connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
	connectAttr "basecurveShape.iog.og[2]" "cluster2Set.dsm" -na;
	connectAttr "baseClstrBCluster.msg" "cluster2Set.ub[0]";
	connectAttr "baseClstrACluster.og[0]" "cluster2GroupParts.ig";
	connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
	connectAttr "cluster1GroupParts.og" "baseClstrACluster.ip[0].ig";
	connectAttr "cluster1GroupId.id" "baseClstrACluster.ip[0].gi";
	connectAttr "baseClstrA.wm" "baseClstrACluster.ma";
	connectAttr "baseClstrAShape.x" "baseClstrACluster.x";
	connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
	connectAttr "basecurveShape.iog.og[0]" "cluster1Set.dsm" -na;
	connectAttr "baseClstrACluster.msg" "cluster1Set.ub[0]";
	connectAttr "basecurveShape1Orig.ws" "cluster1GroupParts.ig";
	connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
	connectAttr "groupParts5.og" "rebuildCurve2.ic";
	connectAttr "PathDefClstr9Cluster.og[0]" "groupParts5.ig";
	connectAttr "groupId5.id" "groupParts5.gi";
	connectAttr "cluster11GroupParts.og" "PathDefClstr9Cluster.ip[0].ig";
	connectAttr "cluster11GroupId.id" "PathDefClstr9Cluster.ip[0].gi";
	connectAttr "PathDefClstr9.wm" "PathDefClstr9Cluster.ma";
	connectAttr "PathDefClstr9Shape.x" "PathDefClstr9Cluster.x";
	connectAttr "cluster11GroupId.msg" "cluster11Set.gn" -na;
	connectAttr "path_curveShape.iog.og[14]" "cluster11Set.dsm" -na;
	connectAttr "PathDefClstr9Cluster.msg" "cluster11Set.ub[0]";
	connectAttr "PathDefClstr8Cluster.og[0]" "cluster11GroupParts.ig";
	connectAttr "cluster11GroupId.id" "cluster11GroupParts.gi";
	connectAttr "cluster10GroupParts.og" "PathDefClstr8Cluster.ip[0].ig";
	connectAttr "cluster10GroupId.id" "PathDefClstr8Cluster.ip[0].gi";
	connectAttr "PathDefClstr8.wm" "PathDefClstr8Cluster.ma";
	connectAttr "PathDefClstr8Shape.x" "PathDefClstr8Cluster.x";
	connectAttr "cluster10GroupId.msg" "cluster10Set.gn" -na;
	connectAttr "path_curveShape.iog.og[13]" "cluster10Set.dsm" -na;
	connectAttr "PathDefClstr8Cluster.msg" "cluster10Set.ub[0]";
	connectAttr "PathDefClstr7Cluster.og[0]" "cluster10GroupParts.ig";
	connectAttr "cluster10GroupId.id" "cluster10GroupParts.gi";
	connectAttr "cluster9GroupParts.og" "PathDefClstr7Cluster.ip[0].ig";
	connectAttr "cluster9GroupId.id" "PathDefClstr7Cluster.ip[0].gi";
	connectAttr "PathDefClstr7.wm" "PathDefClstr7Cluster.ma";
	connectAttr "PathDefClstr7Shape.x" "PathDefClstr7Cluster.x";
	connectAttr "cluster9GroupId.msg" "cluster9Set.gn" -na;
	connectAttr "path_curveShape.iog.og[12]" "cluster9Set.dsm" -na;
	connectAttr "PathDefClstr7Cluster.msg" "cluster9Set.ub[0]";
	connectAttr "PathDefClstr6Cluster.og[0]" "cluster9GroupParts.ig";
	connectAttr "cluster9GroupId.id" "cluster9GroupParts.gi";
	connectAttr "cluster8GroupParts.og" "PathDefClstr6Cluster.ip[0].ig";
	connectAttr "cluster8GroupId.id" "PathDefClstr6Cluster.ip[0].gi";
	connectAttr "PathDefClstr6.wm" "PathDefClstr6Cluster.ma";
	connectAttr "PathDefClstr6Shape.x" "PathDefClstr6Cluster.x";
	connectAttr "cluster8GroupId.msg" "cluster8Set.gn" -na;
	connectAttr "path_curveShape.iog.og[11]" "cluster8Set.dsm" -na;
	connectAttr "PathDefClstr6Cluster.msg" "cluster8Set.ub[0]";
	connectAttr "PathDefClstr5Cluster.og[0]" "cluster8GroupParts.ig";
	connectAttr "cluster8GroupId.id" "cluster8GroupParts.gi";
	connectAttr "cluster7GroupParts.og" "PathDefClstr5Cluster.ip[0].ig";
	connectAttr "cluster7GroupId.id" "PathDefClstr5Cluster.ip[0].gi";
	connectAttr "PathDefClstr5.wm" "PathDefClstr5Cluster.ma";
	connectAttr "PathDefClstr5Shape.x" "PathDefClstr5Cluster.x";
	connectAttr "cluster7GroupId.msg" "cluster7Set.gn" -na;
	connectAttr "path_curveShape.iog.og[10]" "cluster7Set.dsm" -na;
	connectAttr "PathDefClstr5Cluster.msg" "cluster7Set.ub[0]";
	connectAttr "PathDefClstr4Cluster.og[0]" "cluster7GroupParts.ig";
	connectAttr "cluster7GroupId.id" "cluster7GroupParts.gi";
	connectAttr "cluster6GroupParts.og" "PathDefClstr4Cluster.ip[0].ig";
	connectAttr "cluster6GroupId.id" "PathDefClstr4Cluster.ip[0].gi";
	connectAttr "PathDefClstr4.wm" "PathDefClstr4Cluster.ma";
	connectAttr "PathDefClstr4Shape.x" "PathDefClstr4Cluster.x";
	connectAttr "cluster6GroupId.msg" "cluster6Set.gn" -na;
	connectAttr "path_curveShape.iog.og[9]" "cluster6Set.dsm" -na;
	connectAttr "PathDefClstr4Cluster.msg" "cluster6Set.ub[0]";
	connectAttr "PathDefClstr3Cluster.og[0]" "cluster6GroupParts.ig";
	connectAttr "cluster6GroupId.id" "cluster6GroupParts.gi";
	connectAttr "cluster5GroupParts.og" "PathDefClstr3Cluster.ip[0].ig";
	connectAttr "cluster5GroupId.id" "PathDefClstr3Cluster.ip[0].gi";
	connectAttr "PathDefClstr3.wm" "PathDefClstr3Cluster.ma";
	connectAttr "PathDefClstr3Shape.x" "PathDefClstr3Cluster.x";
	connectAttr "cluster5GroupId.msg" "cluster5Set.gn" -na;
	connectAttr "path_curveShape.iog.og[8]" "cluster5Set.dsm" -na;
	connectAttr "PathDefClstr3Cluster.msg" "cluster5Set.ub[0]";
	connectAttr "PathDefClstr2Cluster.og[0]" "cluster5GroupParts.ig";
	connectAttr "cluster5GroupId.id" "cluster5GroupParts.gi";
	connectAttr "cluster4GroupParts.og" "PathDefClstr2Cluster.ip[0].ig";
	connectAttr "cluster4GroupId.id" "PathDefClstr2Cluster.ip[0].gi";
	connectAttr "PathDefClstr2.wm" "PathDefClstr2Cluster.ma";
	connectAttr "PathDefClstr2Shape.x" "PathDefClstr2Cluster.x";
	connectAttr "cluster4GroupId.msg" "cluster4Set.gn" -na;
	connectAttr "path_curveShape.iog.og[7]" "cluster4Set.dsm" -na;
	connectAttr "PathDefClstr2Cluster.msg" "cluster4Set.ub[0]";
	connectAttr "PathDefClstr1Cluster.og[0]" "cluster4GroupParts.ig";
	connectAttr "cluster4GroupId.id" "cluster4GroupParts.gi";
	connectAttr "cluster3GroupParts.og" "PathDefClstr1Cluster.ip[0].ig";
	connectAttr "cluster3GroupId.id" "PathDefClstr1Cluster.ip[0].gi";
	connectAttr "PathDefClstr1.wm" "PathDefClstr1Cluster.ma";
	connectAttr "PathDefClstr1Shape.x" "PathDefClstr1Cluster.x";
	connectAttr "cluster3GroupId.msg" "cluster3Set.gn" -na;
	connectAttr "path_curveShape.iog.og[5]" "cluster3Set.dsm" -na;
	connectAttr "PathDefClstr1Cluster.msg" "cluster3Set.ub[0]";
	connectAttr "tweak2.og[0]" "cluster3GroupParts.ig";
	connectAttr "cluster3GroupId.id" "cluster3GroupParts.gi";
	connectAttr "groupParts4.og" "tweak2.ip[0].ig";
	connectAttr "groupId4.id" "tweak2.ip[0].gi";
	connectAttr "groupId4.msg" "tweakSet2.gn" -na;
	connectAttr "path_curveShape.iog.og[6]" "tweakSet2.dsm" -na;
	connectAttr "tweak2.msg" "tweakSet2.ub[0]";
	connectAttr "path_curveShapeOrig.ws" "groupParts4.ig";
	connectAttr "groupId4.id" "groupParts4.gi";
	connectAttr "groupId5.msg" "Lockset.gn" -na;
	connectAttr "path_curveShape.iog.og[16]" "Lockset.dsm" -na;
	connectAttr ":time1.o" "geoConnector1.ct";
	connectAttr "path_curveShape.l" "geoConnector1.lge";
	connectAttr "path_curveShape.wm" "geoConnector1.wm";
	connectAttr "path_curveShape.msg" "geoConnector1.own";
	connectAttr "groupId5.id" "geoConnector1.gri[0]";
	connectAttr ":time1.o" "brush.tim";
	connectAttr "plusMinusAverage1.o1" "brush.twr";
	connectAttr "RopeEndA.twist" "brush.twi";
	connectAttr "reverse2.ox" "brush.fl1";
	connectAttr "CTL.sx" "brush.bwd";
	connectAttr "multDoubleLinear1.o" "plusMinusAverage1.i1[0]";
	connectAttr "RopeEndB.twist" "plusMinusAverage1.i1[1]";
	connectAttr "RopeEndA.twist" "multDoubleLinear1.i1";
	connectAttr "RopeEndB.clip" "reverse2.iy";
	connectAttr "multiplyDivide5.ox" "reverse2.ix";
	connectAttr "CTL.sy" "multiplyDivide5.i1x";
	connectAttr "CTL.sx" "multiplyDivide5.i2x";
	connectAttr "reverse3.ox" "addDoubleLinear1.i1";
	connectAttr "CTL.resolution" "addDoubleLinear1.i2";
	connectAttr "distanceBetween1.d" "reverse3.ix";
	connectAttr "strokeShape.mnc" "distanceBetween1.p1x";
	connectAttr "strokeShape.mnc" "distanceBetween1.p2x";
	connectAttr "rope_1_CTL.sy" "multDoubleLinear2.i1";
	connectAttr "RopeEndB.thick" "multDoubleLinear2.i2";
	connectAttr "pma7.o1" "multDoubleLinear9.i2";
	connectAttr "rope_2_CTL.sy" "multDoubleLinear9.i1";
	connectAttr "pma3.o1" "pma7.i1[0]";
	connectAttr "RopeEndB.thick" "pma7.i1[1]";
	connectAttr "pma1.o1" "pma3.i1[0]";
	connectAttr "RopeEndB.thick" "pma3.i1[1]";
	connectAttr "RopeEndA.thick" "pma1.i1[0]";
	connectAttr "RopeEndB.thick" "pma1.i1[1]";
	connectAttr "rope_3_CTL.sy" "multDoubleLinear8.i1";
	connectAttr "pma3.o1" "multDoubleLinear8.i2";
	connectAttr "rope_4_CTL.sy" "multDoubleLinear7.i1";
	connectAttr "pma6.o1" "multDoubleLinear7.i2";
	connectAttr "pma1.o1" "pma6.i1[0]";
	connectAttr "pma3.o1" "pma6.i1[1]";
	connectAttr "rope_5_CTL.sy" "multDoubleLinear6.i1";
	connectAttr "pma1.o1" "multDoubleLinear6.i2";
	connectAttr "rope_6_CTL.sy" "multDoubleLinear5.i1";
	connectAttr "pma5.o1" "multDoubleLinear5.i2";
	connectAttr "pma2.o1" "pma5.i1[0]";
	connectAttr "pma1.o1" "pma5.i1[1]";
	connectAttr "pma1.o1" "pma2.i1[0]";
	connectAttr "RopeEndA.thick" "pma2.i1[1]";
	connectAttr "rope_7_CTL.sy" "multDoubleLinear4.i1";
	connectAttr "pma2.o1" "multDoubleLinear4.i2";
	connectAttr "rope_8_CTL.sy" "multDoubleLinear3.i1";
	connectAttr "pma4.o1" "multDoubleLinear3.i2";
	connectAttr "RopeEndA.thick" "pma4.i1[0]";
	connectAttr "pma2.o1" "pma4.i1[1]";
	connectAttr "rope_9_CTL.sy" "multDoubleLinear10.i1";
	connectAttr "RopeEndA.thick" "multDoubleLinear10.i2";
	connectAttr "strokeShape.omc[0]" "loft1.ic[0]";
	connectAttr "strokeShape.omc[1]" "loft1.ic[1]";
	connectAttr "strokeShape.omc[2]" "loft1.ic[2]";
	connectAttr "strokeShape.omc[3]" "loft1.ic[3]";
	connectAttr "blinn1SG.msg" "materialInfo2.sg";
	connectAttr "blinn1.msg" "materialInfo2.m";
	connectAttr "checker1.msg" "materialInfo2.t" -na;
	connectAttr "blinn1.oc" "blinn1SG.ss";
	connectAttr "rope_GEOShape.iog" "blinn1SG.dsm" -na;
	connectAttr "endB_GEOShape.iog" "blinn1SG.dsm" -na;
	connectAttr "endA_GEOShape.iog" "blinn1SG.dsm" -na;
	connectAttr "checker1.oc" "blinn1.c";
	connectAttr "place2dTexture1.o" "checker1.uv";
	connectAttr "place2dTexture1.ofs" "checker1.fs";
	connectAttr "planarTrimSurface1.os" "reverseSurface1.is";
	connectAttr "curveFromSurfaceIso1.oc" "planarTrimSurface1.ic[0]";
	connectAttr "rope_GEOShape.ws" "curveFromSurfaceIso1.is";
	connectAttr "curveFromSurfaceIso2.oc" "planarTrimSurface2.ic[0]";
	connectAttr "rope_GEOShape.ws" "curveFromSurfaceIso2.is";
	relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
	relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
	relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
	relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
	relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
	relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
	connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
	connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
	connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multDoubleLinear1.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "plusMinusAverage1.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "pma1.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "pma2.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "pma3.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "pma4.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "pma5.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "pma6.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "pma7.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multDoubleLinear2.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multDoubleLinear3.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multDoubleLinear4.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multDoubleLinear5.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multDoubleLinear6.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multDoubleLinear7.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multDoubleLinear8.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multDoubleLinear9.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multDoubleLinear10.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multiplyDivide4.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "multiplyDivide5.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "reverse2.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "distanceBetween1.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "addDoubleLinear1.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "reverse3.msg" ":defaultRenderUtilityList1.u" -na;
	connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
	// End of basicRope.ma
