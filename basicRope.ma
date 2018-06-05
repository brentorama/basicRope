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
		rename -uid "10698C61-4A5B-DB77-BFF6-8396BCD65C1C";
	createNode transform -n "anim_GP" -p "root";
		rename -uid "AD76C820-456D-8B5E-2AB0-F1897442DA4C";
	createNode transform -n "CTL_GP" -p "anim_GP";
		rename -uid "1B47BEDC-43F8-443E-B83D-B8B8D3C41760";
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
		rename -uid "13144634-418F-9197-BB41-CEACB7768E76";
		addAttr -ci true -sn "resolution" -ln "resolution" -at "double";
		setAttr ".uoc" 1;
		setAttr ".oc" 4;
		setAttr -k on ".resolution";
	createNode nurbsCurve -n "CTLShape" -p "CTL";
		rename -uid "BA9649DD-4513-3D2B-A1A1-0080363159E9";
		setAttr -k off ".v";
		setAttr ".uoc" 1;
		setAttr ".oc" 4;
		setAttr ".tw" yes;
	createNode transform -n "RopeEndB" -p "CTL";
		rename -uid "6F4ECE97-4AA5-EFC7-4305-2497E0924513";
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
		rename -uid "7EEAF245-4DF1-1E8C-2B80-49B5E647E521";
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
		rename -uid "D5AB6A77-4998-02C0-F973-9DBFF928A6A9";
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
		rename -uid "B2E70ED3-400B-60E7-70F1-0CA2318BE32F";
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
		rename -uid "5D2AE449-4F0C-F4D9-2F0D-75AE8DCF0F71";
		setAttr -l on ".v" no;
		setAttr ".uoc" 1;
		setAttr ".oc" 4;
		setAttr ".t" -type "double3" 0 5 0 ;
	createNode locator -n "upShape" -p "up";
		rename -uid "D93A0FB7-467F-DB43-A4DC-1987FEC581EA";
		setAttr -k off ".v";
		setAttr ".uoc" 1;
		setAttr ".oc" 4;
	createNode transform -n "rope_1_CTL_GP" -p "CTL_GP";
		rename -uid "901AF7D7-45C5-6A26-C454-98A7695D82D5";
		setAttr -l on ".v";
			for ($trs in {".t",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -l on ($trs+$xyz);
			}
		}
		setAttr ".rp" -type "double3" 9.8486673669627455e-016 0 -4 ;
		setAttr ".rpt" -type "double3" -9.8486673669627455e-016 0 0 ;
		setAttr ".sp" -type "double3" 9.8486673669627455e-016 0 -4 ;
		setAttr ".smd" 7;
	createNode transform -n "rope_1_CTL" -p "rope_1_CTL_GP";
		rename -uid "0B31E691-4279-98A2-ECAE-75878C9895B9";
		setAttr -l on -k off ".v";
		setAttr ".rp" -type "double3" 0 0 -4 ;
		setAttr ".sp" -type "double3" 0 0 -4 ;
		setAttr ".hdl" -type "double3" 0 0 -4 ;
		setAttr ".dh" yes;
	createNode nurbsCurve -n "rope_1_CTLShape" -p "rope_1_CTL";
		rename -uid "6AF553A5-44C1-37FD-E870-ABB6F16D51DF";
		setAttr -k off ".v";
		setAttr ".tw" yes;
	createNode aimConstraint -n "rope_1_CTL_GP_aimConstraint1" -p "rope_1_CTL_GP";
		rename -uid "9A70E54A-46D0-2E56-B9D2-BFB92BC6F2B8";
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
	createNode transform -n "loc2" -p "CTL_GP";
		rename -uid "481D4EDF-43DA-FE75-B453-1995F21B5ED4";
		for ($trs in {".t",".r"}){
			for ($xyz in {"x","y","z"}){
				setAttr -l on ($trs+$xyz);
			}
		}
	createNode locator -n "locShape2" -p "loc2";
		rename -uid "A1255D67-4AA5-A496-9FF6-0EBA5B2A0141";
		setAttr -l on -k off -cb on ".v" no;
	createNode transform -n "rope_2_CTL" -p "loc2";
		rename -uid "205AE4D6-4F1B-7C8E-13D0-7580E49644F8";
		setAttr ".r" -type "double3" 0 0 1 ;
		setAttr ".s" -type "double3" 1.0000000000000853 1.0000000000000853 1.0000000000000853 ;
	createNode nurbsCurve -n "rope_2_CTLShape" -p "rope_2_CTL";
		rename -uid "B320FC62-47BC-1E6D-63B7-F29C7C7C7088";
		setAttr -k off ".v";
		setAttr ".tw" yes;
	createNode transform -n "loc3" -p "CTL_GP";
		rename -uid "F6E68F5E-453E-31AD-AB3B-ECB3735472B4";
		for ($trs in {".t",".r"}){
			for ($xyz in {"x","y","z"}){
				setAttr -l on ($trs+$xyz);
			}
		}
	createNode locator -n "locShape3" -p "loc3";
		rename -uid "8C325E73-4AB4-A52E-0B30-B6B760837EC7";
		setAttr -l on -k off -cb on ".v" no;
	createNode transform -n "rope_3_CTL" -p "loc3";
		rename -uid "43EB53AC-4C9E-05DA-57A7-C88397F1ADC0";
	createNode nurbsCurve -n "rope_3_CTLShape" -p "rope_3_CTL";
		rename -uid "9EE18F45-46EB-7E53-70BB-B69BEB5F5B07";
		setAttr -k off ".v";
		setAttr ".tw" yes;
	createNode transform -n "loc4" -p "CTL_GP";
		rename -uid "3ED38560-4AB0-24F5-420E-6DB05EA22400";
		for ($trs in {".t",".r"}){
			for ($xyz in {"x","y","z"}){
				setAttr -l on ($trs+$xyz);
			}
		}
	createNode locator -n "locShape4" -p "loc4";
		rename -uid "7DE1047E-44F1-3D13-4C24-B5BB3E5560D1";
		setAttr -l on -k off -cb on ".v" no;
	createNode transform -n "rope_4_CTL" -p "loc4";
		rename -uid "0FFC80DB-4730-4B29-BD07-6E999A7B1B10";
	createNode nurbsCurve -n "rope_4_CTLShape" -p "rope_4_CTL";
		rename -uid "1DD051E8-4B62-5A6A-64A5-9EA4C07A0AB5";
		setAttr -k off ".v";
		setAttr ".tw" yes;
	createNode transform -n "loc5" -p "CTL_GP";
		rename -uid "FA18782B-4B0D-CF39-1E00-F695C2CB4BDB";
		for ($trs in {".t",".r"}){
			for ($xyz in {"x","y","z"}){
				setAttr -l on ($trs+$xyz);
			}
		}
	createNode locator -n "locShape5" -p "loc5";
		rename -uid "781EB89D-457F-E6AA-5603-AA94FC1C28AC";
		setAttr -l on -k off -cb on ".v" no;
	createNode transform -n "rope_5_CTL" -p "loc5";
		rename -uid "19EEF807-4623-A754-D875-9380E333EF24";
	createNode nurbsCurve -n "rope_5_CTLShape" -p "rope_5_CTL";
		rename -uid "26B6E40B-496A-B22E-AFBA-9D8BD20564F3";
		setAttr -k off ".v";
		setAttr ".tw" yes;
	createNode transform -n "loc6" -p "CTL_GP";
		rename -uid "2AEDEEB8-40D1-A133-FC2A-3DADBAAF5F20";
		for ($trs in {".t",".r"}){
			for ($xyz in {"x","y","z"}){
				setAttr -l on ($trs+$xyz);
			}
		}
	createNode locator -n "locShape6" -p "loc6";
		rename -uid "646D13EE-4420-53C2-3695-549E2AEA6B98";
		setAttr -l on -k off -cb on ".v" no;
	createNode transform -n "rope_6_CTL" -p "loc6";
		rename -uid "B34C255E-43F1-CD13-65EF-50A9FC13947D";
	createNode nurbsCurve -n "rope_6_CTLShape" -p "rope_6_CTL";
		rename -uid "27359F6C-4CA8-E8AB-E007-418DC2D68937";
		setAttr -k off ".v";
		setAttr ".tw" yes;
	createNode transform -n "loc7" -p "CTL_GP";
		rename -uid "F8CCE555-4EC6-32EB-3D37-1F9FE9AE4CD7";
		for ($trs in {".t",".r"}){
			for ($xyz in {"x","y","z"}){
				setAttr -l on ($trs+$xyz);
			}
		}
	createNode locator -n "locShape7" -p "loc7";
		rename -uid "015ADD6E-4425-3144-A1F7-F8B21B707CFC";
		setAttr -l on -k off -cb on ".v" no;
	createNode transform -n "rope_7_CTL" -p "loc7";
		rename -uid "C5762DFC-4B62-C45E-2C60-99AE6628458A";
	createNode nurbsCurve -n "rope_7_CTLShape" -p "rope_7_CTL";
		rename -uid "C697242F-4B5E-D829-120F-1DB95C8485F0";
		setAttr -k off ".v";
		setAttr ".tw" yes;
	createNode transform -n "loc8" -p "CTL_GP";
		rename -uid "6C82F8DF-4396-C2E8-FFB2-6D85B068864D";
		for ($trs in {".t",".r"}){
			for ($xyz in {"x","y","z"}){
				setAttr -l on ($trs+$xyz);
			}
		}
	createNode locator -n "locShape8" -p "loc8";
		rename -uid "9999BBC5-40B9-6DD2-2A0B-85BA987108EE";
		setAttr -l on -k off -cb on ".v" no;
	createNode transform -n "rope_8_CTL" -p "loc8";
		rename -uid "3DC7B6A7-4369-2133-8FD1-FFA5341E2E52";
	createNode nurbsCurve -n "rope_8_CTLShape" -p "rope_8_CTL";
		rename -uid "DBF6A4F2-4CD6-7DB6-47E9-12879CBC274D";
		setAttr -k off ".v";
		setAttr ".tw" yes;
	createNode transform -n "rope_9_CTL_GP" -p "CTL_GP";
		rename -uid "9C06F6F8-430B-0D50-40F7-E9809651292D";
		setAttr -l on ".v";
		setAttr -l on ".tx";
		setAttr -l on ".ty";
		setAttr -l on ".tz";
		setAttr -l on ".rx";
		setAttr -l on ".ry";
		setAttr -l on ".rz";
		setAttr -l on ".sx";
		setAttr -l on ".sy";
		setAttr -l on ".sz";
		setAttr ".rp" -type "double3" 0 -5.5511151231257827e-017 4 ;
		setAttr ".sp" -type "double3" 0 -5.5511151231257827e-017 4 ;
		setAttr ".smd" 7;
	createNode transform -n "rope_9_CTL" -p "rope_9_CTL_GP";
		rename -uid "7E6DEDAF-49DC-DE57-7291-ED8F8B13A727";
		setAttr -l on -k off ".v";
		setAttr ".rp" -type "double3" 0 0 4 ;
		setAttr ".sp" -type "double3" 0 0 4 ;
		setAttr ".hdl" -type "double3" 0 0 4 ;
		setAttr ".dh" yes;
	createNode nurbsCurve -n "rope_9_CTLShape" -p "rope_9_CTL";
		rename -uid "6EFAE032-4DFE-254D-D4FC-6D9FA947DFC1";
		setAttr -k off ".v";
		setAttr ".tw" yes;
	createNode transform -n "setup_GP" -p "root";
		rename -uid "5EEC0CAE-4793-6E57-090A-21AC689C943F";
	createNode transform -n "basecurve" -p "setup_GP";
		rename -uid "6B4F5715-4E51-9D60-ACF2-799D256CCB86";
		setAttr ".ove" yes;
	createNode nurbsCurve -n "basecurveShape" -p "basecurve";
		rename -uid "79FB5A04-4F96-E202-2305-C1BD2BBB88BB";
		setAttr -k off ".v";
		setAttr -s 2 ".iog";
		setAttr -s 4 ".iog[0].og";
		setAttr ".ove" yes;
		setAttr ".tw" yes;
	createNode nurbsCurve -n "basecurveShape1Orig" -p "basecurve";
		rename -uid "F5CC761F-4736-FAF7-8CB9-B7A059EFE892";
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
		rename -uid "6751E6FB-4653-E98F-574A-56BC160CAEC9";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 4 ;
		setAttr ".sp" -type "double3" 0 0 4 ;
	createNode clusterHandle -n "baseClstrAShape" -p "baseClstrA";
		rename -uid "6A32BB9E-45BB-CDC0-DDB4-B5B2C1E6DBF1";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 4 ;
	createNode pointConstraint -n "cluster1Handle_pointConstraint1" -p "baseClstrA";
		rename -uid "D1045E9E-433F-BC23-50E9-4F83DB4F7FFB";
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
		rename -uid "9C8B649D-47AB-909B-FC09-A5937790D55E";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -4 ;
		setAttr ".sp" -type "double3" 0 0 -4 ;
	createNode clusterHandle -n "baseClstrBShape" -p "baseClstrB";
		rename -uid "9B6AD790-476D-945E-A668-B1A0C76960EC";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -4 ;
	createNode pointConstraint -n "cluster2Handle_pointConstraint1" -p "baseClstrB";
		rename -uid "17A8E970-42E8-DA24-3220-7FA5EBAA54C9";
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
		rename -uid "0E1F96A5-4725-9693-681D-8AA36708043C";
		setAttr ".ove" yes;
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
	createNode nurbsCurve -n "path_curveShape" -p "path_curve";
		rename -uid "41D882B8-405D-C158-3F4D-3F8838B7A5E7";
		setAttr -k off ".v";
		setAttr -s 2 ".iog";
		setAttr -s 22 ".iog[0].og";
		setAttr ".ove" yes;
		setAttr ".tw" yes;
		setAttr ".dcv" yes;
	createNode nurbsCurve -n "path_curveShape1Orig" -p "path_curve";
		rename -uid "2539C0DD-479B-2A2D-A629-1D89301F2BB4";
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
		rename -uid "4FA23DD9-4D3A-FF86-BEF9-50B209702C68";
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
		setAttr ".dcv" yes;
	createNode pointEmitter -n "Lock" -p "path_curve";
		rename -uid "E1BE9992-404B-EE26-61FD-96B3A71ED4F2";
		setAttr ".sro" no;
		setAttr -l on ".urpp";
	createNode transform -n "PathDefClstr1" -p "setup_GP";
		rename -uid "49BFF1F1-4595-0770-E025-43BF060CEA65";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -4 ;
		setAttr ".sp" -type "double3" 0 0 -4 ;
	createNode clusterHandle -n "PathDefClstr1Shape" -p "PathDefClstr1";
		rename -uid "8D5E55C0-41F1-6631-C4BF-92B9EFACA79E";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -3.8333333314269202 ;
	createNode pointConstraint -n "cluster3Handle_pointConstraint1" -p "PathDefClstr1";
		rename -uid "63B48F1D-4EE7-190F-D2D1-FAB1647E674C";
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
		setAttr ".rst" -type "double3" 0 5.5511151231257827e-017 0 ;
		setAttr -k on ".w0";
	createNode orientConstraint -n "cluster3Handle_orientConstraint1" -p "PathDefClstr1";
		rename -uid "5E8B346B-4110-25DE-60E8-1BBA21C914E7";
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
		setAttr ".o" -type "double3" 7.0195835743237771e-015 180 0 ;
		setAttr ".rsrr" -type "double3" 0 360 0 ;
		setAttr -k on ".w0";
	createNode transform -n "PathDefClstr2" -p "setup_GP";
		rename -uid "2FFF0D66-4A82-3B72-DBDE-039A1B266088";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -3.0000000032489944 ;
		setAttr ".sp" -type "double3" 0 0 -3.0000000032489944 ;
	createNode clusterHandle -n "PathDefClstr2Shape" -p "PathDefClstr2";
		rename -uid "6C16A85B-4698-7A11-EC2C-518407283D8B";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -3.0000000032489944 ;
	createNode pointConstraint -n "PathDefClstr2_pointConstraint1" -p "PathDefClstr2";
		rename -uid "C08BF6CC-4B40-4A89-16F4-04A759BFBCFF";
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
		rename -uid "D3E13000-42BE-51BE-2939-2B879D61FEFB";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -1.9999999984349104 ;
		setAttr ".sp" -type "double3" 0 0 -1.9999999984349104 ;
	createNode clusterHandle -n "PathDefClstr3Shape" -p "PathDefClstr3";
		rename -uid "97751C7F-4C65-DC52-32A5-3D8C6D88298A";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -1.9999999984349104 ;
	createNode pointConstraint -n "PathDefClstr3_pointConstraint1" -p "PathDefClstr3";
		rename -uid "9CE3E8F8-42CB-7F27-15BE-1A897ADACF22";
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
		rename -uid "213EB29F-4233-25DE-03F9-AA965403E326";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -1.00000000064453 ;
		setAttr ".sp" -type "double3" 0 0 -1.00000000064453 ;
	createNode clusterHandle -n "PathDefClstr4Shape" -p "PathDefClstr4";
		rename -uid "A5A0F90B-4145-09AC-8AFD-D692284BC9B2";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -1.00000000064453 ;
	createNode pointConstraint -n "PathDefClstr4_pointConstraint1" -p "PathDefClstr4";
		rename -uid "376AD730-468E-4C0C-8592-5BA1CBD95EF2";
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
		rename -uid "080B4BE4-4418-D24E-FBBB-D9A02EF72A15";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 -1.053979120721545e-015 ;
		setAttr ".sp" -type "double3" 0 0 -1.053979120721545e-015 ;
	createNode clusterHandle -n "PathDefClstr5Shape" -p "PathDefClstr5";
		rename -uid "A85E2FC5-48CA-D435-A157-E2BE48717DA5";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 -1.053979120721545e-015 ;
	createNode pointConstraint -n "PathDefClstr5_pointConstraint1" -p "PathDefClstr5";
		rename -uid "B783768A-40D7-E857-C3E2-249E2AB0C486";
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
		rename -uid "00F138A2-4EE2-E1DA-0A57-088C73EAB348";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 1.000000000644532 ;
		setAttr ".sp" -type "double3" 0 0 1.000000000644532 ;
	createNode clusterHandle -n "PathDefClstr6Shape" -p "PathDefClstr6";
		rename -uid "65BDC17D-4EBF-DDDB-8157-E3B95366A82B";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 1.000000000644532 ;
	createNode pointConstraint -n "PathDefClstr6_pointConstraint1" -p "PathDefClstr6";
		rename -uid "3FCD8085-48FB-E3E2-7856-C2ADBB35A3D1";
		addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle6W0" -dv 1 -min 0 -at "double";
		setAttr -k on ".nds";
		setAttr -k off ".v";
		for ($trs in {".t",".r",".s"}){
			for ($xyz in {"x","y","z"}){
				setAttr -k off ($trs+$xyz);
			}
		}
		setAttr ".erp" yes;
		setAttr ".rst" -type "double3" 0.49623568242527061 3.0901467178147222 -0.87552474589951423 ;
		setAttr -k on ".w0";
	createNode transform -n "PathDefClstr7" -p "setup_GP";
		rename -uid "E7375235-40A6-8986-47A5-298D7F04999D";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 1.9999999984349071 ;
		setAttr ".sp" -type "double3" 0 0 1.9999999984349071 ;
	createNode clusterHandle -n "PathDefClstr7Shape" -p "PathDefClstr7";
		rename -uid "46FD3D21-4D72-6F4F-4417-FEA248B3B6E9";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 1.9999999984349071 ;
	createNode pointConstraint -n "PathDefClstr7_pointConstraint1" -p "PathDefClstr7";
		rename -uid "CDA634F9-4183-ED6C-6027-0BA7F6007CB9";
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
		rename -uid "5BD48671-4A70-0034-CDF9-FBB904B9DEDA";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 3.0000000032489975 ;
		setAttr ".sp" -type "double3" 0 0 3.0000000032489975 ;
	createNode clusterHandle -n "PathDefClstr8Shape" -p "PathDefClstr8";
		rename -uid "9CCAD1C9-42EF-8DD2-9F17-928A210ACFD2";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 3.0000000032489975 ;
	createNode pointConstraint -n "PathDefClstr8_pointConstraint1" -p "PathDefClstr8";
		rename -uid "F3A69B47-4857-05EE-FA4B-4D9B37FF9E52";
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
		rename -uid "F0EDFCB8-41C5-110E-E72C-12A4E86412FA";
		setAttr ".ove" yes;
		setAttr ".rp" -type "double3" 0 0 4 ;
		setAttr ".sp" -type "double3" 0 0 4 ;
	createNode clusterHandle -n "PathDefClstr9Shape" -p "PathDefClstr9";
		rename -uid "7D179BDF-4472-243A-4192-CC821FCEDD27";
		setAttr ".ihi" 0;
		setAttr -k off ".v";
		setAttr ".ove" yes;
		setAttr ".or" -type "double3" 0 0 3.8333333314269189 ;
	createNode pointConstraint -n "cluster11Handle_pointConstraint1" -p "PathDefClstr9";
		rename -uid "03B932F8-4B49-57A7-9EA7-838A0F71AF15";
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
		rename -uid "1DCC9B7A-479A-8FC5-CDDC-A6A236ED3F88";
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
		rename -uid "65535F23-4D72-E6E9-F672-BD808BFF67E5";
	createNode stroke -n "strokeShape" -p "stroke";
		rename -uid "B8F2C74F-4B90-BB7D-93CF-55B0E24F13C1";
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
		rename -uid "C624909C-4526-78D0-3AF3-8DA9368EB202";
		for ($i=0;$i<9;$i++){
			$name = ("width"+$i);
			addAttr -ci true -sn $name -ln $name -at "double";
			setAttr -k on ("."+$name);
		}
	createNode transform -n "rope_GEO" -p "render_GP";
		rename -uid "5A3BEF1C-4F96-9B7E-DB00-3E9D9CBC6A4D";
	createNode nurbsSurface -n "rope_GEOShape" -p "rope_GEO";
		rename -uid "59CD1439-4FCE-FA9C-8C32-78A2E254053E";
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
		rename -uid "214122D3-4F23-7B8D-2C10-D09181DDF1B2";
	createNode nurbsSurface -n "endB_GEOShape" -p "endB_GEO";
		rename -uid "AD7B9285-4E42-9B35-79E5-408A874186D5";
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
		rename -uid "23BA8A25-41C9-63D8-C012-20812158BD05";
	createNode nurbsSurface -n "endA_GEOShape" -p "endA_GEO";
		rename -uid "FAA39E83-4305-0C8D-189C-C29025CE127A";
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
		rename -uid "0F5A7B3D-45D4-D5F0-E191-59AD2D839BB3";
	createNode makeNurbCircle -n "makeCircle1";
		rename -uid "8DA75A5B-496C-99F6-648E-E78604F27216";
		setAttr ".c" -type "double3" 0 0 -4 ;
	createNode multiplyDivide -n "multiplyDivide2";
		rename -uid "2442629A-4874-D5FB-1858-379241157B07";
		setAttr ".i2" -type "float3" 0.60000002 0.60000002 0.60000002 ;
	createNode pointOnCurveInfo -n "poc2";
		rename -uid "4F2C9375-4C42-1C34-C211-9A948C96A8A9";
		setAttr ".pr" 7;
	createNode makeNurbCircle -n "makeCircle2";
		rename -uid "442B3992-48F0-8BD2-712C-39BB6A67CAC0";
	createNode pointOnCurveInfo -n "poc3";
		rename -uid "D7A64769-47BE-3AE9-C8E4-B7888FC1A6DD";
		setAttr ".pr" 6;
	createNode makeNurbCircle -n "makeCircle3";
		rename -uid "ADFA2598-47B7-3D7E-3EF2-5C828F7BA2E2";
	createNode pointOnCurveInfo -n "poc4";
		rename -uid "ABEB390E-4DE1-E584-29E3-6282C2140857";
		setAttr ".pr" 5;
	createNode makeNurbCircle -n "makeCircle4";
		rename -uid "70FFA971-43EA-3767-0AE5-5E8A220F74A3";
	createNode multiplyDivide -n "multiplyDivide4";
		rename -uid "DB1536BE-41F5-1692-CDE0-0289B1636E07";
		setAttr ".i2" -type "float3" 0.60000002 0.60000002 0.60000002 ;
	createNode pointOnCurveInfo -n "poc5";
		rename -uid "3C3E9A77-46AE-6405-6BF0-19A5D00599A1";
		setAttr ".pr" 4;
	createNode makeNurbCircle -n "makeCircle5";
		rename -uid "FF11CB59-46B6-0DB6-CCAB-F28B6904A72B";
	createNode pointOnCurveInfo -n "poc6";
		rename -uid "AF79B5C2-44F6-6070-012E-778E1B487D50";
		setAttr ".pr" 3;
	createNode makeNurbCircle -n "makeCircle6";
		rename -uid "A9E8F7E5-4AFE-D768-7A1B-AF9416F152D1";
	createNode pointOnCurveInfo -n "poc7";
		rename -uid "D3BF3E95-4CF0-6389-4B19-74ACAC6D4543";
		setAttr ".pr" 2;
	createNode makeNurbCircle -n "makeCircle7";
		rename -uid "665A108A-4C0A-CE89-19A8-01BAC5F2291F";
	createNode multiplyDivide -n "multiplyDivide3";
		rename -uid "8CA7F335-4C28-94F5-CEA8-84A4E9A0A394";
		setAttr ".i2" -type "float3" 0.60000002 0.60000002 0.60000002 ;
	createNode pointOnCurveInfo -n "poc8";
		rename -uid "A0B3A7CF-4C86-2A5F-91A8-159E4FA4648F";
		setAttr ".pr" 1;
	createNode makeNurbCircle -n "makeCircle8";
		rename -uid "289F0957-468A-9CE1-173F-848C43F79ACE";
	createNode makeNurbCircle -n "makeCircle9";
		rename -uid "C48D7D21-452E-1951-3590-769B70324AC3";
		setAttr ".c" -type "double3" 0 0 4 ;
	createNode rebuildCurve -n "rebuildCurve1";
		rename -uid "EA352134-4EE0-F970-6149-AEA2CAD9A1DB";
		setAttr ".s" 8;
		setAttr ".end" 1;
		setAttr ".kt" no;
	createNode cluster -n "baseClstrBCluster";
		rename -uid "78D25C3B-4C1C-1AAB-FEA2-94A679D4E742";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster2Set";
		rename -uid "B3D7F880-4F6C-FC8E-89D4-299979154382";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster2GroupId";
		rename -uid "94AEE77D-47EE-3BC4-E975-E5BBC62204E1";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster2GroupParts";
		rename -uid "4F9C0F28-4C33-9789-A4E4-6785C44D446A";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[1]";
	createNode cluster -n "baseClstrACluster";
		rename -uid "86F30664-4EA2-358D-C2A9-83A654FCCCCA";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster1Set";
		rename -uid "42543D5E-4A90-EE97-D06B-ACBC77E39945";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster1GroupId";
		rename -uid "558C04DE-407F-2BEC-21B9-7EAB8654D36B";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster1GroupParts";
		rename -uid "DA750AF3-451A-2303-19A9-3B802C410D7C";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[0]";
	createNode rebuildCurve -n "rebuildCurve2";
		rename -uid "5D413943-42D5-6F09-7992-7DB08D7F3E27";
		setAttr ".s" 16;
		setAttr ".tol" 1;
		setAttr ".kr" 0;
		setAttr ".kt" no;
	createNode groupParts -n "groupParts5";
		rename -uid "24987C30-40C4-0522-A330-2F8419FAEE5D";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[0]";
	createNode cluster -n "PathDefClstr9Cluster";
		rename -uid "13D2522E-40D6-3F91-C704-E087306A9231";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster11Set";
		rename -uid "B7CE1105-4530-0550-9ADB-B0884242002F";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster11GroupId";
		rename -uid "12932207-43B9-98E5-B886-EAAC14954799";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster11GroupParts";
		rename -uid "AFC489B7-4EC7-A830-8CD4-229712B65869";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[0:1]";
	createNode cluster -n "PathDefClstr8Cluster";
		rename -uid "601C5044-482F-1DC7-1D6B-99AC766C1374";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster10Set";
		rename -uid "3DEDDE6A-4D82-A82F-85FA-9AB107767ECF";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster10GroupId";
		rename -uid "2877E0AE-42C7-1FDC-8116-A3A7F5922BB9";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster10GroupParts";
		rename -uid "28F3BFCF-43AA-CD20-9986-E0A83E095695";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[2]";
	createNode cluster -n "PathDefClstr7Cluster";
		rename -uid "85ACEDF2-4294-D193-8975-648686C2C821";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster9Set";
		rename -uid "41669422-49A4-3C4C-F08F-D1AC7E15A919";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster9GroupId";
		rename -uid "E6589720-421A-9CFC-1404-20B8520D8A0F";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster9GroupParts";
		rename -uid "F90F2FD5-411D-078D-E864-47800E23CC41";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[3]";
	createNode cluster -n "PathDefClstr6Cluster";
		rename -uid "DCD4F212-4A64-6353-243F-E3984CF318C7";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster8Set";
		rename -uid "E95296EB-4986-1B83-2517-7C966C9DDE1B";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster8GroupId";
		rename -uid "C80B9A70-4D79-0B11-883A-0AABC1C1CC57";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster8GroupParts";
		rename -uid "713EF521-44C0-B89C-4F7B-D19B1C4930DB";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[4]";
	createNode cluster -n "PathDefClstr5Cluster";
		rename -uid "D597ACF4-4FF0-C625-9692-E1BB6366E02B";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster7Set";
		rename -uid "9F1A3720-4D20-D672-57D6-56924FD309AB";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster7GroupId";
		rename -uid "3C81E33F-43D8-0FCB-6EE4-A7AAD3787984";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster7GroupParts";
		rename -uid "C3C2852F-4C44-3755-BA9C-8FACFA8B8918";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[5]";
	createNode cluster -n "PathDefClstr4Cluster";
		rename -uid "5948CDD0-4A0E-E319-A5FB-8393C8637E46";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster6Set";
		rename -uid "A209F0AC-4167-DD19-C527-F3ADC87A8C34";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster6GroupId";
		rename -uid "B5B226E4-4B9C-B630-1D25-CD9C07FABE6E";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster6GroupParts";
		rename -uid "DA103E89-489A-DB68-16BD-8D93A06130C9";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[6]";
	createNode cluster -n "PathDefClstr3Cluster";
		rename -uid "66AFF5C4-4691-4D17-864B-098CCFB3B5C4";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster5Set";
		rename -uid "DE0C619C-4D62-A50E-F613-628103573D9C";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster5GroupId";
		rename -uid "7EDB8CAC-4E65-A0F6-D331-BD8FA23F6BF2";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster5GroupParts";
		rename -uid "EE89F5F8-4E51-68CB-162D-E2A46D45C4C5";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[7]";
	createNode cluster -n "PathDefClstr2Cluster";
		rename -uid "9A3BDA94-463A-4F44-BB84-5DB564CB96BF";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster4Set";
		rename -uid "FFFED4B4-4780-3A16-8DCD-BD94FD6F3C28";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster4GroupId";
		rename -uid "538DC0F1-4329-3690-C3FA-91A825C41D2F";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster4GroupParts";
		rename -uid "E32E4264-4B22-5892-161F-5A9EC34D8723";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[8]";
	createNode cluster -n "PathDefClstr1Cluster";
		rename -uid "8E940C9E-45B4-B8F2-B7E6-749CBF995CBA";
		setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	createNode objectSet -n "cluster3Set";
		rename -uid "A93EC844-434C-F336-D7F7-3AB154BE6D67";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "cluster3GroupId";
		rename -uid "1098415A-449B-291F-2AD9-B7A23B2875F1";
		setAttr ".ihi" 0;
	createNode groupParts -n "cluster3GroupParts";
		rename -uid "FA885DFC-440F-D9E5-1AE8-E397DD8AC914";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[9:10]";
	createNode tweak -n "tweak2";
		rename -uid "FC25563C-4BF4-689E-2EDB-D791D95AF091";
	createNode objectSet -n "tweakSet2";
		rename -uid "FCCD9C3F-4D30-E6E4-18BA-E19225F733CB";
		setAttr ".ihi" 0;
		setAttr ".vo" yes;
	createNode groupId -n "groupId4";
		rename -uid "042F48FA-4E0F-7BB1-673A-CAB87C05FFC0";
		setAttr ".ihi" 0;
	createNode groupParts -n "groupParts4";
		rename -uid "237D95EA-4B72-6080-EE03-A6915025077D";
		setAttr ".ihi" 0;
		setAttr ".ic" -type "componentList" 1 "cv[*]";
	createNode groupId -n "groupId5";
		rename -uid "8B961C2D-4F09-D754-D7B6-41B849B737D5";
		setAttr ".ihi" 0;
	createNode objectSet -n "Lockset";
		rename -uid "A8A65509-4F9F-9F74-1E38-9886C2B243C0";
		setAttr ".ihi" 0;
	createNode geoConnector -n "geoConnector1";
		rename -uid "F734E142-47F2-03F8-BAC3-AD982D42620D";
	createNode brush -n "brush";
		rename -uid "AE556477-486E-6CA6-02EC-A88F5DD94103";
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
		setAttr ".env[0].envp" 0.20000000298023224;
		setAttr ".env[0].envc" -type "float3" 0 0 0.15000001 ;
		setAttr ".env[0].envi" 2;
		setAttr ".env[1].envp" 0.5;
		setAttr ".env[1].envc" -type "float3" 0.47999999 0.55000001 0.69999999 ;
		setAttr ".env[1].envi" 2;
		setAttr ".env[2].envp" 1;
		setAttr ".env[2].envc" -type "float3" 0 0.1 0.44999999 ;
		setAttr ".env[2].envi" 2;
		setAttr ".rro[0]"  0 1 1;
		setAttr ".edc" yes;
	createNode plusMinusAverage -n "plusMinusAverage1";
		rename -uid "29138014-45C7-4EA1-1DC4-E49722B8E9C8";
		setAttr ".op" 2;
		setAttr -s 2 ".i1";
		setAttr -s 2 ".i1";
	createNode multDoubleLinear -n "multDoubleLinear1";
		rename -uid "D813107C-4CAF-B6B9-1DC5-118E87ECA9E7";
		setAttr ".i2" -0.5;
	createNode reverse -n "reverse2";
		rename -uid "DD2407E7-4276-93CD-8A9C-65A6D996183C";
	createNode multiplyDivide -n "multiplyDivide5";
		rename -uid "543E9C88-43CD-4E04-44E5-998BC0FCDD98";
		setAttr ".op" 2;
	createNode addDoubleLinear -n "addDoubleLinear1";
		rename -uid "5801FCD7-4EA4-7A61-D0C9-8C9E03138BE4";
	createNode reverse -n "reverse3";
		rename -uid "14760447-44EF-D1B6-37E8-EEB244091BCB";
	createNode distanceBetween -n "distanceBetween1";
		rename -uid "88DA72D7-4C48-B5BE-D9F1-FC8181343F66";
	createNode multDoubleLinear -n "multDoubleLinear2";
		rename -uid "62959C81-4667-B3B5-B2AF-6BA854E968C1";
	createNode multDoubleLinear -n "multDoubleLinear9";
		rename -uid "09BF3B16-4DAF-3C60-A708-C1A20D87F706";
	createNode plusMinusAverage -n "pma7";
		rename -uid "5121EA4C-4917-271E-9312-62947C05C393";
		setAttr ".op" 3;
		setAttr -s 2 ".i1";
		setAttr -s 2 ".i1";
	createNode plusMinusAverage -n "pma3";
		rename -uid "1A349D76-41BB-0D2B-76F7-A0ABDCE8FABF";
		setAttr ".op" 3;
		setAttr -s 2 ".i1";
		setAttr -s 2 ".i1";
	createNode plusMinusAverage -n "pma1";
		rename -uid "3C9899F8-487E-669D-3C1E-6A8E7ABA945C";
		setAttr ".op" 3;
		setAttr -s 2 ".i1";
		setAttr -s 2 ".i1";
	createNode multDoubleLinear -n "multDoubleLinear8";
		rename -uid "A1BF3403-4F8F-64A9-5E57-8DB625E335B2";
	createNode multDoubleLinear -n "multDoubleLinear7";
		rename -uid "350FA956-4970-FE55-0079-EF9B35D82342";
	createNode plusMinusAverage -n "pma6";
		rename -uid "E32150F1-4914-6CE8-5B76-79A4877B0BD1";
		setAttr ".op" 3;
		setAttr -s 2 ".i1";
		setAttr -s 2 ".i1";
	createNode multDoubleLinear -n "multDoubleLinear6";
		rename -uid "53451C17-41BC-7C0A-BBC0-DC805D6C2B2A";
	createNode multDoubleLinear -n "multDoubleLinear5";
		rename -uid "89546596-4F4F-E90A-6D64-CDB40251AC46";
	createNode plusMinusAverage -n "pma5";
		rename -uid "87A348FC-40BD-0B16-8678-DB970E95F5A7";
		setAttr ".op" 3;
		setAttr -s 2 ".i1";
		setAttr -s 2 ".i1";
	createNode plusMinusAverage -n "pma2";
		rename -uid "EEC32981-443B-3D19-42FA-8382293B62AD";
		setAttr ".op" 3;
		setAttr -s 2 ".i1";
		setAttr -s 2 ".i1";
	createNode multDoubleLinear -n "multDoubleLinear4";
		rename -uid "BA3F1AD6-4606-514F-224C-A68046E374EF";
	createNode multDoubleLinear -n "multDoubleLinear3";
		rename -uid "AD6AB9F0-4A42-AF81-B362-2B92F8B06B90";
	createNode plusMinusAverage -n "pma4";
		rename -uid "82782B1F-427F-A5F0-C9A3-8CB8EBC3D909";
		setAttr ".op" 3;
		setAttr -s 2 ".i1";
		setAttr -s 2 ".i1";
	createNode multDoubleLinear -n "multDoubleLinear10";
		rename -uid "FFB3C884-4B52-33AF-673E-E1817880323D";
	createNode loft -n "loft1";
		rename -uid "DFAA53F9-49A5-80D4-7B5D-F5B904563541";
		setAttr -s 4 ".ic";
		setAttr ".c" yes;
		setAttr -s 4 ".r[0:3]" no no no no;
	createNode materialInfo -n "materialInfo2";
		rename -uid "E6E322BD-4567-A5DC-87C2-AA9FED85BD81";
	createNode shadingEngine -n "blinn1SG";
		rename -uid "64C2C4DF-4EC1-49AA-F2E8-2D8ACF7F0AD3";
		setAttr -s 3 ".dsm";
		setAttr ".ro" yes;
	createNode blinn -n "blinn1";
		rename -uid "5C59E7E8-4726-B4B3-1487-B1824D329DCB";
		setAttr ".bnm" -type "string" "ed";
		setAttr ".ic" -type "float3" 0.35538 0.35538 0.35538 ;
		setAttr ".tcf" 0;
		setAttr ".trsd" 0.05000000074505806;
	createNode checker -n "checker1";
		rename -uid "8CED7546-41EB-412A-121E-6E8C52AE08E1";
		setAttr ".bnm" -type "string" "ed";
		setAttr ".c1" -type "float3" 0.43801999 0.43801999 0.43801999 ;
		setAttr ".c2" -type "float3" 0.61984003 0.61984003 0.61984003 ;
	createNode place2dTexture -n "place2dTexture1";
		rename -uid "802A0D85-4DFE-FF20-4881-7EA01BB2CB5C";
		setAttr ".bnm" -type "string" "ed";
		setAttr ".rf" 90;
		setAttr ".re" -type "float2" 0.5 10 ;
	createNode reverseSurface -n "reverseSurface1";
		rename -uid "75213260-45CD-2CB0-0CAE-F8BF599B7AB9";
	createNode planarTrimSurface -n "planarTrimSurface1";
		rename -uid "21B1D681-495A-AE9D-C278-DA90FA2B2B77";
		setAttr ".tol" 0.00032808400000000003;
	createNode curveFromSurfaceIso -n "curveFromSurfaceIso1";
		rename -uid "367998AC-4FB8-B15A-F58E-168AF465EA63";
		setAttr ".ihi" 1;
		setAttr ".max" 0;
		setAttr ".iv" 46;
	createNode planarTrimSurface -n "planarTrimSurface2";
		rename -uid "9023A796-4943-31DA-A9CF-76AA067C1B84";
		setAttr ".tol" 0.00032808400000000003;
	createNode curveFromSurfaceIso -n "curveFromSurfaceIso2";
		rename -uid "8C1F4C1B-4D57-5BBF-25F9-12AF38C5089F";
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
