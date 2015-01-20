//Maya ASCII 2015 scene
//Name: 3D Me Rig.ma
//Last modified: Fri, Jan 09, 2015 08:37:40 AM
//Codeset: UTF-8
file -rdi 1 -ns "DMe_Model_Stripped" -rfn "DMe_Model_StrippedRN" "/Users/nathanwaters/Documents/3D Me/3DMe Model Stripped.ma";
file -r -ns "DMe_Model_Stripped" -dr 1 -rfn "DMe_Model_StrippedRN" "/Users/nathanwaters/Documents/3D Me/3DMe Model Stripped.ma";
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Mac OS X 10.9.1";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".t" -type "double3" 1.4445588229374975 6.4284753094301905 5.2726109097323448 ;
	setAttr ".r" -type "double3" -2.7383527294001699 13.800000000003601 -5.1173321677505234e-17 ;
	setAttr ".rp" -type "double3" 5.5511151231257827e-17 -8.8817841970012523e-16 2.2204460492503131e-16 ;
	setAttr ".rpt" -type "double3" 4.6508890737772359e-15 2.6626346648919438e-15 -5.6143899508851659e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 6.0629239923011813;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 6.9388939039072284e-18 6.1388186402781688 -0.6085791192932869 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" 23.022099660258547 6.3069792564003597 -0.23047685247465963 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 2.2204460492503131e-16 -5.5511151231257827e-17 -8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" -1.0594562484520624e-15 0 1.3766382667073815e-15 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 6.518357196870987;
	setAttr ".ow" 2.6015839498135689;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.0034589767456072451 -0.32761478424072266 -1.2651383280754105 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" -19.70892820332573 6.2502912225817155 -0.54037547679197917 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 5.5511151231257827e-17 ;
	setAttr ".rpt" -type "double3" 3.212631447097366e-16 0 -1.0190992021262153e-15 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 0.36680382919041415;
	setAttr ".ow" 5.4743042703533193;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0.0039621639014614241 6.2502912225817155 -0.54037547679198017 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Newman:bottom";
	setAttr ".t" -type "double3" 0 -100.1 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -n "Newman:bottomShape" -p "Newman:bottom";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 20.247854792642222;
	setAttr ".imn" -type "string" "bottom1";
	setAttr ".den" -type "string" "bottom1_depth";
	setAttr ".man" -type "string" "bottom1_mask";
	setAttr ".hc" -type "string" "viewSet -bo %camera";
	setAttr ".dst" yes;
	setAttr ".o" yes;
createNode transform -n "Skeleton01";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "bind_root01" -p "Skeleton01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0.0208956 -1.15096 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.0208956 -1.15096 1;
	setAttr ".radi" 0.665;
createNode joint -n "bind_pelvis" -p "bind_root01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -4.1400568924487846e-08 -6.686205125117084e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.020895558599431076 -1.1509606686205125 1;
	setAttr ".radi" 0.4646;
createNode joint -n "bind_l_thigh" -p "bind_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.75680610157211903 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 -2.7371563050607 -86.999999999999986 ;
	setAttr ".bps" -type "matrix" 0.05227624700850253 -0.99749021469067389 0.04775422070413271 0
		 -0.0024992628051869192 0.047688775204335343 0.9988591163947701 0 -0.99862953475457383 -0.052335956242944071 4.4408920985006262e-16 0
		 0.75680610157211903 0.020895558599431076 -1.1509606686205125 1;
	setAttr ".radi" 0.446;
createNode joint -n "bind_l_shin01" -p "bind_l_thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.8255101315479241 2.2204460492503131e-16 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -5.4324664359293866e-15 -13.629985906138373 ;
	setAttr ".bps" -type "matrix" 0.051392986334441559 -0.98063659703802375 -0.18897255225379236 0
		 -0.0098900592258725252 0.18871357193858898 -0.98198236974738384 0 0.99862953475457383 0.052335956242944091 -5.6434736644308926e-16 0
		 0.95678941414244711 -3.7950133638196557 -0.9682764134926769 1;
	setAttr ".radi" 0.68162297511633296;
createNode joint -n "be_l_ankle01" -p "bind_l_shin01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 4.5113775189157703 -7.2164496600635165e-16 -3.3306690738754696e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 5.220588632011582 ;
	setAttr ".bps" -type "matrix" 0.050279895435149706 -0.95939755744277067 -0.27753965282077386 0
		 -0.01452530312571049 0.27715929437235526 -0.96071418284114252 0 0.99862953475457383 0.052335956242944091 -5.6434736644308926e-16 0
		 1.1886425773215918 -8.2190352619230591 -1.8208029374225707 1;
	setAttr ".radi" 0.2;
createNode joint -n "bind_l_ankle01" -p "be_l_ankle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 5.5511151231257827e-16 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.180179217244195 -87 -16.113418233089416 ;
	setAttr ".bps" -type "matrix" 0.99999999999999989 3.4694469519536142e-17 -3.9877521777323461e-16 0
		 -4.0245584642661925e-16 0.6181365006609868 -0.78607077706183026 0 2.4980018054066022e-16 0.78607077706183015 0.61813650066098691 0
		 1.1886425773215918 -8.2190352619230591 -1.8208029374225712 1;
	setAttr ".radi" 0.5;
createNode joint -n "bind_l_foot01" -p "bind_l_ankle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -0.0062068439672604558 -0.68574968694822269 -0.29423669794452145 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -51.819820782755947 89.999999999999972 ;
	setAttr ".bps" -type "matrix" 6.4064737632585735e-17 0.99999999999999989 -3.3306690738754696e-16 0
		 -8.0052939318823541e-17 2.7755575615628914e-16 1.0000000000000002 0 1 -2.2810772451399334e-16 1.0620865760578672e-16 0
		 1.1824357333543318 -8.8742130435359581 -1.4636335909667453 1;
	setAttr ".radi" 0.3;
createNode joint -n "be_l_toe01" -p "bind_l_foot01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -0.030205578622878093 1.487155195767925 6.6613381477509392e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.308388035765461 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1 -6.063119588962077e-18 -4.8136448567290383e-18 0
		 -2.6997312506439812e-16 0.99992714749970846 0.01207061278876154 0 -8.0820407903415049e-17 -0.012070612788761646 0.99992714749970879 0
		 1.1824357333543325 -8.9044186221588362 0.023521604801179929 1;
	setAttr ".radi" 0.3;
createNode joint -n "be_pelvis" -p "bind_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -1.0000000000000002 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.97910444140056907 -1.1509606686205125 1;
	setAttr ".radi" 0.4646;
createNode joint -n "bind_r_thigh" -p "bind_pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.756806 4.1400568924487846e-08 6.686205125117084e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000014 2.7371563050606942 86.999999999999986 ;
	setAttr ".bps" -type "matrix" 0.052276247008502419 0.99749021469067412 -0.047754220704132613 0
		 -0.0024992628051873082 -0.047688775204335343 -0.99885911639477021 0 -0.99862953475457394 0.05233595624294414 -2.2204460492503131e-16 0
		 -0.75680599999999998 0.0208956 -1.15096 1;
	setAttr ".radi" 0.446;
createNode joint -n "bind_r_shin01" -p "bind_r_thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -3.8255067889439598 9.5613471362554492e-08 -1.3825998101957282e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622634 2.1896695805773525e-17 -13.629985906138367 ;
	setAttr ".bps" -type "matrix" 0.051392986334441539 0.98063659703802397 0.18897255225379239 0
		 -0.0098900741066117893 -0.18871357115872242 0.98198236974738395 0 0.99862953460720061 -0.052335959054995516 1.463267792342504e-08 0
		 -0.956789 -3.79501 -0.96827599999999991 1;
	setAttr ".radi" 0.68162297511633296;
createNode joint -n "be_r_ankle01" -p "bind_r_shin01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -4.5113848758063675 3.9859984967138845e-06 2.5842351482063819e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.475237681005369e-06 -7.7685235167392599e-08 5.2205886320115802 ;
	setAttr ".bps" -type "matrix" 0.050279894081144749 0.95939755751373135 0.27753965282077386 0
		 -0.014525292232252587 -0.27715929494325708 0.96071418284114263 0 0.99862953498119456 -0.052335951918765972 -1.0103555272947278e-08 0
		 -1.1886400000000001 -8.2190399999999997 -1.8208 1;
	setAttr ".radi" 0.2;
createNode joint -n "bind_r_ankle01" -p "be_r_ankle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 -4.4408920985006262e-16 2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 38.180168156184536 -87.000000248097109 -16.113407187188539 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -2.2204460492503131e-16 5.5578558179374773e-17 0
		 6.2450045135165055e-17 -0.61813650066098713 0.78607077706183015 0 -1.8735013540549517e-16 -0.78607077706183037 -0.61813650066098724 0
		 -1.1886399999999999 -8.2190399999999997 -1.8208000000000002 1;
	setAttr ".radi" 0.5;
createNode joint -n "bind_r_foot01" -p "bind_r_ankle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.0061999999999995392 0.68574539058123163 0.29423017706651411 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -51.819820782755848 89.999999999999972 ;
	setAttr ".bps" -type "matrix" 3.3542139569519795e-16 -1.0000000000000004 1.5543122344752192e-15 0
		 -5.5347617122366553e-16 -1.7208456881689926e-15 -1 0 1.0000000000000002 3.3688522058196065e-16 -2.871601983650827e-16 0
		 -1.1824400000000004 -8.8742099999999979 -1.4636300000000011 1;
	setAttr ".radi" 0.3;
createNode joint -n "be_r_toe01" -p "bind_r_foot01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.030210000000005621 -1.4871516000000011 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.308388035765446 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 1.1484061565692914e-16 -3.4267134959634018e-16 0
		 5.1160406700933604e-17 -0.99992714749970879 -0.012070612788760648 0 -5.5748459088924306e-16 0.012070612788760487 -0.99992714749970846 0
		 -1.1824399999999999 -8.9044200000000018 0.023521600000000031 1;
	setAttr ".radi" 0.3;
createNode joint -n "bind_back01" -p "bind_root01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 1.3544306803389132 -0.29535553978423734 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1.3753262803389132 -1.4463155397842373 1;
	setAttr ".radi" 0.4646;
createNode joint -n "bind_chest01" -p "bind_back01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 1.8919924995735276 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.2673187799124408 -1.4463155397842373 1;
	setAttr ".radi" 0.3;
createNode joint -n "bind_neck_a01" -p "bind_chest01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 2.1185321489184923 0.081480000000000705 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.3858509288309335 -1.3648355397842367 1;
	setAttr ".radi" 0.3;
createNode joint -n "bind_neck_b01" -p "bind_neck_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 0.40352763796528457 0.03368900000000008 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.7893785667962181 -1.3311465397842366 1;
	setAttr ".radi" 0.15;
createNode joint -n "bind_neck_c01" -p "bind_neck_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 0.13265143320378223 0.01285653978423662 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.9220300000000003 -1.31829 1;
	setAttr ".radi" 0.06;
createNode joint -n "bind_neck_d01" -p "bind_neck_c01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 0.1637499999999994 0.015870000000000051 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6.0857799999999997 -1.3024199999999999 1;
	setAttr ".radi" 0.06;
createNode joint -n "bind_neck_e01" -p "bind_neck_d01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0 0.23653894254340627 0.022930460215763393 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 6.3223189425434061 -1.2794895397842365 1;
	setAttr ".radi" 0.2;
createNode joint -n "bind_head01" -p "bind_neck_e01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 1.057456594288908e-06 -4.6021576349808413e-07 ;
	setAttr ".jo" -type "double3" -180 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 0 6.3223200000000004 -1.27949 1;
	setAttr ".radi" 0.12415439040575664;
createNode joint -n "be_head01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 -1.787399999999999 -0.087589999999999835 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 -1 -1.2246467991473532e-16 0 0 1.2246467991473532e-16 -1 0
		 0 8.1097199999999994 -1.1919 1;
	setAttr ".radi" 0.15;
createNode joint -n "bind_jaw01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.6213685093579979e-14 -66.900465229375328 -89.999999999999957 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 0.39232964783840524 -0.91982468298420494 0
		 1 -6.6613381477509392e-16 -5.5511151231257926e-17 0 -7.2164496600635195e-16 -0.91982468298420494 -0.39232964783840507 0
		 0 6.3223200000000004 -1.2794899999999998 1;
	setAttr ".radi" 0.10750214101575303;
createNode joint -n "be_jaw01" -p "bind_jaw01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.1887738016099949 9.0062862219462529e-17 -1.3121469697452426e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 0.39232964783840529 -0.91982468298420494 0
		 1 -6.6613381477509392e-16 -5.5511151231257926e-17 0 -7.2164496600635205e-16 -0.91982468298420494 -0.39232964783840502 0
		 -1.7389700000000096e-16 5.855929999999999 -0.18602599999999961 1;
	setAttr ".radi" 0.10750214101575303;
createNode joint -n "bind_lowerteeth01" -p "bind_jaw01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.79716943439436916 -4.0993239533317885e-18 -0.18535402084487271 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 -23.099534770624675 -1.3831134303309988e-14 ;
	setAttr ".bps" -type "matrix" -7.888060704410979e-17 3.3306690738754696e-16 -1 0
		 1.0839684411261422e-15 0.99999999999999989 1.1102230246251565e-16 0 0.99999999999999978 -1.0378329885163652e-15 -3.3001592463100973e-17 0
		 -4.7346700000001329e-17 6.1800599999999992 -0.4735140000000001 1;
	setAttr ".radi" 0.07;
createNode joint -n "be_lowerteeth01" -p "bind_lowerteeth01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.24717000000000017 1.7763568394002505e-15 -9.9605021964309097e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.4248081657332993e-14 0 0 ;
	setAttr ".bps" -type "matrix" -7.888060704410979e-17 3.3306690738754696e-16 -1 0
		 1.0839684411261422e-15 0.99999999999999989 1.1102230246251563e-16 0 0.99999999999999989 -1.0378329885163652e-15 -3.3001592463100973e-17 0
		 -1.0238999999999976e-15 6.180060000000001 -0.22634399999999991 1;
	setAttr ".radi" 0.07;
createNode joint -n "bind_tongue_a01" -p "bind_jaw01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.40773987054852862 1.5633647990356287e-17 -0.10379451670299034 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000071 159.91325273355906 0 ;
	setAttr ".bps" -type "matrix" 3.9305072179420232e-17 -0.052558833122770876 0.99861782933250931 0
		 -3.5621349229841408e-16 0.99861782933250942 0.052558833122770765 0 -1 -4.0540636562139271e-16 2.0918773368968918e-17 0
		 3.6977854932234928e-32 6.2578243185998463 -0.86371913664703726 1;
	setAttr ".radi" 0.04;
createNode joint -n "bind_tongue_b01" -p "bind_tongue_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.066150889208435038 2.6020852139652103e-18 -3.8518598887744717e-34 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.4030584190342705e-18 2.073316920371672e-16 1.3281031862877877 ;
	setAttr ".bps" -type "matrix" 3.1038304663786907e-17 -0.029399051601887109 0.9995677544643532 0
		 -3.5702880057225023e-16 0.99956775446435342 0.029399051601886893 0 -1 -4.0540636562139271e-16 2.0918773368969017e-17 0
		 2.60006547507041e-18 6.2543475050530173 -0.79765967925729453 1;
	setAttr ".radi" 0.04;
createNode joint -n "bind_tongue_c01" -p "bind_tongue_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.078841852766994985 -1.5785983631388945e-16 -2.8529875806627818e-19 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.1841611260499262e-17 5.7520873574092613e-16 2.3587212158807875 ;
	setAttr ".bps" -type "matrix" 5.9152480927709996e-17 0.011763891800367118 0.99993080303074466 0
		 3.0675149385646933e-16 0.99993080303074444 -0.011763891800367351 0 -1 2.9443464103382247e-16 7.8020709999414916e-17 0
		 6.54975638065902e-18 6.2520296293551318 -0.7188519055291801 1;
	setAttr ".radi" 0.04;
createNode joint -n "bind_tongue_d01" -p "bind_tongue_c01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.098516534205731476 2.2616457318047622e-16 -9.8903569462949154e-19 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.5479307996316702e-18 2.4951243974347381e-16 -2.0884601093871789 ;
	setAttr ".bps" -type "matrix" 4.793441800810146e-17 -0.024683834758821181 0.99969530773211079 0
		 3.0870339575926797e-16 0.99969530773211068 0.024683834758820963 0 -1 2.9443464103382247e-16 7.8020709999414916e-17 0
		 1.3366289485957201e-17 6.2531885672040755 -0.62034218836903721 1;
	setAttr ".radi" 0.04;
createNode joint -n "bind_tongue_e01" -p "bind_tongue_d01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.093902577153564953 -2.6714741530042829e-16 -4.0892821989492456e-19 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.309562889287805e-19 1.783114738175397e-17 -1.4841535878800785 ;
	setAttr ".bps" -type "matrix" 3.992277423731039e-17 -0.050568132333246196 0.99872061358135977 0
		 3.0984135792414051e-16 0.99872061358135977 0.050568132333245974 0 -1 2.9443464103382247e-16 7.8020709999414916e-17 0
		 1.8276383091169024e-17 6.2508706915061891 -0.52646822260466586 1;
	setAttr ".radi" 0.04;
createNode joint -n "bind_tongue_f01" -p "bind_tongue_e01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.091673375738356405 -4.3368086899420177e-17 -2.8529875806777578e-20 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.1895040764486264e-17 4.7015505770872868e-16 2.8985767992835738 ;
	setAttr ".bps" -type "matrix" 5.5539796371983434e-17 1.9755030944423879e-14 1.0000000000000002 0
		 3.0742613096813557e-16 1.0000000000000002 -1.9970136655445003e-14 0 -1 2.9443464103382247e-16 7.8020709999414916e-17 0
		 2.196476845015032e-17 6.2462349401104165 -0.43491213253818001 1;
	setAttr ".radi" 0.04;
createNode joint -n "bind_tongue_g01" -p "bind_tongue_f01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.093873965764371403 -9.539284305640381e-16 -7.7030664677879146e-19 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.5404854015212911e-17 1.0633244738722287e-15 3.8140748342892303 ;
	setAttr ".bps" -type "matrix" 7.5866466531489985e-17 0.066519010523774083 0.99778515785660915 0
		 3.0305077831793302e-16 0.99778515785660915 -0.066519010523774291 0 -1 2.9443464103382247e-16 7.8020709999414916e-17 0
		 2.794881604011255e-17 6.2462349401104174 -0.3410381667738086 1;
	setAttr ".radi" 0.04;
createNode joint -n "bind_tongue_h01" -p "bind_tongue_g01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.06969062466908775 -6.852157730108388e-17 -1.293354369899945e-18 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 7.5866466531489972e-17 0.066519010523774055 0.99778515785660915 0
		 3.0305077831793292e-16 0.99778515785660915 -0.066519010523774277 0 -1 2.9443464103382247e-16 7.8020709999414916e-17 0
		 3.4529351854028444e-17 6.2508706915061891 -0.27150189583723716 1;
	setAttr ".radi" 0.04;
createNode joint -n "be_tongue_i01" -p "bind_tongue_h01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.035836244753596563 -1.7763568394002505e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.736353057577228e-14 2.4233268716618211e-15 -1.8288189418415224e-14 ;
	setAttr ".bps" -type "matrix" 7.5866466531489972e-17 0.066519010523774055 0.99778515785660915 0
		 3.0305077831793292e-16 0.99778515785660915 -0.066519010523774277 0 -1 2.9443464103382247e-16 7.8020709999414916e-17 0
		 3.7248121117240929e-17 6.2532544830480843 -0.23574502270878159 1;
	setAttr ".radi" 0.04;
createNode joint -n "bind_upperteeth01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 0.015340000000000131 -0.8059759999999998 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.0167092985348704e-15 -89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 1.1102230246251565e-15 1.2246467991473532e-16 -1 0
		 0 -1 -1.2246467991473532e-16 0 -1 1.3596310734468911e-31 -1.1102230246251565e-15 0
		 0 6.3069800000000003 -0.47351399999999999 1;
	setAttr ".radi" 0.07;
createNode joint -n "be_upperteeth01" -p "bind_upperteeth01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.24717000000000011 0 -9.9920044249694007e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.8950561101674362e-31 0 0 ;
	setAttr ".bps" -type "matrix" 1.1102230246251563e-15 1.2246467991473532e-16 -1 0
		 0 -1 -1.2246467991473532e-16 0 -1 1.3596310734468922e-31 -1.1102230246251563e-15 0
		 7.2478661750034001e-16 6.3069800000000003 -0.2263440000000001 1;
	setAttr ".radi" 0.07;
createNode joint -n "bind_l_eye01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.34046608396857103 -0.6223945462036129 -0.63626149168190915 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.0105474180182373e-13 88.000000000000028 -179.9999999999998 ;
	setAttr ".bps" -type "matrix" -0.034899496702500477 5.8717972704672196e-18 0.99939082701909576 0
		 3.6751783587152361e-15 1 1.2246467991473532e-16 0 -0.99939082701909576 3.6772134950519597e-15 -0.034899496702500477 0
		 0.34046608396857103 6.9447145462036133 -0.64322850831809053 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_l_eye01" -p "bind_l_eye01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.2664120628904722 0 1.6653345369377346e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.034899496702500699 0 0.99939082701909565 0 0 1 0 0
		 -0.99939082701909565 0 -0.034899496702500699 0 0.33116843705821841 6.9447145462036133 -0.3769787364581183 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_eye01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.31310722811766994 -0.62309576866290239 -0.65634128595899377 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.0105474180182373e-13 88.000000000000028 -179.9999999999998 ;
	setAttr ".bps" -type "matrix" -0.034899496702500477 5.8717972704672196e-18 0.99939082701909576 0
		 3.6751783587152361e-15 1 1.2246467991473532e-16 0 -0.99939082701909576 3.6772134950519597e-15 -0.034899496702500477 0
		 -0.31310722811766994 6.9454157686629028 -0.62314871404100591 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_r_eye01" -p "bind_r_eye01";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.2664120628904722 0 1.6653345369377346e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_ear01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.7220853792972155 -0.077519651772043119 -0.0086986358390357399 ;
	setAttr ".r" -type "double3" 0 -10.377377435519366 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -910 -40.601000000000013 -70 ;
	setAttr ".bps" -type "matrix" 0.26552631345621536 0.8209823440872358 -0.50545402121199845 0
		 -0.96406761060331791 0.23063125061162973 -0.13184410653087639 0 0.0083318094049943132 0.52229993005776221 0.85272115255439485 0
		 0.7220853792972155 6.3998396517720435 -1.2707913641609643 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_l_ear01" -p "bind_l_ear01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.55361517766015855 -4.4408920985006262e-16 -5.1953244885546364e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.25968219660115044 0.71347097139603655 -0.65078746895096062 0
		 -0.11223474405279926 0.69163757503666523 0.71347097139603655 0 0.95914989391429539 -0.11223474405279926 0.25968219660115044 0
		 0.83000794816317924 6.8001807468919369 -1.5599790637381561 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_nose01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 -0.23135270980395983 -1.0871584284932247 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000014 77.242467839123435 -89.999999999999986 ;
	setAttr ".bps" -type "matrix" 0 0.22082565259779324 0.97531329897359587 0 1.5265566588595902e-16 0.97531329897359598 -0.22082565259779324 0
		 -1 1.5265566588595902e-16 1.8694927259894753e-32 0 0 6.5536727098039602 -0.19233157150677505 1;
	setAttr ".radi" 0.07;
createNode joint -n "bind_nose_a01" -p "bind_nose01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.10646312896409782 -2.5630072535420823e-06 -2.1341322478867034e-22 ;
	setAttr ".bps" -type "matrix" 0 0.22082565259779324 0.97531329897359587 0 1.5265566588595902e-16 0.97531329897359598 -0.22082565259779324 0
		 -1 1.5265566588595902e-16 1.8694927259894753e-32 0 -1.7784435417133924e-22 6.5771800000000002 -0.088496100000000258 1;
	setAttr ".radi" 0.07;
createNode joint -n "joint3" -p "bind_nose_a01";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.11605215734402112 2.5630072535906545e-06 2.1341322479175183e-22 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.07;
createNode joint -n "bind_r_ear01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.722085 -0.077519999999999811 -0.008699999999999708 ;
	setAttr ".r" -type "double3" 0 -10.377377435519366 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.9999999999999591 40.601000000000013 70 ;
	setAttr ".bps" -type "matrix" 0.26552631345621536 -0.82098234408723569 0.50545402121199834 0
		 -0.9640676106033178 -0.23063125061162973 0.13184410653087639 0 0.0083318094049942022 -0.5222999300577621 -0.85272115255439496 0
		 -0.72208499999999998 6.3998400000000002 -1.2707900000000003 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_r_ear01" -p "bind_r_ear01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.55361825204490689 -2.072873390712715e-07 1.6429262084116658e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.25968219660115044 0.71347097139603655 -0.65078746895096062 0
		 -0.11223474405279926 0.69163757503666523 0.71347097139603655 0 0.95914989391429539 -0.11223474405279926 0.25968219660115044 0
		 0.83000794816317924 6.8001807468919369 -1.5599790637381561 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_upperlid01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 102.0185892030819 90.000000000000085 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 0.20822903281499011 0.97808009380261585 0
		 -1 2.4424906541753444e-15 2.9911883615831605e-31 0 -2.3314683517128287e-15 -0.97808009380261585 0.20822903281499017 0
		 0.34046608396857103 6.9447145462036133 -0.64322850831809086 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_l_upperlid01" -p "bind_l_upperlid01";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.24544908675875476 1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.2723632819226606e-13 74.251665876685834 5.4592263171814451e-13 ;
	setAttr ".radi" 0.07;
createNode joint -n "bind_l_lowerlid01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 70.000000000000028 90.000000000000057 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 -0.34202014332566816 0.93969262078590843 0
		 0.99999999999999978 -1.7763568394002505e-15 1.6653345369377319e-16 0 1.4432899320127029e-15 0.93969262078590843 0.34202014332566788 0
		 0.34046608396857103 6.9447145462036133 -0.64322850831809086 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_l_lowerlid01" -p "bind_l_lowerlid01";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.24544908675875476 1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 74.251665876685834 0 ;
	setAttr ".radi" 0.07;
createNode joint -n "bind_r_upperlid01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.340466 -0.62238999999999933 -0.63626099999999963 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.482253665612827e-30 -77.981410796918141 90.000000000000014 ;
	setAttr ".bps" -type "matrix" 1.1102230246251565e-16 -0.20822903281499 -0.97808009380261574 0
		 -1 -2.2204460492503131e-16 -5.5511151231257852e-17 0 -1.6653345369377348e-16 0.97808009380261574 -0.20822903281499006 0
		 -0.34046599999999999 6.9447099999999997 -0.64322899999999994 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_r_upperlid01" -p "bind_r_upperlid01";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.24544929590627462 5.5511151231257827e-17 3.3791538989191849e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8411282631094713e-13 74.251665876685834 -2.4321278990127677e-13 ;
	setAttr ".radi" 0.07;
createNode joint -n "bind_r_lowerlid01" -p "bind_head01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.340466 -0.62238999999999933 -0.63626099999999952 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.016709298534842e-15 -70.000000000000028 -89.999999999999915 ;
	setAttr ".bps" -type "matrix" 2.2204460492503131e-16 0.34202014332566832 -0.93969262078590854 0
		 1 -2.2204460492503131e-16 -2.7192621468937821e-32 0 -1.1102230246251563e-16 -0.93969262078590854 -0.34202014332566832 0
		 -0.34046599999999999 6.9447099999999997 -0.64322899999999994 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_r_lowerlid01" -p "bind_r_lowerlid01";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.2454464547371642 5.5511151231257827e-17 -8.1214088671899276e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4787793323783121e-06 74.251665876685806 -1.4435683211920635e-15 ;
	setAttr ".radi" 0.07;
createNode joint -n "bind_l_shoulder01" -p "bind_chest01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.858254224247919 0.96356065659972989 -0.61949767216079277 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9999999999999996 -71.985272293129213 ;
	setAttr ".bps" -type "matrix" 0.30907305664546958 -0.95039774346624928 -0.034899496702500962 0
		 0.9509770529923921 0.30926145036506725 0 0 0.010793068967226335 -0.033188620525062072 0.99939082701909576 0
		 1.858254224247919 4.2308794365121702 -2.0658132119450299 1;
	setAttr ".radi" 0.51698977638312082;
createNode joint -n "bind_l_elbow01" -p "bind_l_shoulder01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.6210799222333021 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -22 -0.58847550491915368 ;
	setAttr ".bps" -type "matrix" 0.28153963783430808 -0.89652467139407743 0.34202185004743219 0
		 0.95410127671860157 0.29948393159603259 -0.00035844067462242435 0 -0.10210869743592357 0.32642439905363152 0.93969193122555583 0
		 2.6683594075246355 1.7398109929769476 -2.1572875820480024 1;
	setAttr ".radi" 0.5031158250908504;
createNode joint -n "bind_l_wrist01" -p "bind_l_elbow01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 2.4176404716774496 -1.1102230246251564e-14 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.2350237470758362 8.9104812997117886 79.98825651730661 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.086824088833465263 -0.087155742747658277 0
		 -0.11159519562603178 0.93351877941675743 -0.34071865342161023 0 0.051778935957058278 0.34785667461540276 0.93611680666285912 0
		 3.34902103033426 -0.42766333644270338 -1.3304017151753347 1;
	setAttr ".radi" 0.5031158250908504;
createNode joint -n "bind_r_shoulder01" -p "bind_chest01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -1.85825 0.96356122008755796 -0.61949446021576238 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999986 -1.9999999999999993 71.985272293129228 ;
	setAttr ".bps" -type "matrix" 0.30907305664546936 0.95039774346624939 0.034899496702500955 0
		 0.95097705299239221 -0.30926145036506725 2.338407245616736e-15 0 0.010793068967228545 0.033188620525061344 -0.99939082701909587 0
		 -1.85825 4.2308799999999991 -2.0658099999999999 1;
	setAttr ".radi" 0.51698977638312082;
createNode joint -n "bind_r_elbow01" -p "bind_r_shoulder01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.6210830866938752 -4.0992387591032298e-06 5.5228233009074756e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.0935786030675305e-13 -21.999999999999993 -0.58847550491919409 ;
	setAttr ".bps" -type "matrix" 0.28153963783430808 0.89652467139407743 -0.3420218500474323 0
		 0.9541012767186019 -0.29948393159603193 0.00035844067462478709 0 -0.10210869743592114 -0.32642439905363219 -0.93969193122555594 0
		 -2.6683599999999998 1.7398099999999994 -2.1572899999999997 1;
	setAttr ".radi" 0.5031158250908504;
createNode joint -n "bind_r_wrist01" -p "bind_r_elbow01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -2.4176402365545568 1.151666402243734e-06 -4.483524392417948e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.23502374707572668 8.9104812997116518 79.988256517306638 ;
	setAttr ".bps" -type "matrix" 0.99240387650610407 -0.086824088833465846 0.087155742747658554 0
		 -0.11159519562603223 -0.93351877941675787 0.34071865342160901 0 0.051778935957058542 -0.34785667461540143 -0.93611680666285968 0
		 -3.3490200000000003 -0.42766300000000079 -1.3303999999999996 1;
	setAttr ".radi" 0.5031158250908504;
createNode transform -n "pointLight1";
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	setAttr -k off ".v";
	setAttr ".us" no;
createNode joint -n "bind_l_wrist01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 3.34902103033426 -0.42766333644270338 -1.3304017151753349 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -20.000000000000004 18 5.0000000000000009 ;
	setAttr ".bps" -type "matrix" 0.94743745911883781 0.08289003707270437 -0.3090169943749474 0
		 -0.18718746252691471 0.92690531301270407 -0.32528048601407972 0 0.25946698235262128 0.36602702422486061 0.89370079031290883 0
		 3.34902103033426 -0.42766333644270338 -1.3304017151753349 1;
	setAttr ".radi" 0.2;
createNode joint -n "bind_l_hand01" -p "|bind_l_wrist01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 3.6553919633419696e-06 -0.33867753323728778 -2.6271207625994109e-06 ;
	setAttr ".jo" -type "double3" 0 -20 0 ;
	setAttr ".bps" -type "matrix" 0.97904292348264488 0.2030797714603455 0.015282683081505877 0
		 -0.18718746252691471 0.92690531301270407 -0.32528048601407972 0 -0.080223486905586561 0.31560283131245009 0.94549407455376189 0
		 3.41242 -0.74158600000000185 -1.2202399999999998 1;
	setAttr ".radi" 0.2;
createNode joint -n "be_l_hand01" -p "bind_l_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.6553919633419696e-06 -0.47646822491493263 2.6271207625994109e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.97904292348264499 0.2030797714603455 0.015282683081505819 0
		 -0.18718746252691465 0.92690531301270429 -0.32528048601407972 0 -0.080223486905586533 0.31560283131245009 0.945494074553762 0
		 3.5016050884541072 -1.1832268423647987 -1.0652517561664872 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_ringknuckle01" -p "bind_l_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.050673724347070515 -0.48705584365345966 -0.092979460054136487 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0740356201829173 7.7364971207693243 -4.4531865574323435 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.086824088833465152 -0.087155742747658138 0
		 -0.11333427365274994 0.92081008213048665 -0.37318110223114181 0 0.04785277746652758 0.38022410529197759 0.92365564007570189 0
		 3.5606616352070479 -1.2120944217038192 -1.1489473365270433 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_ring_a01" -p "bind_l_ringknuckle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.3121014363903782e-07 -0.32587042001319788 -3.4155988477557746e-06 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.086824088833465152 -0.087155742747658138 0
		 -0.11333427365274994 0.92081008213048665 -0.37318110223114181 0 0.04785277746652758 0.38022410529197759 0.92365564007570189 0
		 3.5975936289048134 -1.5121605000052853 -1.0273417974034154 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_ring_b01" -p "bind_l_ring_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.2912201007585509e-06 -0.25403680528294403 3.1602951704456927e-06 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.086824088833465152 -0.087155742747658138 0
		 -0.11333427365274994 0.92081008213048665 -0.37318110223114181 0 0.04785277746652758 0.38022410529197759 0.92365564007570189 0
		 3.6263871307572324 -1.7460787509885383 -0.93253734306917957 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_l_ring_c01" -p "bind_l_ring_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.1600099531227106e-06 -0.26342961430133127 2.5530367842030444e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.5416640443905471e-15 7.9513867036587899e-16 3.975693351829395e-16 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.086824088833465124 -0.087155742747658194 0
		 -0.11333427365274988 0.92081008213048687 -0.37318110223114181 0 0.047852777466527607 0.38022410529197759 0.92365564007570189 0
		 3.6562406033674377 -1.9886474862372332 -0.83422996517392956 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_pinkyknuckle01" -p "bind_l_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.031626413145432242 -0.45468768685821137 -0.19922869610545743 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.3746863408430778 14.350060384588748 -2.1148207852335079 ;
	setAttr ".bps" -type "matrix" 0.97442545380217871 0.085251180658794584 -0.20791169081775945 0
		 -0.13467383450760834 0.96221966452639296 -0.23663532174578911 0 0.17988327682537736 0.25858374541915313 0.94909243665913157 0
		 3.4825510390532801 -1.2323382580335895 -1.2611918563320317 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_pinky_a01" -p "bind_l_pinkyknuckle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.3121014097450256e-07 -0.2821075726824902 -3.4155988473116849e-06 ;
	setAttr ".bps" -type "matrix" 0.97442545380217871 0.085251180658794584 -0.20791169081775945 0
		 -0.13467383450760834 0.96221966452639296 -0.23663532174578911 0 0.17988327682537736 0.25858374541915313 0.94909243665913157 0
		 3.5205428053464507 -1.5037886063846524 -1.1944384545422975 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_pinky_b01" -p "bind_l_pinky_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.2912201003144617e-06 -0.20739990908397063 3.1602951702236481e-06 ;
	setAttr ".bps" -type "matrix" 0.97442545380217871 0.085251180658794584 -0.20791169081775945 0
		 -0.13467383450760834 0.96221966452639296 -0.23663532174578911 0 0.17988327682537736 0.25858374541915313 0.94909243665913157 0
		 3.5484769474867552 -1.7033518647960546 -1.1453577872853662 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_l_pinky_c01" -p "bind_l_pinky_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.160009954010889e-06 -0.19164855654633217 2.5530367797621523e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.97442545380217893 0.085251180658794556 -0.20791169081775951 0
		 -0.13467383450760828 0.96221966452639307 -0.23663532174578911 0 0.17988327682537739 0.25858374541915308 0.94909243665913168 0
		 3.5742849346308807 -1.8877599927090516 -1.100006278046797 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_indexknuckle01" -p "bind_l_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.046024786919777849 -0.47067303114844822 0.20797267751406223 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.0740356201829222 7.7364971207693278 -4.453186557432347 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.086824088833465068 -0.087155742747658138 0
		 -0.11707364688758205 0.88416740746052946 -0.45226292882455865 0 0.037792950402147141 0.45903112441616045 0.88761597536160686 0
		 3.5289000389478655 -1.1028718641950437 -0.86979893118329743 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_index_a01" -p "bind_l_indexknuckle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.312101427508594e-07 -0.32499295635471537 -3.4155988486439526e-06 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.086824088833465068 -0.087155742747658138 0
		 -0.11707364688758205 0.88416740746052946 -0.45226292882455865 0 0.037792950402147141 0.45903112441616045 0.88761597536160686 0
		 3.5669478902620768 -1.3902216231165065 -0.72281968519934792 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_index_b01" -p "bind_l_index_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.2912201007585509e-06 -0.23774822175982413 3.160295170889782e-06 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.086824088833465068 -0.087155742747658138 0
		 -0.11707364688758205 0.88416740746052946 -0.45226292882455865 0 0.037792950402147141 0.45903112441616045 0.88761597536160686 0
		 3.5947843348771258 -1.600429202371298 -0.61529237266792836 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_l_index_c01" -p "bind_l_index_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.1600099522345317e-06 -0.23461547631783208 2.5530367842030444e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.086824088833465068 -0.087155742747658194 0
		 -0.117073646887582 0.8841674074605298 -0.45226292882455871 0 0.037792950402147182 0.45903112441616051 0.88761597536160686 0
		 3.6222494903523503 -1.8078686301659144 -0.50918407533196119 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_middleknuckle01" -p "bind_l_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.07284355766254258 -0.48015257928487581 0.065771140859202548 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0740356201829204 7.7364971207693181 -4.4531865574323497 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.08682408883346511 -0.087155742747657999 0
		 -0.11333427365274983 0.92081008213048665 -0.37318110223114187 0 0.047852777466527469 0.38022410529197759 0.92365564007570178 0
		 3.5683391223354177 -1.1510913654796249 -1.0007562666839986 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_middle_a01" -p "bind_l_middleknuckle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -1.312101427508594e-07 -0.36488298295571697 -3.4155988481998634e-06 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.08682408883346511 -0.087155742747657999 0
		 -0.11333427365274983 0.92081008213048665 -0.37318110223114187 0 0.047852777466527469 0.38022410529197759 0.92365564007570178 0
		 3.6096925765176069 -1.4870806050683127 -0.86459197632062013 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_middle_b01" -p "bind_l_middle_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.2912201007585509e-06 -0.2744336552009814 3.160295170889782e-06 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.08682408883346511 -0.087155742747657999 0
		 -0.11333427365274983 0.92081008213048665 -0.37318110223114187 0 0.047852777466527469 0.38022410529197759 0.92365564007570178 0
		 3.6407977405402909 -1.7397804810997968 -0.76217580305192756 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_l_middle_c01" -p "bind_l_middle_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.1600099522345317e-06 -0.23461547631783208 2.5530367842030444e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 0.086824088833465082 -0.087155742747658083 0
		 -0.11333427365274976 0.92081008213048687 -0.37318110223114181 0 0.047852777466527496 0.38022410529197759 0.92365564007570189 0
		 3.6673855837512064 -1.9558168675853864 -0.67462131692920013 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_thumbknuckle01" -p "bind_l_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.040343128826233698 -0.2491059527597016 0.19764887417795071 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 86.815408761137974 19.360292593876164 -97.131989598226113 ;
	setAttr ".bps" -type "matrix" 0.087150738332464783 -0.99613749736433932 -0.010716116498833528 0
		 0.00093397109282826463 -0.010675338440271132 0.99994258077510789 0 -0.99619469809174543 -0.087155742747658305 2.0539125955565396e-15 0
		 3.4036957745394463 -0.91829796020180832 -0.95295140649221688 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_thumb_a01" -p "bind_l_thumbknuckle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.022577151005357399 0.13163550299029814 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.2246514632792752e-15 -1.1422969729781065e-14 43.228055969611198 ;
	setAttr ".bps" -type "matrix" 0.064140613941139249 -0.73313057207842836 0.67705653082088313 0
		 -0.059009364825845387 0.67448012631215437 0.73593101176182962 0 -0.99619469809174543 -0.087155742747658305 2.0539125955565396e-15 0
		 3.4018511029144691 -0.89721326704689153 -0.8210815225300836 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_l_thumb_b01" -p "bind_l_thumb_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.29223212794746511 -2.9190405050893986e-06 5.2432170951632884e-06 ;
	setAttr ".bps" -type "matrix" 0.064140613941139249 -0.73313057207842836 0.67705653082088313 0
		 -0.059009364825845387 0.67448012631215437 0.73593101176182962 0 -0.99619469809174543 -0.087155742747658305 2.0539125955565396e-15 0
		 3.4205900000000002 -1.1114600000000019 -0.62322600000000072 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_l_thumb_c01" -p "bind_l_thumb_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.19202185882582967 2.9190405050338875e-06 -5.2432170950019998e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -47.385944030388806 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 0.99619469809174555 0.087155742747657985 -1.7748367632059503e-15 0
		 -0.087155742747657861 0.99619469809174532 5.5511151231257758e-16 0 1.7082353204994365e-15 -1.9556214739180065e-16 1 0
		 3.4329114509295526 -1.2522346694012567 -0.49321419820917461 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_wrist01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -3.349019999999999 -0.42766300000000096 -1.3303999999999998 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 160.00000085377371 -18.000000000000025 -5.0000000000000107 ;
	setAttr ".bps" -type "matrix" 0.94743745911883759 -0.082890037072704537 0.3090169943749479 0
		 -0.18718745866055536 -0.92690531846693225 0.32528047269689897 0 0.25946698514193245 -0.36602701041289398 -0.89370079515996603 0
		 -3.349019999999999 -0.42766300000000096 -1.3303999999999998 1;
	setAttr ".radi" 0.2;
createNode joint -n "bind_r_hand01" -p "|bind_r_wrist01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -5.1336998163620251e-06 0.33867748004046416 4.0107370258279929e-06 ;
	setAttr ".jo" -type "double3" 2.0365164930926026e-06 -19.999999999999993 3.1074822377786308e-07 ;
	setAttr ".bps" -type "matrix" 0.97904292443664531 -0.20307976673637482 -0.015282684739296448 0
		 -0.18718746151201221 -0.9269053296846923 0.32528043909033466 0 -0.080223477631115508 -0.31560278538760006 -0.9454940906702477 0
		 -3.41242 -0.74158600000000052 -1.2202399999999995 1;
	setAttr ".radi" 0.2;
createNode joint -n "be_r_hand01" -p "bind_r_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -5.4123772796899061e-07 0.47647264237013376 -2.9205933409492957e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.699869328381916e-06 1.3759877950003223e-14 8.0650406669799558e-23 ;
	setAttr ".bps" -type "matrix" 0.97904292443664565 -0.20307976673637465 -0.01528268473929667 0
		 -0.18718746529227095 -0.92690534455640239 0.32528039453713137 0 -0.08022346881054114 -0.31560274171032893 -0.94549410599798467 0
		 -3.5016099999999999 -1.1832300000000009 -1.0652499999999998 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_ringknuckle01" -p "bind_r_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.050672983145021437 0.48705057703525712 0.092980427536162091 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0740384764129316 7.7364969003518933 -4.4531866499227641 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 -0.086824088833465485 0.087155742747658665 0
		 -0.11333427365275071 -0.92081008213048476 0.37318110223114659 0 0.04785277746652733 -0.38022410529198242 -0.92365564007569978 0
		 -3.5606599999999999 -1.2120900000000006 -1.1489499999999997 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_ring_a01" -p "bind_r_ringknuckle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 2.8390524300370146e-06 0.32587546991322047 8.8181352064786722e-07 ;
	setAttr ".jo" -type "double3" 8.5377364625159355e-07 -8.8863670180039973e-23 -1.421818746450899e-22 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 -0.086824088833465485 0.087155742747658665 0
		 -0.11333427365275071 -0.92081008213048476 0.37318110223114659 0 0.04785277746652733 -0.38022410529198242 -0.92365564007569978 0
		 -3.5975900000000003 -1.5121600000000006 -1.0273399999999999 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_ring_b01" -p "bind_r_ring_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -8.7149037444333999e-06 0.25403860952798207 -1.4629272322430609e-06 ;
	setAttr ".jo" -type "double3" 8.5377364625159355e-07 -8.8863670180039973e-23 -1.421818746450899e-22 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 -0.086824088833465485 0.087155742747658665 0
		 -0.11333427365275071 -0.92081008213048476 0.37318110223114659 0 0.04785277746652733 -0.38022410529198242 -0.92365564007569978 0
		 -3.6263899999999993 -1.746080000000001 -0.93253699999999951 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_r_ring_c01" -p "bind_r_ring_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 5.6831169201743137e-06 0.26343024430796369 7.4080437850732029e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364625159355e-07 -8.8863670180039973e-23 -1.421818746450899e-22 ;
	setAttr ".bps" -type "matrix" 0.99240387650610429 -0.086824088833465318 0.087155742747658443 0
		 -0.11333427365275028 -0.92081008213048476 0.37318110223114664 0 0.047852777466527247 -0.38022410529198231 -0.9236556400757 0
		 -3.6562399999999999 -1.9886500000000016 -0.83422999999999936 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_pinkyknuckle01" -p "bind_r_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.031627753494276156 0.45468972085916987 0.19922738483932337 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.3746834126132459 14.350060279830704 -2.1148212189744826 ;
	setAttr ".bps" -type "matrix" 0.9744254538021786 -0.085251180658794709 0.20791169081776006 0
		 -0.1346738345076085 -0.96221966452639318 0.23663532174578833 0 0.179883276825378 -0.25858374541915247 -0.94909243665913157 0
		 -3.4825499999999989 -1.2323400000000011 -1.2611899999999998 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_pinky_a01" -p "bind_r_pinkyknuckle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1153619698944794e-06 0.28210619463516462 6.8718604353534829e-06 ;
	setAttr ".bps" -type "matrix" 0.9744254538021786 -0.085251180658794709 0.20791169081776006 0
		 -0.1346738345076085 -0.96221966452639318 0.23663532174578833 0 0.179883276825378 -0.25858374541915247 -0.94909243665913157 0
		 -3.5205399999999996 -1.5037900000000008 -1.1944399999999995 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_pinky_b01" -p "bind_r_pinky_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -8.4157816275798325e-06 0.20739740478031332 -4.4233098849266739e-06 ;
	setAttr ".bps" -type "matrix" 0.9744254538021786 -0.085251180658794709 0.20791169081776006 0
		 -0.1346738345076085 -0.96221966452639318 0.23663532174578833 0 0.179883276825378 -0.25858374541915247 -0.94909243665913157 0
		 -3.5484799999999992 -1.7033500000000015 -1.1453599999999995 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_r_pinky_c01" -p "bind_r_pinky_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 9.7886957770576544e-06 0.19164892510678033 3.097948159558328e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.97442545380217893 -0.085251180658794543 0.20791169081775987 0
		 -0.13467383450760809 -0.96221966452639307 0.23663532174578844 0 0.17988327682537794 -0.2585837454191523 -0.94909243665913179 0
		 -3.5742799999999995 -1.8877600000000021 -1.1000099999999997 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_indexknuckle01" -p "bind_r_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.046025128715519337 0.47067126300197987 -0.20797322723812584 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.074038476412694 7.7364969003518897 -4.4531866499227695 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 -0.086824088833465402 0.087155742747658582 0
		 -0.11707364688758261 -0.88416740746052902 0.45226292882455943 0 0.03779295040214728 -0.45903112441616134 -0.88761597536160619 0
		 -3.5288999999999997 -1.1028700000000011 -0.86979899999999977 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_index_a01" -p "bind_r_indexknuckle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -2.0016614534767996e-06 0.32499330981356023 3.6633955087239656e-06 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 -0.086824088833465402 0.087155742747658582 0
		 -0.11707364688758261 -0.88416740746052902 0.45226292882455943 0 0.03779295040214728 -0.45903112441616134 -0.88761597536160619 0
		 -3.5669500000000003 -1.3902200000000009 -0.72281999999999991 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_index_b01" -p "bind_r_index_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 4.3745366880010295e-06 0.23774991852580651 -2.4157448534900539e-06 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 -0.086824088833465402 0.087155742747658582 0
		 -0.11707364688758261 -0.88416740746052902 0.45226292882455943 0 0.03779295040214728 -0.45903112441616134 -0.88761597536160619 0
		 -3.5947800000000005 -1.6004300000000009 -0.61529199999999973 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_r_index_c01" -p "bind_r_index_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.6239485393375617e-06 0.2346164149353307 8.8187672275807927e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99240387650610429 -0.086824088833465235 0.087155742747658374 0
		 -0.11707364688758216 -0.88416740746052913 0.45226292882455954 0 0.03779295040214728 -0.45903112441616117 -0.88761597536160641 0
		 -3.6222500000000002 -1.8078700000000012 -0.5091839999999993 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_middleknuckle01" -p "bind_r_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.072844639627129393 0.48015025989769983 -0.065767995360698217 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0740384764129325 7.7364969003518897 -4.4531866499227712 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 -0.086824088833465374 0.087155742747658554 0
		 -0.11333427365275059 -0.92081008213048476 0.37318110223114664 0 0.047852777466527274 -0.38022410529198242 -0.92365564007569978 0
		 -3.5683399999999992 -1.1510900000000008 -1.0007599999999999 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_middle_a01" -p "bind_r_middleknuckle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.9484920901777798e-06 0.36488467603917329 4.4359098438917499e-07 ;
	setAttr ".jo" -type "double3" 8.5377364625159355e-07 -9.4787915370722487e-23 -8.2939427196310641e-23 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 -0.086824088833465374 0.087155742747658554 0
		 -0.11333427365275059 -0.92081008213048476 0.37318110223114664 0 0.047852777466527274 -0.38022410529198242 -0.92365564007569978 0
		 -3.609690000000001 -1.4870800000000006 -0.86459200000000003 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_middle_b01" -p "bind_r_middle_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -7.0948006429816246e-06 0.27443425277381639 -3.1845336931901613e-06 ;
	setAttr ".jo" -type "double3" 8.5377364625159355e-07 -9.4787915370722487e-23 -8.2939427196310641e-23 ;
	setAttr ".bps" -type "matrix" 0.99240387650610395 -0.086824088833465374 0.087155742747658554 0
		 -0.11333427365275059 -0.92081008213048476 0.37318110223114664 0 0.047852777466527274 -0.38022410529198242 -0.92365564007569978 0
		 -3.6408 -1.7397800000000012 -0.76217599999999908 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_r_middle_c01" -p "bind_r_middle_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 3.7813155495669553e-07 0.23461923988574385 5.4078761713149959e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364625159355e-07 -9.4787915370722487e-23 -8.2939427196310641e-23 ;
	setAttr ".bps" -type "matrix" 0.99240387650610429 -0.086824088833465193 0.087155742747658374 0
		 -0.11333427365275014 -0.92081008213048476 0.37318110223114664 0 0.047852777466527219 -0.38022410529198225 -0.9236556400757 0
		 -3.6673900000000006 -1.9558200000000008 -0.67462099999999947 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_thumbknuckle01" -p "bind_r_hand01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.040338992519324275 0.24910690323887308 -0.19764891931468909 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 86.815409134715594 19.360289777039249 -97.131989182374568 ;
	setAttr ".bps" -type "matrix" 0.087150738332465227 0.99613749736433965 0.010716116498833528 0
		 0.00093397109282893076 0.010675338440271132 -0.99994258077510823 0 -0.99619469809174555 0.087155742747658665 -2.5743296383495817e-15 0
		 -3.4036999999999997 -0.91829800000000072 -0.95295099999999999 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_thumb_a01" -p "bind_r_thumbknuckle01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.022577911564426456 -0.13163461082669803 -5.2813556363773273e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182608534224e-06 -2.2392880592992759e-14 43.228055969611177 ;
	setAttr ".bps" -type "matrix" 0.06414061394114004 0.7331305720784288 -0.67705653082088313 0
		 -0.059009364825845186 -0.67448012631215437 -0.73593101176183007 0 -0.99619469809174555 0.087155742747658665 -2.5743296383495817e-15 0
		 -3.4018499999999992 -0.89721300000000115 -0.82108199999999987 1;
	setAttr ".radi" 0.1;
createNode joint -n "bind_r_thumb_b01" -p "bind_r_thumb_a01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.29223271774344056 2.8128556872619725e-06 -4.1677742190771028e-06 ;
	setAttr ".jo" -type "double3" 8.5377364625159387e-07 9.4787913650632594e-23 3.1380597602780319e-22 ;
	setAttr ".bps" -type "matrix" 0.06414061394114004 0.7331305720784288 -0.67705653082088313 0
		 -0.059009364825845186 -0.67448012631215437 -0.73593101176183007 0 -0.99619469809174555 0.087155742747658665 -2.5743296383495817e-15 0
		 -3.4205899999999989 -1.1114600000000006 -0.6232259999999995 1;
	setAttr ".radi" 0.1;
createNode joint -n "be_r_thumb_c01" -p "bind_r_thumb_b01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.19201847668031979 -6.2999455621159939e-06 4.2047739028383546e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -47.385944030388806 89.999999999999929 0 ;
	setAttr ".bps" -type "matrix" 0.99619469809174577 -0.087155742747657486 1.4572034279402454e-15 0
		 -0.08715574274765743 -0.99619469809174555 -7.2164496600634978e-16 0 1.474847768043107e-15 5.3117529094414427e-16 -1.0000000000000002 0
		 -3.4329100000000001 -1.2522300000000013 -0.49321399999999965 1;
	setAttr ".radi" 0.1;
createNode fosterParent -n "DMe_Model_StrippedRNfosterParent1";
createNode mesh -n "DMe_Model_Stripped:polySurfaceShape16Deformed" -p "DMe_Model_StrippedRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 12 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "ramp1";
	setAttr ".uvst[2].uvsn" -type "string" "ramp11";
	setAttr ".uvst[3].uvsn" -type "string" "file2";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode mesh -n "DMe_Model_Stripped:LIris1ShapeDeformed" -p "DMe_Model_StrippedRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
	setAttr ".vcs" 2;
createNode mesh -n "DMe_Model_Stripped:LPupilShapeDeformed" -p "DMe_Model_StrippedRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
createNode mesh -n "DMe_Model_Stripped:LCorneaShapeDeformed" -p "DMe_Model_StrippedRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
	setAttr ".vcs" 2;
createNode mesh -n "DMe_Model_Stripped:RPupilShapeDeformed" -p "DMe_Model_StrippedRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
createNode mesh -n "DMe_Model_Stripped:RIrisShapeDeformed" -p "DMe_Model_StrippedRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode mesh -n "DMe_Model_Stripped:RCorneaShapeDeformed" -p "DMe_Model_StrippedRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode mesh -n "DMe_Model_Stripped:tongueShapeDeformed" -p "DMe_Model_StrippedRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".vcs" 2;
createNode mesh -n "MainBodyShapeDeformed" -p "DMe_Model_StrippedRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 16 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr -s 4 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "ramp1";
	setAttr ".uvst[2].uvsn" -type "string" "ramp11";
	setAttr ".uvst[3].uvsn" -type "string" "file2";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
	setAttr ".vcs" 2;
createNode mesh -n "DMe_Model_Stripped:BodyMeshShapeDeformed" -p "DMe_Model_StrippedRNfosterParent1";
	setAttr -k off ".v";
	setAttr -s 14 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 3 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "ramp1";
	setAttr ".uvst[2].uvsn" -type "string" "ramp11";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 24 ".lnk";
	setAttr -s 24 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 5;
	setAttr -s 6 ".dli[1:5]"  1 2 4 3 5;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "DMe_Model_StrippedRN";
	setAttr -s 72 ".phl";
	setAttr ".phl[24]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"DMe_Model_StrippedRN"
		"DMe_Model_StrippedRN" 297
		0 "|DMe_Model_StrippedRNfosterParent1|DMe_Model_Stripped:polySurfaceShape16Deformed" 
		"|DMe_Model_Stripped:polySurface15" "-s -r "
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"intermediateObject" " 1"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts" " -s 822"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3180]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3181]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3182]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3183]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3184]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3185]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3186]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3187]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3188]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3189]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3190]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3191]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3192]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3193]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3194]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3195]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3196]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3197]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3198]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3199]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3260]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3261]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3262]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3263]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3264]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3265]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3266]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3267]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3268]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3269]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3270]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3271]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3272]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3273]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3274]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3275]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3276]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3277]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3278]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3279]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3284]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3285]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3286]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3287]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3296]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3297]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3298]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3299]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3308]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3309]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3310]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3311]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3320]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3321]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3322]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3323]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3332]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3333]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3334]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3335]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3344]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3345]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3346]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3347]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3394]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3395]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3397]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3400]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3401]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3403]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3405]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3407]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3410]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3411]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3413]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3415]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3416]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3417]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3418]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3419]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3420]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3421]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3422]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3423]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3424]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3425]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3426]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3427]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3428]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3429]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3430]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3431]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3432]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3433]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3434]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3435]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3436]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3437]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3438]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3439]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3440]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3441]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3444]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3446]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3447]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3450]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3452]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3454]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3456]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3457]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3460]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3462]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3517]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3518]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3519]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3520]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3529]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3530]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3531]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3532]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3540]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3541]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3542]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3543]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3552]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3553]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3554]" " -type \"float3\" 0 -5.96046e-08 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"pnts[3555]" " -type \"float3\" 0 0 0"
		2 "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape" 
		"vertexColorSource" " 2"
		2 "|DMe_Model_Stripped:imagePlane1|DMe_Model_Stripped:imagePlaneShape1" "coverage" 
		" -type \"short2\" 620 601"
		2 "|DMe_Model_Stripped:polySurface15|DMe_Model_Stripped:polySurfaceShape16" 
		"intermediateObject" " 1"
		2 "|DMe_Model_Stripped:polySurface15|DMe_Model_Stripped:polySurfaceShape16" 
		"dispResolution" " 3"
		2 "|DMe_Model_Stripped:polySurface15|DMe_Model_Stripped:polySurfaceShape16" 
		"displaySmoothMesh" " 2"
		2 "|DMe_Model_Stripped:polySurface15|DMe_Model_Stripped:polySurfaceShape16" 
		"vertexColorSource" " 2"
		3 "DMe_Model_Stripped:layer3.drawInfo" "|DMe_Model_Stripped:polySurface3.drawOverride" 
		""
		3 "DMe_Model_Stripped:D_Me_Head:layer1.drawInfo" "|DMe_Model_Stripped:Head|DMe_Model_Stripped:D_Me_Head:pCube13.drawOverride" 
		""
		3 "DMe_Model_Stripped:D_Me_Head:layer1.drawInfo" "|DMe_Model_Stripped:Head|DMe_Model_Stripped:Hair.drawOverride" 
		""
		3 "DMe_Model_Stripped:layer3.drawInfo" "|DMe_Model_Stripped:OxBloodShirt.drawOverride" 
		""
		3 "DMe_Model_Stripped:D_Me_Head:EyesLayer.drawInfo" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:Left_Eye|DMe_Model_Stripped:D_Me_Head:LeftEyeOuter.drawOverride" 
		""
		3 "DMe_Model_Stripped:D_Me_Head:EyesLayer.drawInfo" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:RightEye|DMe_Model_Stripped:RightPupil.drawOverride" 
		""
		3 "DMe_Model_Stripped:D_Me_Head:EyesLayer.drawInfo" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:RightEye|DMe_Model_Stripped:RightEyeInner.drawOverride" 
		""
		3 "DMe_Model_Stripped:D_Me_Head:EyesLayer.drawInfo" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:Left_Eye|DMe_Model_Stripped:LeftPupil.drawOverride" 
		""
		3 "DMe_Model_Stripped:D_Me_Head:EyesLayer.drawInfo" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:RightEye|DMe_Model_Stripped:RightEyeOuter.drawOverride" 
		""
		3 "DMe_Model_Stripped:D_Me_Head:EyesLayer.drawInfo" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:Left_Eye|DMe_Model_Stripped:LeftEyeInner.drawOverride" 
		""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Head|DMe_Model_Stripped:D_Me_Head:pCube13.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[1]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Head|DMe_Model_Stripped:Hair.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[8]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:polySurface3.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[9]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Zipper|DMe_Model_Stripped:pCube15.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[10]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Zipper|DMe_Model_Stripped:pCube14.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[11]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Zipper|DMe_Model_Stripped:pCube16.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[12]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:OxBloodShirt.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[13]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:KhakiPants.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[14]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:LeftShoe.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[15]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:RightShoe.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[16]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:polySurface5.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[17]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:polySurface6.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[18]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:nurbsCube1|DMe_Model_Stripped:rightnurbsCube1.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[19]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:nurbsCube2|DMe_Model_Stripped:rightnurbsCube2.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[20]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:polySurface7|DMe_Model_Stripped:polySurface8.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[21]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:polySurface7|DMe_Model_Stripped:polySurface9.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[22]" ""
		5 3 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:BodyMesh|DMe_Model_Stripped:transform1|DMe_Model_Stripped:BodyMeshShape.worldMesh" 
		"DMe_Model_StrippedRN.placeHolderList[24]" ""
		5 3 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:polySurface15|DMe_Model_Stripped:polySurfaceShape16.worldMesh" 
		"DMe_Model_StrippedRN.placeHolderList[32]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:Left_Eye|DMe_Model_Stripped:LeftEyeInner.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[34]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:Left_Eye|DMe_Model_Stripped:LeftPupil.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[35]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:Left_Eye|DMe_Model_Stripped:D_Me_Head:LeftEyeOuter.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[36]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:RightEye|DMe_Model_Stripped:RightPupil.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[37]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:RightEye|DMe_Model_Stripped:RightEyeInner.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[38]" ""
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:D_Me_Head:RightEye|DMe_Model_Stripped:RightEyeOuter.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[39]" ""
		8 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "translateX"
		8 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "translateY"
		8 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "translateZ"
		8 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "rotateX"
		8 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "rotateY"
		8 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "rotateZ"
		8 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "scaleX"
		8 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "scaleY"
		8 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "scaleZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea" "translateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea" "translateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea" "translateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea" "rotateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea" "rotateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea" "rotateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea" "scaleX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea" "scaleY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea" "scaleZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris" "translateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris" "translateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris" "translateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris" "rotateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris" "rotateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris" "rotateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris" "scaleX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris" "scaleY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris" "scaleZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil" "translateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil" "translateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil" "translateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil" "rotateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil" "rotateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil" "rotateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil" "scaleX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil" "scaleY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil" "scaleZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "translateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "translateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "translateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "rotateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "rotateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "rotateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "scaleX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "scaleY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "scaleZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "translateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "translateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "translateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "rotateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "rotateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "rotateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "scaleX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "scaleY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "scaleZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "translateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "translateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "translateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "rotateX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "rotateY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "rotateZ"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "scaleX"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "scaleY"
		8 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "scaleZ"
		9 "|DMe_Model_Stripped:BodyMesh" "translateX"
		9 "|DMe_Model_Stripped:BodyMesh" "translateY"
		9 "|DMe_Model_Stripped:BodyMesh" "translateZ"
		9 "|DMe_Model_Stripped:BodyMesh" "rotateX"
		9 "|DMe_Model_Stripped:BodyMesh" "rotateY"
		9 "|DMe_Model_Stripped:BodyMesh" "rotateZ"
		9 "|DMe_Model_Stripped:BodyMesh" "scaleX"
		9 "|DMe_Model_Stripped:BodyMesh" "scaleY"
		9 "|DMe_Model_Stripped:BodyMesh" "scaleZ"
		9 "|DMe_Model_Stripped:polySurface15" "translateX"
		9 "|DMe_Model_Stripped:polySurface15" "translateY"
		9 "|DMe_Model_Stripped:polySurface15" "translateZ"
		9 "|DMe_Model_Stripped:polySurface15" "rotateX"
		9 "|DMe_Model_Stripped:polySurface15" "rotateY"
		9 "|DMe_Model_Stripped:polySurface15" "rotateZ"
		9 "|DMe_Model_Stripped:polySurface15" "scaleX"
		9 "|DMe_Model_Stripped:polySurface15" "scaleY"
		9 "|DMe_Model_Stripped:polySurface15" "scaleZ"
		9 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "translateX"
		9 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "translateY"
		9 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "translateZ"
		9 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "rotateX"
		9 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "rotateY"
		9 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "rotateZ"
		9 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "scaleX"
		9 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "scaleY"
		9 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "scaleZ"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "translateX"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "translateY"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "translateZ"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "rotateX"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "rotateY"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "rotateZ"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "scaleX"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "scaleY"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "scaleZ"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "translateX"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "translateY"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "translateZ"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "rotateX"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "rotateY"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "rotateZ"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "scaleX"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "scaleY"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "scaleZ"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "translateX"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "translateY"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "translateZ"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "rotateX"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "rotateY"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "rotateZ"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "scaleX"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "scaleY"
		9 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "scaleZ"
		9 "|DMe_Model_Stripped:MainBody" "translateX"
		9 "|DMe_Model_Stripped:MainBody" "translateY"
		9 "|DMe_Model_Stripped:MainBody" "translateZ"
		9 "|DMe_Model_Stripped:MainBody" "rotateX"
		9 "|DMe_Model_Stripped:MainBody" "rotateY"
		9 "|DMe_Model_Stripped:MainBody" "rotateZ"
		9 "|DMe_Model_Stripped:MainBody" "scaleX"
		9 "|DMe_Model_Stripped:MainBody" "scaleY"
		9 "|DMe_Model_Stripped:MainBody" "scaleZ"
		"DMe_Model_StrippedRN" 120
		0 "|DMe_Model_StrippedRNfosterParent1|DMe_Model_Stripped:BodyMeshShapeDeformed" 
		"|DMe_Model_Stripped:BodyMesh" "-s -r "
		0 "|DMe_Model_StrippedRNfosterParent1|MainBodyShapeDeformed" "|DMe_Model_Stripped:MainBody" 
		"-s -r "
		0 "|DMe_Model_StrippedRNfosterParent1|DMe_Model_Stripped:tongueShapeDeformed" 
		"|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue" "-s -r "
		0 "|DMe_Model_StrippedRNfosterParent1|DMe_Model_Stripped:RCorneaShapeDeformed" 
		"|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea" "-s -r "
		0 "|DMe_Model_StrippedRNfosterParent1|DMe_Model_Stripped:RIrisShapeDeformed" 
		"|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris" "-s -r "
		0 "|DMe_Model_StrippedRNfosterParent1|DMe_Model_Stripped:RPupilShapeDeformed" 
		"|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil" "-s -r "
		0 "|DMe_Model_StrippedRNfosterParent1|DMe_Model_Stripped:LCorneaShapeDeformed" 
		"|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea" "-s -r "
		0 "|DMe_Model_StrippedRNfosterParent1|DMe_Model_Stripped:LPupilShapeDeformed" 
		"|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil" "-s -r "
		0 "|DMe_Model_StrippedRNfosterParent1|DMe_Model_Stripped:LIris1ShapeDeformed" 
		"|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1" "-s -r "
		2 "|DMe_Model_Stripped:MainBody" "visibility" " 1"
		2 "|DMe_Model_Stripped:MainBody|DMe_Model_Stripped:MainBodyShape" "intermediateObject" 
		" 1"
		2 "|DMe_Model_Stripped:MainBody|DMe_Model_Stripped:MainBodyShape" "dispResolution" 
		" 3"
		2 "|DMe_Model_Stripped:MainBody|DMe_Model_Stripped:MainBodyShape" "displaySmoothMesh" 
		" 2"
		2 "|DMe_Model_Stripped:MainBody|DMe_Model_Stripped:MainBodyShape" "vertexColorSource" 
		" 2"
		2 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue|DMe_Model_Stripped:tongueShape" 
		"intermediateObject" " 1"
		2 "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue|DMe_Model_Stripped:tongueShape" 
		"vertexColorSource" " 2"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea|DMe_Model_Stripped:RCorneaShape" 
		"intermediateObject" " 1"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea|DMe_Model_Stripped:RCorneaShape" 
		"vertexColorSource" " 2"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris|DMe_Model_Stripped:RIrisShape" 
		"intermediateObject" " 1"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris|DMe_Model_Stripped:RIrisShape" 
		"vertexColorSource" " 2"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil|DMe_Model_Stripped:RPupilShape" 
		"intermediateObject" " 1"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil|DMe_Model_Stripped:RPupilShape" 
		"vertexColorSource" " 2"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea|DMe_Model_Stripped:LCorneaShape" 
		"intermediateObject" " 1"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea|DMe_Model_Stripped:LCorneaShape" 
		"vertexColorSource" " 2"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil|DMe_Model_Stripped:LPupilShape" 
		"intermediateObject" " 1"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil|DMe_Model_Stripped:LPupilShape" 
		"vertexColorSource" " 2"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1|DMe_Model_Stripped:LIris1Shape" 
		"intermediateObject" " 1"
		2 "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1|DMe_Model_Stripped:LIris1Shape" 
		"vertexColorSource" " 2"
		2 "DMe_Model_Stripped:layer1" "visibility" " 0"
		2 "DMe_Model_Stripped:layer1" "displayOrder" " 4"
		2 "DMe_Model_Stripped:layer3" "displayType" " 0"
		2 "DMe_Model_Stripped:layer3" "visibility" " 0"
		2 "DMe_Model_Stripped:layer3" "displayOrder" " 7"
		2 "DMe_Model_Stripped:D_Me_Head:layer1" "visibility" " 0"
		2 "DMe_Model_Stripped:D_Me_Head:layer3" "visibility" " 0"
		2 "DMe_Model_Stripped:D_Me_Head:layer3" "displayOrder" " 6"
		2 "DMe_Model_Stripped:D_Me_Head:EyesLayer" "visibility" " 0"
		2 "DMe_Model_Stripped:D_Me_Head:EyesLayer" "displayOrder" " 3"
		5 4 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:BodyMesh.drawOverride" 
		"DMe_Model_StrippedRN.placeHolderList[40]" ""
		5 3 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:MainBody|DMe_Model_Stripped:MainBodyShape.worldMesh" 
		"DMe_Model_StrippedRN.placeHolderList[41]" ""
		5 3 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Mouth|DMe_Model_Stripped:tongue|DMe_Model_Stripped:tongueShape.worldMesh" 
		"DMe_Model_StrippedRN.placeHolderList[42]" ""
		5 3 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RCornea|DMe_Model_Stripped:RCorneaShape.worldMesh" 
		"DMe_Model_StrippedRN.placeHolderList[43]" ""
		5 3 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RIris|DMe_Model_Stripped:RIrisShape.worldMesh" 
		"DMe_Model_StrippedRN.placeHolderList[44]" ""
		5 3 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:RPupil|DMe_Model_Stripped:RPupilShape.worldMesh" 
		"DMe_Model_StrippedRN.placeHolderList[45]" ""
		5 3 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LCornea|DMe_Model_Stripped:LCorneaShape.worldMesh" 
		"DMe_Model_StrippedRN.placeHolderList[46]" ""
		5 3 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LPupil|DMe_Model_Stripped:LPupilShape.worldMesh" 
		"DMe_Model_StrippedRN.placeHolderList[47]" ""
		5 3 "DMe_Model_StrippedRN" "|DMe_Model_Stripped:Eyes|DMe_Model_Stripped:LIris1|DMe_Model_Stripped:LIris1Shape.worldMesh" 
		"DMe_Model_StrippedRN.placeHolderList[48]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:surfaceShader1SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[49]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:surfaceShader1SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[50]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn1SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[51]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn1SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[52]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert2SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[53]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert2SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[54]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert2SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[55]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert2SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[56]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert2SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[57]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert2SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[58]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert2SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[59]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert2SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[60]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert2SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[61]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert3SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[62]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert3SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[63]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert3SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[64]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert3SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[65]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert3SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[66]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert3SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[67]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert3SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[68]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert3SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[69]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert3SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[70]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn2SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[71]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn2SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[72]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn2SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[73]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn2SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[74]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn2SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[75]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn2SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[76]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn2SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[77]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn2SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[78]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn2SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[79]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn3SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[80]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn3SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[81]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn3SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[82]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert4SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[83]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert4SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[84]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn4SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[85]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn4SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[86]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn4SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[87]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn4SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[88]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn4SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[89]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn4SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[90]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn4SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[91]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn4SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[92]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:blinn4SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[93]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert5SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[94]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert5SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[95]" ""
		5 3 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert5SG.memberWireframeColor" 
		"DMe_Model_StrippedRN.placeHolderList[96]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert5SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[97]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert5SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[98]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert5SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[99]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert5SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[100]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert5SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[101]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert5SG.groupNodes" 
		"DMe_Model_StrippedRN.placeHolderList[102]" ""
		5 4 "DMe_Model_StrippedRN" "DMe_Model_Stripped:lambert7SG.dagSetMembers" 
		"DMe_Model_StrippedRN.placeHolderList[103]" ""
		8 "|DMe_Model_Stripped:MainBody" "translateX"
		8 "|DMe_Model_Stripped:MainBody" "translateY"
		8 "|DMe_Model_Stripped:MainBody" "translateZ"
		8 "|DMe_Model_Stripped:MainBody" "rotateX"
		8 "|DMe_Model_Stripped:MainBody" "rotateY"
		8 "|DMe_Model_Stripped:MainBody" "rotateZ"
		8 "|DMe_Model_Stripped:MainBody" "scaleX"
		8 "|DMe_Model_Stripped:MainBody" "scaleY"
		8 "|DMe_Model_Stripped:MainBody" "scaleZ"
		9 "|DMe_Model_Stripped:MainBody" "translateX"
		9 "|DMe_Model_Stripped:MainBody" "translateY"
		9 "|DMe_Model_Stripped:MainBody" "translateZ"
		9 "|DMe_Model_Stripped:MainBody" "rotateX"
		9 "|DMe_Model_Stripped:MainBody" "rotateY"
		9 "|DMe_Model_Stripped:MainBody" "rotateZ"
		9 "|DMe_Model_Stripped:MainBody" "scaleX"
		9 "|DMe_Model_Stripped:MainBody" "scaleY"
		9 "|DMe_Model_Stripped:MainBody" "scaleZ";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n"
		+ "            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n"
		+ "            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n"
		+ "                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n"
		+ "                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n"
		+ "                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode lambert -n "Newman:Material_001__ProtagonistUV3_png";
createNode shadingEngine -n "Newman:Plane_001SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Newman:materialInfo1";
createNode shadingEngine -n "Newman:Plane_001SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Newman:materialInfo2";
createNode file -n "Newman:ProtagonistUV3_png";
	setAttr ".ftn" -type "string" "/Users/nathanwaters/Documents/The-Runners/Assets/Models/Characters/PlayerCharacter/Materials/PlayerCharacterUV6.jpg";
createNode place2dTexture -n "Newman:place2dTexture1";
createNode lambert -n "Newman:Material";
createNode shadingEngine -n "Newman:ArmguardSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Newman:materialInfo3";
createNode shadingEngine -n "Newman:ArmguardSG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Newman:materialInfo4";
createNode lambert -n "Newman:Material_001";
createNode shadingEngine -n "Newman:CharSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Newman:materialInfo5";
createNode shadingEngine -n "Newman:CharSG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Newman:materialInfo6";
createNode lambert -n "Newman:Material_001__ProtagonistUV3_png_ncl1_1";
createNode shadingEngine -n "Newman:CharSG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Newman:materialInfo7";
createNode shadingEngine -n "Newman:CharSG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Newman:materialInfo8";
createNode file -n "Newman:file1";
	setAttr ".ftn" -type "string" "/Users/nathanwaters/Documents/The-Runners/Assets/Models/Characters/PlayerCharacter/Materials/PlayerCharacterUV6.jpg";
createNode place2dTexture -n "Newman:place2dTexture2";
createNode file -n "Newman:file2";
	setAttr ".ftn" -type "string" "/Users/nathanwaters/Documents/The-Runners/Assets/Models/Characters/PlayerCharacter/Materials/PlayerCharacterUV6.jpg";
createNode place2dTexture -n "Newman:place2dTexture3";
createNode file -n "Newman:file3";
	setAttr ".ftn" -type "string" "/Users/nathanwaters/Documents/The-Runners/Assets/Models/Characters/PlayerCharacter/Materials/PlayerCharacterUV6.jpg";
createNode place2dTexture -n "Newman:place2dTexture4";
createNode displayLayer -n "Newman:NewmanLayer";
	setAttr ".v" no;
	setAttr ".do" 2;
createNode displayLayer -n "Newman:CNTRL";
	setAttr ".v" no;
	setAttr ".do" 5;
createNode displayLayer -n "FullBody";
	setAttr ".do" 6;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:845]" "f[4462:5567]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[846:1957]";
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1958:2030]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[2031:3113]";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[3114:3613]" "f[5916:5947]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[3614:4461]";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[5568:5915]";
createNode tweak -n "tweak1";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1111]";
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1112:1243]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1244:2089]";
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[2090:2437]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[2438:2969]";
createNode skinCluster -n "skinCluster1";
	setAttr -s 146 ".wl";
	setAttr -s 5 ".wl[0].w";
	setAttr ".wl[0].w[41]" 0.0577;
	setAttr ".wl[0].w[42]" 0.096;
	setAttr ".wl[0].w[44]" 0.3854;
	setAttr ".wl[0].w[45]" 0.3542;
	setAttr ".wl[0].w[46]" 0.1067;
	setAttr -s 5 ".wl[1].w";
	setAttr ".wl[1].w[41]" 0.0727;
	setAttr ".wl[1].w[42]" 0.113;
	setAttr ".wl[1].w[44]" 0.4123;
	setAttr ".wl[1].w[45]" 0.2107;
	setAttr ".wl[1].w[46]" 0.1913;
	setAttr -s 5 ".wl[2].w";
	setAttr ".wl[2].w[41]" 0.094509450945094511;
	setAttr ".wl[2].w[42]" 0.10791079107910792;
	setAttr ".wl[2].w[44]" 0.32633263326332629;
	setAttr ".wl[2].w[45]" 0.30783078307830786;
	setAttr ".wl[2].w[46]" 0.16341634163416341;
	setAttr -s 5 ".wl[3].w";
	setAttr ".wl[3].w[41]" 0.1038;
	setAttr ".wl[3].w[42]" 0.1198;
	setAttr ".wl[3].w[44]" 0.3377;
	setAttr ".wl[3].w[45]" 0.2306;
	setAttr ".wl[3].w[46]" 0.2081;
	setAttr ".wl[4].w[38]"  1;
	setAttr ".wl[5].w[38]"  1;
	setAttr ".wl[6].w[38]"  1;
	setAttr ".wl[7].w[38]"  1;
	setAttr -s 5 ".wl[8].w";
	setAttr ".wl[8].w[40]" 0.064106410641064107;
	setAttr ".wl[8].w[41]" 0.18211821182118212;
	setAttr ".wl[8].w[42]" 0.48304830483048306;
	setAttr ".wl[8].w[44]" 0.22232223222322231;
	setAttr ".wl[8].w[45]" 0.048404840484048403;
	setAttr -s 5 ".wl[9].w";
	setAttr ".wl[9].w[40]" 0.0675;
	setAttr ".wl[9].w[41]" 0.1677;
	setAttr ".wl[9].w[42]" 0.4871;
	setAttr ".wl[9].w[44]" 0.2168;
	setAttr ".wl[9].w[45]" 0.0609;
	setAttr ".wl[10].w[38]"  1;
	setAttr ".wl[11].w[38]"  1;
	setAttr -s 5 ".wl[12].w";
	setAttr ".wl[12].w[40]" 0.079092090790920916;
	setAttr ".wl[12].w[41]" 0.26657334266573346;
	setAttr ".wl[12].w[42]" 0.39726027397260272;
	setAttr ".wl[12].w[44]" 0.18478152184781521;
	setAttr ".wl[12].w[45]" 0.07229277072292771;
	setAttr -s 5 ".wl[13].w";
	setAttr ".wl[13].w[40]" 0.0845;
	setAttr ".wl[13].w[41]" 0.2526;
	setAttr ".wl[13].w[42]" 0.3956;
	setAttr ".wl[13].w[44]" 0.1854;
	setAttr ".wl[13].w[45]" 0.0819;
	setAttr -s 5 ".wl[14].w";
	setAttr ".wl[14].w[41]" 0.088091190880911927;
	setAttr ".wl[14].w[42]" 0.12078792120787922;
	setAttr ".wl[14].w[44]" 0.39576042395760425;
	setAttr ".wl[14].w[45]" 0.20757924207579245;
	setAttr ".wl[14].w[46]" 0.18778122187781221;
	setAttr -s 5 ".wl[15].w";
	setAttr ".wl[15].w[41]" 0.0772;
	setAttr ".wl[15].w[42]" 0.1085;
	setAttr ".wl[15].w[44]" 0.3909;
	setAttr ".wl[15].w[45]" 0.3002;
	setAttr ".wl[15].w[46]" 0.1232;
	setAttr ".wl[16].w[38]"  1;
	setAttr ".wl[17].w[38]"  1;
	setAttr -s 5 ".wl[18].w";
	setAttr ".wl[18].w[41]" 0.04;
	setAttr ".wl[18].w[42]" 0.033;
	setAttr ".wl[18].w[44]" 0.0776;
	setAttr ".wl[18].w[45]" 0.4417;
	setAttr ".wl[18].w[46]" 0.4077;
	setAttr -s 5 ".wl[19].w";
	setAttr ".wl[19].w[41]" 0.0054;
	setAttr ".wl[19].w[42]" 0.0077;
	setAttr ".wl[19].w[44]" 0.0763;
	setAttr ".wl[19].w[45]" 0.4846;
	setAttr ".wl[19].w[46]" 0.426;
	setAttr -s 5 ".wl[20].w";
	setAttr ".wl[20].w[40]" 0.0679;
	setAttr ".wl[20].w[41]" 0.1965;
	setAttr ".wl[20].w[42]" 0.5044;
	setAttr ".wl[20].w[44]" 0.175;
	setAttr ".wl[20].w[45]" 0.0562;
	setAttr -s 5 ".wl[21].w";
	setAttr ".wl[21].w[40]" 0.063493650634936505;
	setAttr ".wl[21].w[41]" 0.21317868213178681;
	setAttr ".wl[21].w[42]" 0.49825017498250174;
	setAttr ".wl[21].w[44]" 0.17708229177082294;
	setAttr ".wl[21].w[45]" 0.047995200479951997;
	setAttr -s 4 ".wl[22].w";
	setAttr ".wl[22].w[40]" 0.096052631578947376;
	setAttr ".wl[22].w[41]" 0.15679824561403508;
	setAttr ".wl[22].w[42]" 0.27752192982456142;
	setAttr ".wl[22].w[44]" 0.4696271929824562;
	setAttr ".wl[23].w[38]"  1;
	setAttr -s 5 ".wl[24].w";
	setAttr ".wl[24].w[41]" 0.4539;
	setAttr ".wl[24].w[42]" 0.1642;
	setAttr ".wl[24].w[44]" 0.1475;
	setAttr ".wl[24].w[45]" 0.1321;
	setAttr ".wl[24].w[46]" 0.1023;
	setAttr -s 5 ".wl[25].w";
	setAttr ".wl[25].w[41]" 0.0015;
	setAttr ".wl[25].w[42]" 0.0015;
	setAttr ".wl[25].w[44]" 0.0048;
	setAttr ".wl[25].w[45]" 0.4981;
	setAttr ".wl[25].w[46]" 0.4941;
	setAttr ".wl[26].w[38]"  1;
	setAttr ".wl[27].w[38]"  1;
	setAttr ".wl[28].w[38]"  1;
	setAttr -s 5 ".wl[29].w";
	setAttr ".wl[29].w[40]" 0.0905;
	setAttr ".wl[29].w[41]" 0.1591;
	setAttr ".wl[29].w[42]" 0.3142;
	setAttr ".wl[29].w[44]" 0.3444;
	setAttr ".wl[29].w[45]" 0.0918;
	setAttr -s 5 ".wl[30].w";
	setAttr ".wl[30].w[41]" 0.012201220122012199;
	setAttr ".wl[30].w[42]" 0.0173017301730173;
	setAttr ".wl[30].w[44]" 0.092409240924092403;
	setAttr ".wl[30].w[45]" 0.78247824782478237;
	setAttr ".wl[30].w[46]" 0.095609560956095616;
	setAttr -s 5 ".wl[31].w";
	setAttr ".wl[31].w[41]" 0.046804680468046797;
	setAttr ".wl[31].w[42]" 0.050005000500050009;
	setAttr ".wl[31].w[44]" 0.16051605160516053;
	setAttr ".wl[31].w[45]" 0.51625162516251633;
	setAttr ".wl[31].w[46]" 0.2264226422642264;
	setAttr -s 5 ".wl[32].w";
	setAttr ".wl[32].w[41]" 0.0768;
	setAttr ".wl[32].w[42]" 0.0672;
	setAttr ".wl[32].w[44]" 0.1676;
	setAttr ".wl[32].w[45]" 0.4144;
	setAttr ".wl[32].w[46]" 0.274;
	setAttr -s 5 ".wl[33].w";
	setAttr ".wl[33].w[40]" 0.097109710971097121;
	setAttr ".wl[33].w[41]" 0.3656365636563656;
	setAttr ".wl[33].w[42]" 0.23412341234123413;
	setAttr ".wl[33].w[44]" 0.17341734173417342;
	setAttr ".wl[33].w[45]" 0.12971297129712972;
	setAttr ".wl[34].w[38]"  1;
	setAttr ".wl[35].w[38]"  1;
	setAttr ".wl[36].w[38]"  1;
	setAttr -s 4 ".wl[37].w";
	setAttr ".wl[37].w[40]" 0.091818084076980958;
	setAttr ".wl[37].w[41]" 0.18825932695409095;
	setAttr ".wl[37].w[42]" 0.36458445328459305;
	setAttr ".wl[37].w[44]" 0.35533813568433503;
	setAttr -s 5 ".wl[38].w";
	setAttr ".wl[38].w[41]" 0.04830483048304831;
	setAttr ".wl[38].w[42]" 0.069206920692069199;
	setAttr ".wl[38].w[44]" 0.30813081308130813;
	setAttr ".wl[38].w[45]" 0.3005300530053005;
	setAttr ".wl[38].w[46]" 0.27382738273827384;
	setAttr -s 5 ".wl[39].w";
	setAttr ".wl[39].w[41]" 0.068893110688931114;
	setAttr ".wl[39].w[42]" 0.082591740825917415;
	setAttr ".wl[39].w[44]" 0.27777222277772223;
	setAttr ".wl[39].w[45]" 0.29757024297570239;
	setAttr ".wl[39].w[46]" 0.27317268273172685;
	setAttr -s 5 ".wl[40].w";
	setAttr ".wl[40].w[41]" 0.08849115088491151;
	setAttr ".wl[40].w[42]" 0.086191380861913802;
	setAttr ".wl[40].w[44]" 0.22507749225077492;
	setAttr ".wl[40].w[45]" 0.31406859314068591;
	setAttr ".wl[40].w[46]" 0.28617138286171384;
	setAttr -s 5 ".wl[41].w";
	setAttr ".wl[41].w[40]" 0.0945;
	setAttr ".wl[41].w[41]" 0.3497;
	setAttr ".wl[41].w[42]" 0.2631;
	setAttr ".wl[41].w[44]" 0.1813;
	setAttr ".wl[41].w[45]" 0.1114;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[39]" 0.047204720472047206;
	setAttr ".wl[42].w[40]" 0.19441944194419439;
	setAttr ".wl[42].w[41]" 0.51725172517251727;
	setAttr ".wl[42].w[42]" 0.17891789178917891;
	setAttr ".wl[42].w[44]" 0.062206220622062207;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[39]" 0.0462;
	setAttr ".wl[43].w[40]" 0.1694;
	setAttr ".wl[43].w[41]" 0.3815;
	setAttr ".wl[43].w[42]" 0.3401;
	setAttr ".wl[43].w[44]" 0.0628;
	setAttr -s 5 ".wl[44].w";
	setAttr ".wl[44].w[39]" 0.031496850314968503;
	setAttr ".wl[44].w[40]" 0.12088791120887912;
	setAttr ".wl[44].w[41]" 0.37316268373162681;
	setAttr ".wl[44].w[42]" 0.41725827417258282;
	setAttr ".wl[44].w[44]" 0.057194280571942806;
	setAttr -s 4 ".wl[45].w";
	setAttr ".wl[45].w[40]" 0.13979179944763118;
	setAttr ".wl[45].w[41]" 0.34693010410027619;
	setAttr ".wl[45].w[42]" 0.4247928616953473;
	setAttr ".wl[45].w[44]" 0.088485234756745273;
	setAttr -s 4 ".wl[46].w";
	setAttr ".wl[46].w[40]" 0.18383128295254833;
	setAttr ".wl[46].w[41]" 0.25694200351493846;
	setAttr ".wl[46].w[42]" 0.35700058582308142;
	setAttr ".wl[46].w[44]" 0.20222612770943171;
	setAttr -s 4 ".wl[47].w";
	setAttr ".wl[47].w[40]" 0.17961876832844573;
	setAttr ".wl[47].w[41]" 0.23277126099706744;
	setAttr ".wl[47].w[42]" 0.33198924731182794;
	setAttr ".wl[47].w[44]" 0.25562072336265884;
	setAttr -s 4 ".wl[48].w";
	setAttr ".wl[48].w[40]" 0.1673958093483767;
	setAttr ".wl[48].w[41]" 0.27676721160488144;
	setAttr ".wl[48].w[42]" 0.37197789546396498;
	setAttr ".wl[48].w[44]" 0.18385908358277689;
	setAttr -s 4 ".wl[49].w";
	setAttr ".wl[49].w[40]" 0.12053191489361702;
	setAttr ".wl[49].w[41]" 0.36042553191489363;
	setAttr ".wl[49].w[42]" 0.4301063829787235;
	setAttr ".wl[49].w[44]" 0.088936170212765939;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[39]" 0.0311;
	setAttr ".wl[50].w[40]" 0.1015;
	setAttr ".wl[50].w[41]" 0.3886;
	setAttr ".wl[50].w[42]" 0.4247;
	setAttr ".wl[50].w[44]" 0.0541;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[39]" 0.0456;
	setAttr ".wl[51].w[40]" 0.1485;
	setAttr ".wl[51].w[41]" 0.3965;
	setAttr ".wl[51].w[42]" 0.3491;
	setAttr ".wl[51].w[44]" 0.0603;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[39]" 0.0522;
	setAttr ".wl[52].w[40]" 0.1837;
	setAttr ".wl[52].w[41]" 0.4819;
	setAttr ".wl[52].w[42]" 0.2156;
	setAttr ".wl[52].w[44]" 0.0666;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[40]" 0.0043;
	setAttr ".wl[53].w[41]" 0.9919;
	setAttr ".wl[53].w[42]" 0.0021;
	setAttr ".wl[53].w[44]" 0.001;
	setAttr ".wl[53].w[45]" 0.0007;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[41]" 0.1712;
	setAttr ".wl[54].w[42]" 0.1308;
	setAttr ".wl[54].w[44]" 0.2479;
	setAttr ".wl[54].w[45]" 0.2672;
	setAttr ".wl[54].w[46]" 0.1829;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[41]" 0.124;
	setAttr ".wl[55].w[42]" 0.1516;
	setAttr ".wl[55].w[44]" 0.426;
	setAttr ".wl[55].w[45]" 0.1907;
	setAttr ".wl[55].w[46]" 0.1077;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[41]" 0.0812;
	setAttr ".wl[56].w[42]" 0.1537;
	setAttr ".wl[56].w[44]" 0.5786;
	setAttr ".wl[56].w[45]" 0.1296;
	setAttr ".wl[56].w[46]" 0.0569;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[41]" 0.06709329067093292;
	setAttr ".wl[57].w[42]" 0.14388561143885611;
	setAttr ".wl[57].w[44]" 0.5612438756124386;
	setAttr ".wl[57].w[45]" 0.17438256174382563;
	setAttr ".wl[57].w[46]" 0.053394660533946606;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[41]" 0.052194780521947808;
	setAttr ".wl[58].w[42]" 0.1021897810218978;
	setAttr ".wl[58].w[44]" 0.55064493550644933;
	setAttr ".wl[58].w[45]" 0.24737526247375263;
	setAttr ".wl[58].w[46]" 0.047595240475952406;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[41]" 0.00090009000900090016;
	setAttr ".wl[59].w[42]" 0.0016001600160016004;
	setAttr ".wl[59].w[44]" 0.99139913991399131;
	setAttr ".wl[59].w[45]" 0.0039003900390039005;
	setAttr ".wl[59].w[46]" 0.0022002200220022005;
	setAttr -s 5 ".wl[60].w";
	setAttr ".wl[60].w[41]" 0.0712;
	setAttr ".wl[60].w[42]" 0.1286;
	setAttr ".wl[60].w[44]" 0.5392;
	setAttr ".wl[60].w[45]" 0.138;
	setAttr ".wl[60].w[46]" 0.123;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[41]" 0.081508150815081504;
	setAttr ".wl[61].w[42]" 0.15651565156515651;
	setAttr ".wl[61].w[44]" 0.54025402540254031;
	setAttr ".wl[61].w[45]" 0.1171117111711171;
	setAttr ".wl[61].w[46]" 0.10461046104610459;
	setAttr -s 5 ".wl[62].w";
	setAttr ".wl[62].w[41]" 0.096190380961903799;
	setAttr ".wl[62].w[42]" 0.1681831816818318;
	setAttr ".wl[62].w[44]" 0.53974602539746031;
	setAttr ".wl[62].w[45]" 0.1037896210378962;
	setAttr ".wl[62].w[46]" 0.092090790920907897;
	setAttr -s 5 ".wl[63].w";
	setAttr ".wl[63].w[41]" 0.13378662133786623;
	setAttr ".wl[63].w[42]" 0.16098390160983905;
	setAttr ".wl[63].w[44]" 0.41125887411258882;
	setAttr ".wl[63].w[45]" 0.15628437156284372;
	setAttr ".wl[63].w[46]" 0.13768623137686231;
	setAttr -s 5 ".wl[64].w";
	setAttr ".wl[64].w[41]" 0.1691;
	setAttr ".wl[64].w[42]" 0.1442;
	setAttr ".wl[64].w[44]" 0.2738;
	setAttr ".wl[64].w[45]" 0.2215;
	setAttr ".wl[64].w[46]" 0.1914;
	setAttr -s 5 ".wl[65].w";
	setAttr ".wl[65].w[41]" 0.1843;
	setAttr ".wl[65].w[42]" 0.1168;
	setAttr ".wl[65].w[44]" 0.2039;
	setAttr ".wl[65].w[45]" 0.2744;
	setAttr ".wl[65].w[46]" 0.2206;
	setAttr ".wl[66].w[38]"  1;
	setAttr ".wl[67].w[38]"  1;
	setAttr ".wl[68].w[38]"  1;
	setAttr ".wl[69].w[38]"  1;
	setAttr ".wl[70].w[38]"  1;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[39]" 0.0317;
	setAttr ".wl[71].w[40]" 0.1202;
	setAttr ".wl[71].w[41]" 0.3938;
	setAttr ".wl[71].w[42]" 0.4057;
	setAttr ".wl[71].w[44]" 0.0486;
	setAttr -s 5 ".wl[72].w";
	setAttr ".wl[72].w[40]" 0.067806780678067807;
	setAttr ".wl[72].w[41]" 0.20172017201720172;
	setAttr ".wl[72].w[42]" 0.50405040504050402;
	setAttr ".wl[72].w[44]" 0.16641664166416642;
	setAttr ".wl[72].w[45]" 0.060006000600060005;
	setAttr -s 5 ".wl[73].w";
	setAttr ".wl[73].w[41]" 0.0876;
	setAttr ".wl[73].w[42]" 0.1345;
	setAttr ".wl[73].w[44]" 0.5712;
	setAttr ".wl[73].w[45]" 0.1373;
	setAttr ".wl[73].w[46]" 0.0694;
	setAttr -s 5 ".wl[74].w";
	setAttr ".wl[74].w[41]" 0.079107910791079109;
	setAttr ".wl[74].w[42]" 0.1024102410241024;
	setAttr ".wl[74].w[44]" 0.34993499349934992;
	setAttr ".wl[74].w[45]" 0.32383238323832381;
	setAttr ".wl[74].w[46]" 0.14471447144714472;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[41]" 0.052705270527052699;
	setAttr ".wl[75].w[42]" 0.051905190519051909;
	setAttr ".wl[75].w[44]" 0.15161516151615162;
	setAttr ".wl[75].w[45]" 0.48074807480748077;
	setAttr ".wl[75].w[46]" 0.26302630263026305;
	setAttr -s 5 ".wl[76].w";
	setAttr ".wl[76].w[41]" 0.0007;
	setAttr ".wl[76].w[42]" 0.0007;
	setAttr ".wl[76].w[44]" 0.0017;
	setAttr ".wl[76].w[45]" 0.4989;
	setAttr ".wl[76].w[46]" 0.498;
	setAttr -s 5 ".wl[77].w";
	setAttr ".wl[77].w[41]" 0.069906990699069915;
	setAttr ".wl[77].w[42]" 0.077907790779077918;
	setAttr ".wl[77].w[44]" 0.24182418241824183;
	setAttr ".wl[77].w[45]" 0.31703170317031709;
	setAttr ".wl[77].w[46]" 0.29332933293329339;
	setAttr -s 5 ".wl[78].w";
	setAttr ".wl[78].w[41]" 0.090190980901909787;
	setAttr ".wl[78].w[42]" 0.11578842115788418;
	setAttr ".wl[78].w[44]" 0.36566343365663451;
	setAttr ".wl[78].w[45]" 0.22477752224777517;
	setAttr ".wl[78].w[46]" 0.20357964203579637;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[41]" 0.1018101810181018;
	setAttr ".wl[79].w[42]" 0.14971497149714968;
	setAttr ".wl[79].w[44]" 0.53255325532553266;
	setAttr ".wl[79].w[45]" 0.1145114511451145;
	setAttr ".wl[79].w[46]" 0.1014101410141014;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[40]" 0.063706370637063706;
	setAttr ".wl[80].w[41]" 0.21822182218221819;
	setAttr ".wl[80].w[42]" 0.49754975497549769;
	setAttr ".wl[80].w[44]" 0.168016801680168;
	setAttr ".wl[80].w[45]" 0.052505250525052498;
	setAttr -s 5 ".wl[81].w";
	setAttr ".wl[81].w[39]" 0.030696930306969305;
	setAttr ".wl[81].w[40]" 0.10108989101089892;
	setAttr ".wl[81].w[41]" 0.40845915408459155;
	setAttr ".wl[81].w[42]" 0.41435856414358557;
	setAttr ".wl[81].w[44]" 0.045395460453954609;
	setAttr ".wl[82].w[38]"  1;
	setAttr ".wl[83].w[38]"  1;
	setAttr ".wl[84].w[38]"  1;
	setAttr ".wl[85].w[38]"  1;
	setAttr ".wl[86].w[38]"  1;
	setAttr -s 4 ".wl[87].w";
	setAttr ".wl[87].w[40]" 0.11557317200375508;
	setAttr ".wl[87].w[41]" 0.37863773860436006;
	setAttr ".wl[87].w[42]" 0.43997079378324816;
	setAttr ".wl[87].w[44]" 0.065818295608636695;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[40]" 0.05939406059394061;
	setAttr ".wl[88].w[41]" 0.15728427157284272;
	setAttr ".wl[88].w[42]" 0.54804519548045194;
	setAttr ".wl[88].w[44]" 0.18318168183181679;
	setAttr ".wl[88].w[45]" 0.052094790520947905;
	setAttr -s 5 ".wl[89].w";
	setAttr ".wl[89].w[41]" 0.0622062206220622;
	setAttr ".wl[89].w[42]" 0.13191319131913187;
	setAttr ".wl[89].w[44]" 0.61366136613661371;
	setAttr ".wl[89].w[45]" 0.14401440144014399;
	setAttr ".wl[89].w[46]" 0.048204820482048195;
	setAttr -s 5 ".wl[90].w";
	setAttr ".wl[90].w[41]" 0.0628;
	setAttr ".wl[90].w[42]" 0.0971;
	setAttr ".wl[90].w[44]" 0.3755;
	setAttr ".wl[90].w[45]" 0.3443;
	setAttr ".wl[90].w[46]" 0.1203;
	setAttr -s 5 ".wl[91].w";
	setAttr ".wl[91].w[41]" 0.024297570242975703;
	setAttr ".wl[91].w[42]" 0.029197080291970798;
	setAttr ".wl[91].w[44]" 0.11668833116688332;
	setAttr ".wl[91].w[45]" 0.65093490650934904;
	setAttr ".wl[91].w[46]" 0.17888211178882113;
	setAttr -s 5 ".wl[92].w";
	setAttr ".wl[92].w[41]" 0.0003;
	setAttr ".wl[92].w[42]" 0.0004;
	setAttr ".wl[92].w[44]" 0.0028;
	setAttr ".wl[92].w[45]" 0.4995;
	setAttr ".wl[92].w[46]" 0.497;
	setAttr -s 5 ".wl[93].w";
	setAttr ".wl[93].w[41]" 0.052;
	setAttr ".wl[93].w[42]" 0.0698;
	setAttr ".wl[93].w[44]" 0.2797;
	setAttr ".wl[93].w[45]" 0.3115;
	setAttr ".wl[93].w[46]" 0.287;
	setAttr -s 5 ".wl[94].w";
	setAttr ".wl[94].w[41]" 0.07669233076692332;
	setAttr ".wl[94].w[42]" 0.11308869113088692;
	setAttr ".wl[94].w[44]" 0.39856014398560147;
	setAttr ".wl[94].w[45]" 0.21567843215678431;
	setAttr ".wl[94].w[46]" 0.19598040195980404;
	setAttr -s 5 ".wl[95].w";
	setAttr ".wl[95].w[41]" 0.077992200779922013;
	setAttr ".wl[95].w[42]" 0.148985101489851;
	setAttr ".wl[95].w[44]" 0.57504249575042488;
	setAttr ".wl[95].w[45]" 0.10458954104589541;
	setAttr ".wl[95].w[46]" 0.093390660933906605;
	setAttr -s 5 ".wl[96].w";
	setAttr ".wl[96].w[40]" 0.056894310568943104;
	setAttr ".wl[96].w[41]" 0.17328267173282672;
	setAttr ".wl[96].w[42]" 0.53754624537546247;
	setAttr ".wl[96].w[44]" 0.18948105189481051;
	setAttr ".wl[96].w[45]" 0.0427957204279572;
	setAttr -s 4 ".wl[97].w";
	setAttr ".wl[97].w[40]" 0.099321148825065278;
	setAttr ".wl[97].w[41]" 0.39018276762402088;
	setAttr ".wl[97].w[42]" 0.4448041775456919;
	setAttr ".wl[97].w[44]" 0.065691906005221928;
	setAttr -s 4 ".wl[98].w[39:42]"  0.15567197690580564 0.52293381802630179 
		0.16775366192665456 0.15364054314123812;
	setAttr -s 4 ".wl[99].w[39:42]"  0.17229621736814066 0.49525839104954722 
		0.18316462440063933 0.14928076718167288;
	setAttr -s 5 ".wl[100].w[38:42]"  0.0544 0.1411 0.53 0.1717 0.1028;
	setAttr -s 5 ".wl[101].w[38:42]"  0.0017998200179982001 0.0038996100389961002 
		0.98440155984401567 0.0080991900809918999 0.0017998200179982001;
	setAttr -s 5 ".wl[102].w[38:42]"  0.050094990500949906 0.12848715128487151 
		0.58004199580041993 0.16038396160383961 0.080991900809919012;
	setAttr -s 4 ".wl[103].w[39:42]"  0.16890676262038307 0.53021483754894705 
		0.16647264260768335 0.13440575722298656;
	setAttr -s 4 ".wl[104].w[39:42]"  0.14487070792708776 0.57577363289529471 
		0.14561254768969903 0.13374311148791862;
	setAttr -s 4 ".wl[105].w[39:42]"  0.1305328749462828 0.57864202836269862 
		0.1441770519982811 0.14664804469273746;
	setAttr -s 4 ".wl[106].w[39:42]"  0.12766198459447214 0.56898504757589485 
		0.14227458087902128 0.16107838695061169;
	setAttr -s 4 ".wl[107].w[39:42]"  0.13910482921083628 0.51861012956419317 
		0.15806831566548882 0.18421672555948176;
	setAttr -s 4 ".wl[108].w[39:42]"  0.15313463514902365 0.39304066950521233 
		0.19850242255175449 0.25532227279400965;
	setAttr -s 4 ".wl[109].w";
	setAttr ".wl[109].w[40]" 0.33350296861747253;
	setAttr ".wl[109].w[41]" 0.21832061068702291;
	setAttr ".wl[109].w[42]" 0.28736217133163694;
	setAttr ".wl[109].w[44]" 0.16081424936386768;
	setAttr -s 4 ".wl[110].w[39:42]"  0.16795177344735734 0.36380204682461798 
		0.20860787887284449 0.25963830085518014;
	setAttr -s 4 ".wl[111].w[39:42]"  0.16063969447428092 0.44277360066833754 
		0.18522496717985437 0.21136173767752711;
	setAttr -s 4 ".wl[112].w[39:42]"  0.15297646515920629 0.47831102907245038 
		0.17466543608675589 0.19404706968158744;
	setAttr -s 4 ".wl[113].w[39:42]"  0.13931586923576533 0.53669625460056292 
		0.16150681965793462 0.16248105650573719;
	setAttr -s 3 ".wl[114].w[38:40]"  0.099302139343324561 0.44971971170346642 
		0.45097814895320915;
	setAttr -s 3 ".wl[115].w[38:40]"  0.14307710529432671 0.41916380433495215 
		0.43775909037072114;
	setAttr -s 3 ".wl[116].w[38:40]"  0.17055230021194365 0.36017952873706521 
		0.46926817105099122;
	setAttr -s 3 ".wl[117].w[38:40]"  0.15961732124874117 0.30022658610271902 
		0.54015609264853981;
	setAttr -s 3 ".wl[118].w[38:40]"  0.16689517636794221 0.34775021812289675 
		0.48535460550916104;
	setAttr -s 3 ".wl[119].w[38:40]"  0.13609813084112152 0.42114485981308408 
		0.44275700934579437;
	setAttr -s 3 ".wl[120].w[38:40]"  0.08676056338028168 0.45329577464788728 
		0.45994366197183095;
	setAttr -s 3 ".wl[121].w[38:40]"  0.07607548939163053 0.45492908217090611 
		0.46899542843746334;
	setAttr -s 3 ".wl[122].w[38:40]"  0.11304613504430185 0.42575618698441792 
		0.46119767797128014;
	setAttr -s 3 ".wl[123].w[38:40]"  0.1225631462959824 0.41583319206645192 
		0.46160366163756578;
	setAttr -s 3 ".wl[124].w[38:40]"  0.15003080714725817 0.39001848428835489 
		0.45995070856438697;
	setAttr -s 3 ".wl[125].w";
	setAttr ".wl[125].w[39]" 0.33333333333333337;
	setAttr ".wl[125].w[40]" 0.5;
	setAttr ".wl[125].w[42]" 0.16666666666666669;
	setAttr -s 3 ".wl[126].w[38:40]"  0.15739062904478385 0.41004400724825263 
		0.43256536370696352;
	setAttr -s 3 ".wl[127].w[38:40]"  0.12891010865986169 0.4306881791241356 
		0.44040171221600283;
	setAttr -s 3 ".wl[128].w[38:40]"  0.11802447030737095 0.43792897642494782 
		0.44404655326768128;
	setAttr -s 3 ".wl[129].w[38:40]"  0.076280041797283191 0.46023452920004643 
		0.46348542900267042;
	setAttr -s 3 ".wl[130].w[38:40]"  0.41188070002464883 0.47843233916687206 
		0.1096869608084792;
	setAttr -s 3 ".wl[131].w[38:40]"  0.35310362966859543 0.45607574960547087 
		0.1908206207259337;
	setAttr -s 3 ".wl[132].w[38:40]"  0.28755549190892171 0.41672633538593734 
		0.29571817270514106;
	setAttr -s 3 ".wl[133].w[38:40]"  0.25809339101894668 0.38818439504699381 
		0.35372221393405939;
	setAttr -s 3 ".wl[134].w[38:40]"  0.28158427291124605 0.40980052038161313 
		0.30861520670714082;
	setAttr -s 3 ".wl[135].w[38:40]"  0.35927754677754675 0.4588097713097713 
		0.1819126819126819;
	setAttr -s 3 ".wl[136].w[38:40]"  0.42400774443368822 0.48184898354307854 
		0.094143272023233276;
	setAttr -s 3 ".wl[137].w[38:40]"  0.42511880515953826 0.48499660556687046 
		0.089884589273591275;
	setAttr -s 3 ".wl[138].w[38:40]"  0.3611960584437649 0.46755011892626569 
		0.17125382262996944;
	setAttr -s 3 ".wl[139].w[38:40]"  0.33065552699228795 0.45822622107969152 
		0.21111825192802053;
	setAttr -s 3 ".wl[140].w[38:40]"  0.28775055679287309 0.4356347438752784 
		0.27661469933184857;
	setAttr -s 3 ".wl[141].w[38:40]"  0.25 0.5 0.25;
	setAttr -s 3 ".wl[142].w[38:40]"  0.2933092224231465 0.44448462929475591 
		0.26220614828209765;
	setAttr -s 3 ".wl[143].w[38:40]"  0.3347327176042541 0.46235656311223067 
		0.20291071928351523;
	setAttr -s 3 ".wl[144].w[38:40]"  0.36020437127448196 0.46948623332387163 
		0.1703093954016463;
	setAttr -s 3 ".wl[145].w[38:40]"  0.42191853522621736 0.48441024280217582 
		0.093671221971606738;
	setAttr -s 57 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.0208956 1.15096 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.020895558599431076 1.1509606686205125 1;
	setAttr ".pm[2]" -type "matrix" 0.052276247008502502 -0.0024992628051869409 -0.99862953475457394 0
		 -0.99749021469067423 0.047688775204335322 -0.052335956242944119 0 0.047754220704132752 0.99885911639476987 4.6924270025172642e-16 0
		 0.036243362321182283 1.1505425302069994 0.75686251415292027 1;
	setAttr ".pm[3]" -type "matrix" 0.051392986334441539 -0.0098900592258724974 0.99862953475457394 0
		 -0.98063659703802397 0.18871357193858909 0.052335956242944147 0 -0.18897255225379236 -0.98198236974738395 -5.880712583561377e-16 0
		 -3.9536789212407526 -0.22519713567839245 -0.75686251415292016 1;
	setAttr ".pm[4]" -type "matrix" 0.050279895435149678 -0.014525303125710459 0.99862953475457394 0
		 -0.959397557442771 0.27715929437235537 0.052335956242944147 0 -0.27753965282077386 -0.96071418284114252 -5.863365348801609e-16 0
		 -8.4504321944297907 0.54597620121914725 -0.75686251415291983 1;
	setAttr ".pm[5]" -type "matrix" 1 -3.3062227969288335e-16 2.2467967077269443e-16 0
		 4.6957564829929758e-17 0.61813650066098702 0.78607077706183037 0 -4.7505857299375478e-16 -0.78607077706183037 0.61813650066098691 0
		 -1.1886425773215925 3.6492057157181561 7.5862481911700783 1;
	setAttr ".pm[6]" -type "matrix" 2.2810772451399343e-16 -1.0620865760578664e-16 1 0
		 1.0000000000000002 3.3306690738754696e-16 -6.4064737632585723e-17 0 -2.7755575615628914e-16 0.99999999999999989 8.0052939318823541e-17 0
		 8.8742130435359599 1.4636335909667482 -1.1824357333543325 1;
	setAttr ".pm[7]" -type "matrix" 1 6.1207815187086456e-18 4.7401086018153924e-18 0
		 2.6897790499799375e-16 0.99992714749970868 -0.012070612788761537 0 8.4073260990648957e-17 0.012070612788761642 0.99992714749970812 0
		 -1.1824357333543298 8.9034859928148435 -0.13100168049057612 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.97910444140056907 1.1509606686205125 1;
	setAttr ".pm[9]" -type "matrix" 0.052276247008502544 -0.0024992628051871595 -0.99862953475457372 0
		 0.997490214690674 -0.047688775204335197 0.052335956242944008 0 -0.047754220704132752 -0.99885911639476987 -7.5460471204991096e-17 0
		 -0.036243376998202306 -1.1505418601211073 -0.75686241488674011 1;
	setAttr ".pm[10]" -type "matrix" 0.051392986334441629 -0.0098900741066119575 0.99862953460720028 0
		 0.98063659703802386 -0.1887135711587225 -0.052335959054995378 0 0.18897255225379225 0.98198236974738373 1.4632677777792753e-08 0
		 3.9536755231333078 0.22519735725206291 0.75686227998246114 1;
	setAttr ".pm[11]" -type "matrix" 0.050279894081144819 -0.014525292232252764 0.99862953498119422 0
		 0.95939755751373124 -0.27715929494325714 -0.052335951918765826 0 0.27753965282077364 0.96071418284114241 -1.0103555417653726e-08 0
		 8.4504357942643331 -0.5459802907522211 0.75685970980508011 1;
	setAttr ".pm[12]" -type "matrix" 0.99999999999999989 -1.7665337189882834e-16 -1.3473317794803059e-16 0
		 -1.0866781415486495e-16 -0.61813650066098691 -0.78607077706182971 0 -1.6489811260486039e-16 0.78607077706183004 -0.61813650066098691 0
		 1.1886399999999979 -3.6492109535184984 -7.5862500999057874 1;
	setAttr ".pm[13]" -type "matrix" 3.3688522058196089e-16 -2.8716019836508215e-16 0.99999999999999989 0
		 -0.99999999999999956 -1.5543122344752186e-15 3.3542139569519687e-16 0 1.7208456881689915e-15 -1 -5.5347617122366592e-16 0
		 -8.8742099999999926 -1.4636300000000153 1.1824400000000019 1;
	setAttr ".pm[14]" -type "matrix" 0.99999999999999989 1.1069599605616407e-16 -3.4403258173576148e-16 0
		 5.7885860169714175e-17 -0.99992714749970812 0.012070612788760648 0 -5.568264392835204e-16 -0.012070612788760484 -0.99992714749970868 0
		 1.1824400000000006 -8.9034873706135809 0.13100169232112485 1;
	setAttr ".pm[15]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1.3753262803389132 1.4463155397842371 1;
	setAttr ".pm[16]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -3.2673187799124408 1.4463155397842371 1;
	setAttr ".pm[17]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -5.3858509288309335 1.3648355397842369 1;
	setAttr ".pm[18]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -5.7893785667962181 1.3311465397842366 1;
	setAttr ".pm[19]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -5.9220300000000003 1.31829 1;
	setAttr ".pm[20]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -6.0857799999999997 1.3024199999999999 1;
	setAttr ".pm[21]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -6.3223189425434061 1.2794895397842363 1;
	setAttr ".pm[22]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -6.3223189425434061 1.2794895397842363 1;
	setAttr ".pm[23]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -8.1097169769685138 1.1918982903526261 1;
	setAttr ".pm[24]" -type "matrix" 2.1028351788058589e-16 1 -6.3450499541422371e-16 0
		 -0.39232964783840496 7.5090153373859539e-16 0.91982468298420494 0 0.91982468298420494 7.8880607044109938e-17 0.39232964783840513 0
		 3.6573392245637737 -4.6465120791356485e-15 -5.3134433364935498 1;
	setAttr ".pm[25]" -type "matrix" 2.1028351788058589e-16 1 -6.3450499541422371e-16 0
		 -0.39232964783840496 7.5090153373859539e-16 0.91982468298420494 0 0.91982468298420494 7.8880607044109938e-17 0.39232964783840513 0
		 2.46856517731272 -4.4244674742106172e-15 -5.3134433364935489 1;
	setAttr ".pm[26]" -type "matrix" -2.8916960833312014e-18 -5.1841675499498456e-16 1 0
		 2.2204460492503136e-16 -1 -3.593214908865612e-16 0 1.0000000000000002 1.1102230246251563e-16 5.1125031428481123e-17 0
		 0.4735138935283672 6.1800591203339303 2.2448364695739377e-15 1;
	setAttr ".pm[27]" -type "matrix" -1 -5.1841675499498456e-16 1.1073313285418257e-15 0
		 3.5932149088656144e-16 -1 2.2204460492503096e-16 0 1.0590979931966758e-15 1.1102230246251563e-16 1.0000000000000002 0
		 -9.9434345521343408e-16 6.1800591203339303 0.2263439747006733 1;
	setAttr ".pm[28]" -type "matrix" 1.1102230246251563e-15 0 -1 0 0 1 0 0 1 0 1.1102230246251563e-15 0
		 0.47351389352836903 -6.3069792564003597 5.2570602707510023e-16 1;
	setAttr ".pm[29]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.2478698728540532e-16 -6.3069792564003597 0.22634397470067513 1;
	setAttr ".pm[30]" -type "matrix" 0.25968219660115044 -0.11223474405279922 0.95914989391429573 0
		 0.71347097139603655 0.69163757503666523 -0.11223474405279922 0 -0.65078746895096062 0.71347097139603655 0.25968219660115044 0
		 -5.7427185337633402 -3.4971050140047328 0.37221330013478449 1;
	setAttr ".pm[31]" -type "matrix" 0.25968219660115044 -0.11223474405279922 0.95914989391429573 0
		 0.71347097139603655 0.69163757503666523 -0.11223474405279922 0 -0.65078746895096062 0.71347097139603655 0.25968219660115044 0
		 -6.0824846768356871 -3.4971050140047324 0.37221330013478449 1;
	setAttr ".pm[32]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 0
		 0 6.3223200000000004 -1.2794900000000009 1;
	setAttr ".pm[33]" -type "matrix" 1 0 0 0 0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 0
		 0 8.1097199999999994 -1.1919000000000008 1;
	setAttr ".pm[34]" -type "matrix" 2.1028351788058584e-16 1 -6.3450499541422371e-16 0
		 0.39232964783840502 -7.5090153373859539e-16 -0.91982468298420494 0 -0.91982468298420494 -7.8880607044110036e-17 -0.39232964783840529 0
		 -3.6573400627531658 4.6465128368793279e-15 5.3134441286119376 1;
	setAttr ".pm[35]" -type "matrix" 2.1028351788058584e-16 1 -6.3450499541422371e-16 0
		 0.39232964783840502 -7.5090153373859539e-16 -0.91982468298420494 0 -0.91982468298420494 -7.8880607044110036e-17 -0.39232964783840529 0
		 -2.4685662611431702 4.5564499746598654e-15 5.3134454407589065 1;
	setAttr ".pm[36]" -type "matrix" -3.3001592463100862e-17 1.0378329885163652e-15 1.0000000000000002 0
		 1.110223024625157e-16 1.0000000000000002 -1.0839684411261426e-15 0 -1 3.3306690738754691e-16 -7.8880607044110184e-17 0
		 -0.47351400000000082 -6.1800600000000001 6.7089856325021463e-15 1;
	setAttr ".pm[37]" -type "matrix" -3.3001592463100862e-17 1.0378329885163652e-15 1.0000000000000002 0
		 1.110223024625157e-16 1.0000000000000002 -1.0839684411261426e-15 0 -1 3.3306690738754691e-16 -7.8880607044110184e-17 0
		 -0.22634400000000063 -6.1800600000000019 7.7050358521452349e-15 1;
	setAttr ".pm[38]" -type "matrix" 6.2437730898937335e-17 2.9812835958647174e-16 -1 0
		 -0.052558833122770751 0.99861782933250931 3.074261309681366e-16 0 0.9986178293325092 0.052558833122770973 5.5539796371977369e-17 0
		 1.1914292734643193 -6.2037788674163918 -1.8758479335735102e-15 1;
	setAttr ".pm[39]" -type "matrix" 6.933088669069326e-17 2.9660110785398449e-16 -1 0
		 -0.029399051601886939 0.9995677544643532 3.074261309681366e-16 0 0.99956775446435309 0.029399051601887164 5.5539796371977369e-17 0
		 0.98118677945915644 -6.228193653194344 -1.8758479335735102e-15 1;
	setAttr ".pm[40]" -type "matrix" 8.1479008462145655e-17 2.9349643985839798e-16 -1 0
		 0.011763891800367335 0.99993080303074411 3.074261309681366e-16 0 0.999930803030744 -0.01176389180036711 5.5539796371977345e-17 0
		 0.6452539630635491 -6.2600535038902159 -1.8755626348154432e-15 1;
	setAttr ".pm[41]" -type "matrix" 7.0729161665791187e-17 2.96270779388692e-16 -1 0
		 -0.024683834758820952 0.99969530773211035 3.074261309681366e-16 0 0.99969530773211024 0.024683834758821171 5.5539796371977345e-17 0
		 0.77450584820940893 -6.2359708449263662 -1.8745735991208143e-15 1;
	setAttr ".pm[42]" -type "matrix" 6.3031881471378866e-17 2.980033069408907e-16 -1 0
		 -0.050568132333245967 0.99872061358135933 3.074261309681366e-16 0 0.99872061358135933 0.050568132333246175 5.5539796371977345e-17 0
		 0.8418895226369133 -6.2162508976888766 -1.8741646709009194e-15 1;
	setAttr ".pm[43]" -type "matrix" 7.8020709999420771e-17 2.9443464103382084e-16 -1 0
		 1.9956258867637179e-14 0.99999999999999989 3.074261309681366e-16 0 0.99999999999999989 -1.9741153156616055e-14 5.5539796371977369e-17 0
		 0.43491213253805527 -6.2462349401104245 -1.8741361410251125e-15 1;
	setAttr ".pm[44]" -type "matrix" 9.7433407428343428e-17 2.8859265435286312e-16 -1 0
		 0.06651901052377425 0.9977851578566086 3.074261309681366e-16 0 0.9977851578566086 -0.066519010523774028 5.5539796371977369e-17 0
		 -0.075210546645638171 -6.2550860371321733 -1.8733658343783333e-15 1;
	setAttr ".pm[45]" -type "matrix" 9.7433407428343428e-17 2.8859265435286312e-16 -1 0
		 0.06651901052377425 0.9977851578566086 3.074261309681366e-16 0 0.9977851578566086 -0.066519010523774028 5.5539796371977369e-17 0
		 -0.14490117131472602 -6.2550860371321741 -1.8720724800084337e-15 1;
	setAttr ".pm[46]" -type "matrix" 9.7433407428343428e-17 2.8859265435286312e-16 -1 0
		 0.06651901052377425 0.9977851578566086 3.074261309681366e-16 0 0.9977851578566086 -0.066519010523774028 5.5539796371977369e-17 0
		 -0.18073741606832255 -6.2550860371321715 -1.8720724800084337e-15 1;
	setAttr ".pm[47]" -type "matrix" 1.1102230246251563e-15 0 -1 0 1.2246467991473532e-16 -1 1.3596310734468922e-31 0
		 -1 -1.2246467991473532e-16 -1.1102230246251563e-15 0 -0.47351400000000093 6.3069800000000003 -5.257061452823575e-16 1;
	setAttr ".pm[48]" -type "matrix" 1.1102230246251563e-15 0 -1 0 1.2246467991473532e-16 -1 1.3596310734468922e-31 0
		 -1 -1.2246467991473532e-16 -1.1102230246251563e-15 0 -0.22634400000000088 6.3069800000000003 4.7349429721458257e-16 1;
	setAttr ".pm[49]" -type "matrix" 0.25968219660115027 -0.11223474405279904 0.95914989391429539 0
		 -0.71347097139603666 -0.69163757503666501 0.1122347440527993 0 0.65078746895096029 -0.71347097139603677 -0.25968219660115016 0
		 5.7427181235196816 3.4971092439456388 -0.37221241239047737 1;
	setAttr ".pm[50]" -type "matrix" 0.25968219660115027 -0.11223474405279904 0.95914989391429539 0
		 -0.71347097139603666 -0.69163757503666501 0.1122347440527993 0 0.65078746895096029 -0.71347097139603677 -0.25968219660115016 0
		 6.0824847667185473 3.4971038236126644 -0.37221340971881073 1;
	setAttr ".pm[51]" -type "matrix" 0.30907305664546958 0.95097705299239221 0.01079306896722633 0
		 -0.95039774346624917 0.3092614503650673 -0.033188620525062072 0 -0.034899496702500962 -6.9388939039072284e-18 0.99939082701909565 0
		 3.3745861148480039 -3.0756050367414427 2.1849155604574615 1;
	setAttr ".pm[52]" -type "matrix" 0.28153963783430813 0.95410127671860157 -0.10210869743592356 0
		 -0.89652467139407743 0.29948393159603259 0.32642439905363141 0 0.34202185004743224 -0.00035844067462241502 0.93969193122555572 0
		 1.546374027456616 -3.0677038134903447 1.7317316797274285 1;
	setAttr ".pm[53]" -type "matrix" 0.99240387650610384 -0.11159519562603178 0.051778935957058285 0
		 0.086824088833465179 0.93351877941675709 0.34785667461540265 0 -0.08715574274765818 -0.34071865342161006 0.93611680666285868 0
		 -3.4024021231289332 0.31967373196879612 1.2207682058100926 1;
	setAttr ".pm[54]" -type "matrix" 0.30907305664546952 0.95097705299239221 0.010793068967228548 0
		 0.95039774346624917 -0.30926145036506708 0.033188620525061337 0 0.034899496702500948 2.3401419690927124e-15 -0.99939082701909565 0
		 -3.3745880680820464 3.075601193843672 -2.184912414763037 1;
	setAttr ".pm[55]" -type "matrix" 0.28153963783430824 0.95410127671860212 -0.1021086974359212 0
		 0.89652467139407743 -0.29948393159603176 -0.32642439905363224 0 -0.34202185004743213 0.00035844067462478807 -0.93969193122555572 0
		 -1.5463737974153997 3.0677040822579018 -1.7317343364861939 1;
	setAttr ".pm[56]" -type "matrix" 0.99240387650610384 -0.11159519562603236 0.051778935957058493 0
		 -0.086824088833465665 -0.93351877941675765 -0.34785667461540148 0 0.087155742747658485 0.34071865342160867 -0.93611680666285935 0
		 3.40240098034517 -0.31967388730509622 -1.2207665365214064 1;
	setAttr ".gm" -type "matrix" 0.04712902167405162 0 0 0 0 0.04712902167405162 0 0
		 0 0 0.04712902167405162 0 0.13197722310498156 6.2277317223132371 -0.74445077215946731 1;
	setAttr -s 9 ".ma";
	setAttr -s 57 ".dpf[0:56]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 9 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 2;
	setAttr ".ucm" yes;
	setAttr ".hmf" 0.78;
	setAttr -s 47 ".ifcl";
createNode tweak -n "tweak2";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 47 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 162 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.0208956 -1.15096 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -4.1400568924487846e-08
		 -6.686205125117084e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.75680610157211903 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50114555565328689 -0.4988518137172181 -0.4743508663919469 0.5243960865159174 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.8255101315479236 0 1.1102230246251565e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99293449058680683 -0.11866379988487756 -7.2660621351838688e-18 6.0799702283007046e-17 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.5113775189157694 -9.4368957093138306e-16
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.045542472147218314 0.99896240331191632 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.7763568394002505e-15
		 1.1102230246251565e-16 1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.14372587541369378 -0.67732783040451316 0.12683478403789789 0.71026954070559878 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0062068439672604558
		 -0.68574968694822225 -0.29423669794452323 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.66821979487699812 0.23126241747102444 0.66821979487699812 0.23126241747102488 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.030205578622878093
		 1.487155195767925 6.6613381477509392e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.49697318519494554 -0.50300860151411964 -0.49697318519494538 0.50300860151411986 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.0000000000000002
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.75680599999999998
		 4.1400568924487846e-08 6.686205125117084e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.52439608651591729 -0.47435086639194679 0.49885181371721815 0.501145555653287 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.8255067889439598 9.5613471140509887e-08
		 -1.3825998101957282e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99293449058680683 -0.11866379988487752 -8.8411421224558247e-10 7.3979385103822108e-09 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.5113848758063675 3.9859984967971496e-06
		 2.5842351480953596e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.286051949897052e-08 5.8630820252976394e-10 0.045542472147218294 0.99896240331191621 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -6.6613381477509392e-16
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.14372587145375398 -0.67732783019424458 0.12683478782961813 0.71026954103032702 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0061999999999997613
		 0.68574539058123074 0.29423017706651411 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.66821979487699812 0.23126241747102499 0.6682197948769979 0.23126241747102536 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.030210000000005621
		 -1.4871516000000011 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.49697318519494543 -0.50300860151411975 -0.49697318519494527 0.50300860151411986 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.3544306803389132
		 -0.29535553978423734 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.8919924995735271
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 2.1185321489184923
		 0.081480000000000663 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.40352763796528457
		 0.03368900000000008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.13265143320378225
		 0.01285653978423662 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.1637499999999994
		 0.015870000000000051 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.23653894254340635
		 0.022930460215763393 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.7873980344251077
		 0.087591249431610396 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 -0.38976606835433814 -0.38976606835433847 -0.58998509469273963 0.58998509469274008 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1887740472510526 -2.2204460492503131e-16
		 2.6396086366699048e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.79716903925929206 -4.3247270447044873e-17
		 0.18535404559667423 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.69278869126599618 -0.14157623124645169 -0.14157623124645183 0.6927886912659954 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.2471699188276939 0
		 9.9920072216264207e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.70710678118654713 0 0.70710678118654791 1
		 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.015339686143046372
		 0.80597564625586748 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.70710678118654713 0 0.70710678118654791 1
		 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.2471699188276939 0
		 9.9920072216264207e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.70710678118654713 0 0.70710678118654791 1
		 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.74177672979945153 0.23544852420321849
		 -0.059373975668636891 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.27765195162439199 0.54135782571104585 0.27765195162439199 0.74347191746544239 1
		 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.33976614307234709 0
		 -7.5443239005400986e-17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.057456594288908e-06
		 -4.6021576349808413e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1 0 0 6.123233995736766e-17 1
		 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -1.787399999999999
		 -0.087589999999999835 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 -0.38976606835433814 -0.38976606835433847 -0.58998509469273963 0.58998509469274008 1
		 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.1887738016099949 9.0062862219462529e-17
		 -1.3121469697452426e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.7971694343943696 -4.0993239533317885e-18
		 -0.18535402084487185 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.69278869126599574 -0.14157623124645172 -0.14157623124645166 0.69278869126599596 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.24717000000000017
		 1.7763568394002505e-15 -9.9605021964309097e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.40773987054852912
		 1.5633647990355498e-17 -0.10379451670299034 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.12331492531522255 0.69627108886876854 -0.69627108886876932 0.12331492531522241 1
		 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.066150889208434815
		 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.011589627235713624 0.99993283801490251 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.078841852766994847
		 0 -2.8529875806660482e-19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.020582272188698871 0.99978816259823278 1
		 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.098516534205731365
		 -8.8817841970012523e-16 -9.8903569462892454e-19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.018224243669965005 0.99983392468082299 1 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.093902577153564981
		 0 -4.0892821989448083e-19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.01295132126086845 0.99991612812155284 1
		 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.091673375738356433
		 8.8817841970012523e-16 -2.8529875806857697e-20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.025292157071327943 0.99968010222804737 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.093873965764371459
		 -8.8817841970012523e-16 -7.703066467784525e-19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.033277936710302061 0.99944613608153243 1 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.069690624669087778
		 0 -1.2933543698995753e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.035836244753596619
		 -8.8817841970012523e-16 3.944304526105059e-31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.015340000000000131
		 -0.8059759999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.70710678118654713 0 0.70710678118654791 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.24717000000000011
		 0 -9.9920044249694007e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.74177700000000002
		 -0.23544999999999927 0.059370000000000145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.27765195162439205 0.54135782571104585 0.27765195162439193 0.74347191746544228 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.33976664319886574
		 5.42033297490363e-06 9.9732833319654546e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.858254224247919 0.963560656599729
		 -0.61949767216079255 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.010256452375292879 0.014120611712156237 -0.58759176304824057 0.80896930319228322 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6210799222333017 4.4408920985006262e-16
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0009798795592482173 -0.19080647932566563 -0.0050410433216976341 0.98161423948800908 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4176404716774496 -1.1102230246251564e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.051492238834898688 0.058197347494895073 0.64088774976572505 0.76369137109473317 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.85825 0.96356122008755796
		 -0.61949446021576238 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.80896930319228311 0.58759176304824068 0.01412061171215692 -0.010256452375291932 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.6210830866938744 -4.0992387591032298e-06
		 5.5228233009074756e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00097987955924828431 -0.19080647932566561 -0.0050410433216979801 0.98161423948800908 1
		 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34046608396857103 -0.6223945462036129
		 -0.63626149168190915 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.69465837045899748 1.2764967049056494e-15 -0.71933980033865097 1.3218510333835745e-15 1
		 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.34902103033426 -0.42766333644270338
		 -1.3304017151753349 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.1780669507469205 0.14643007169034433 0.069566547602577841 0.97057245510632162 1
		 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.6553919628978804e-06
		 -0.33867753323728789 -2.6271207625438997e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.17364817766693033 0 0.98480775301220802 1 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.046024786919777849
		 -0.47067303114844822 0.20797267751406223 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.067573030590119987 0.069973157801791849 -0.033921079891699707 0.99467934685661041 1
		 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.312101427508594e-07
		 -0.32499295635471537 -3.4155988486439526e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2912201007585509e-06
		 -0.23774822175982413 3.160295170889782e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34046608396857103 -0.6223945462036129
		 -0.63626149168190904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.57922796533956866 -0.57922796533956966 0.4055797876726388 -0.40557978767263936 1
		 1 1 yes;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.07284355766254258 -0.48015257928487581
		 0.065771140859202548 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.024121412303117942 0.068426942136700211 -0.03694098081527087 0.99668012671806061 1
		 1 1 yes;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.312101427508594e-07
		 -0.36488298295571697 -3.4155988481998634e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2912201007585509e-06
		 -0.2744336552009814 3.160295170889782e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.031626413145432242
		 -0.45468768685821137 -0.19922869610545743 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.048813133768567239 0.12388378101199514 -0.024144676356820969 0.9908012522082762 1
		 1 1 yes;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.3121014097450256e-07
		 -0.2821075726824902 -3.4155988473116849e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[69]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2912201003144617e-06
		 -0.20739990908397063 3.1602951702236481e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[70]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.050673724347070515
		 -0.48705584365345966 -0.092979460054136487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.024121412303117915 0.068426942136700267 -0.036940980815270814 0.99668012671806061 1
		 1 1 yes;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.3121014363903782e-07
		 -0.32587042001319788 -3.4155988477557746e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2912201007585509e-06
		 -0.25403680528294403 3.1602951704456927e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.040343128826233698
		 -0.2491059527597016 0.19764887417795071 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.53985767069598956 -0.42702211748334645 -0.61336736750480036 0.38728062054661461 1
		 1 1 yes;
	setAttr ".xm[74]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.022577151005357399
		 0.13163550299029814 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.36835218303073231 0.92968632842292243 1 1 1 yes;
	setAttr ".xm[75]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.29223212794746511 -2.9190405050893986e-06
		 5.2432170951632884e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[76]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34046608396857103 -0.6223945462036129
		 -0.63626149168190904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.54959736007712801 0.54959736007712667 0.44490756545180588 0.44490756545180482 1
		 1 1 yes;
	setAttr ".xm[77]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4176404716774496 -1.1102230246251564e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.051492238834898688 0.058197347494895073 0.64088774976572505 0.76369137109473306 1
		 1 1 yes;
	setAttr ".xm[78]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 6.5536727098039602
		 -0.19233157150677505 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.078560010543539394 -0.70272919730391092 0.078560010543539449 0.70272919730391092 1
		 1 1 yes;
	setAttr ".xm[79]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.10646312896409782 -2.5630072535420823e-06
		 -2.1341322478867034e-22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[80]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.31310722811766994
		 -0.62309576866290239 -0.65634128595899377 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.69465837045899748 1.2764967049056494e-15 -0.71933980033865097 1.3218510333835745e-15 1
		 1 1 yes;
	setAttr ".xm[81]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.349019999999999 -0.42766300000000096
		 -1.3303999999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.97057245643302381 -0.069566546511588834 0.14643007220865578 0.1780669435155916 1
		 1 1 yes;
	setAttr ".xm[82]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.1336998163620251e-06
		 0.33867748004046405 4.0107370259945263e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		1.7501963046657696e-08 -0.17364817766693025 3.0860683004882774e-09 0.98480775301220791 1
		 1 1 yes;
	setAttr ".xm[83]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.046025128715519337
		 0.47067126300197987 -0.20797322723812584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.067573055409835048 0.069973156789264662 -0.033921079090469194 0.99467934526904833 1
		 1 1 yes;
	setAttr ".xm[84]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.0016614534767996e-06
		 0.32499330981356023 3.6633955087239656e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[85]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.3745366880010295e-06
		 0.23774991852580651 -2.4157448534900539e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[86]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.34046599999999999
		 -0.62238999999999933 -0.63626099999999974 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.40557978767263902 -0.40557978767263908 -0.57922796533956911 0.57922796533956922 1
		 1 1 yes;
	setAttr ".xm[87]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.072844639627129393
		 0.48015025989769983 -0.065767995360698217 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.024121437168460692 0.068426941160086061 -0.036940979970636993 0.99668012621463031 1
		 1 1 yes;
	setAttr ".xm[88]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9484920901777798e-06
		 0.36488467603917329 4.4359098438917499e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[89]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.0948006429816246e-06
		 0.27443425277381639 -3.1845336931901613e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[90]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.031627753494276156
		 0.45468972085916987 0.19922738483932337 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.048813108907548197 0.12388378053824184 -0.024144676901012407 0.99080125347906089 1
		 1 1 yes;
	setAttr ".xm[91]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1153619698944794e-06
		 0.28210619463516462 6.8718604353534829e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[92]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.4157816275798325e-06
		 0.20739740478031332 -4.4233098849266739e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[93]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.050672983145021437
		 0.48705057703525712 0.092980427536162091 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.024121437168460685 0.068426941160086088 -0.036940979970636931 0.99668012621463031 1
		 1 1 yes;
	setAttr ".xm[94]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8390524300370146e-06
		 0.32587546991322047 8.8181352064786722e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[95]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.7149037444333999e-06
		 0.25403860952798207 -1.4629272322430609e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[96]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.040338992519324275
		 0.24910690323887308 -0.19764891931468909 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.53985766218996167 -0.42702213130273631 -0.61336735593920177 0.38728063548363745 1
		 1 1 yes;
	setAttr ".xm[97]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.022577911564426456
		 -0.13163461082669803 -5.2813556363773273e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.36835218303073214 0.92968632842292243 1 1 1 yes;
	setAttr ".xm[98]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.29223271774344056
		 2.8128556872619725e-06 -4.1677742190771028e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[99]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.34046599999999999
		 -0.62238999999999933 -0.63626099999999974 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.44490756545180532 -0.44490756545180538 0.54959736007712723 0.54959736007712734 1
		 1 1 yes;
	setAttr ".xm[100]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.4176402365545568
		 1.151666402243734e-06 -4.483524392417948e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.05149223883489721 0.058197347494894754 0.64088774976572538 0.76369137109473306 1
		 1 1 yes;
	setAttr ".xm[101]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.0208956 -1.15096 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[102]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.3544306803389132
		 -0.29535553978423734 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[103]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.8919924995735271
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[104]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 2.1185321489184923
		 0.081480000000000663 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[105]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.40352763796528457
		 0.03368900000000008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[106]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.13265143320378225
		 0.01285653978423662 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[107]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.1637499999999994
		 0.015870000000000051 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[108]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.8255101315479241 2.2204460492503131e-16
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99293449058680694 -0.11866379988487756 -7.2660621351838688e-18 6.0799702283007046e-17 1
		 1 1 yes;
	setAttr ".xm[109]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 5.5511151231257827e-16
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.14372587541369378 -0.67732783040451316 0.12683478403789789 0.71026954070559878 1
		 1 1 yes;
	setAttr ".xm[110]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.74177672979945153
		 -0.2354474667466242 0.059373515452873615 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.74347191746544228 0.27765195162439182 -0.54135782571104585 0.27765195162439205 1
		 1 1 yes;
	setAttr ".xm[111]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.0062068439672604558
		 -0.68574968694822269 -0.29423669794452145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.66821979487699812 0.23126241747102444 0.66821979487699812 0.23126241747102486 1
		 1 1 yes;
	setAttr ".xm[112]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.34902103033426 -0.42766333644270338
		 -1.3304017151753349 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.1780669507469205 0.14643007169034433 0.069566547602577841 0.97057245510632162 1
		 1 1 yes;
	setAttr ".xm[113]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.046024786919777849
		 -0.47067303114844822 0.20797267751406223 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.067573030590119987 0.069973157801791849 -0.033921079891699707 0.99467934685661041 1
		 1 1 yes;
	setAttr ".xm[114]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.312101427508594e-07
		 -0.32499295635471537 -3.4155988486439526e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[115]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2912201007585509e-06
		 -0.23774822175982413 3.160295170889782e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[116]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34046608396857103
		 -0.6223945462036129 -0.63626149168190904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.57922796533956866 -0.57922796533956966 0.4055797876726388 -0.40557978767263936 1
		 1 1 yes;
	setAttr ".xm[117]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.07284355766254258
		 -0.48015257928487581 0.065771140859202548 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.024121412303117942 0.068426942136700211 -0.03694098081527087 0.99668012671806061 1
		 1 1 yes;
	setAttr ".xm[118]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.312101427508594e-07
		 -0.36488298295571697 -3.4155988481998634e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[119]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2912201007585509e-06
		 -0.2744336552009814 3.160295170889782e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[120]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.031626413145432242
		 -0.45468768685821137 -0.19922869610545743 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.048813133768567239 0.12388378101199514 -0.024144676356820969 0.9908012522082762 1
		 1 1 yes;
	setAttr ".xm[121]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.3121014097450256e-07
		 -0.2821075726824902 -3.4155988473116849e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[122]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2912201003144617e-06
		 -0.20739990908397063 3.1602951702236481e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[123]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.050673724347070515
		 -0.48705584365345966 -0.092979460054136487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.024121412303117915 0.068426942136700267 -0.036940980815270814 0.99668012671806061 1
		 1 1 yes;
	setAttr ".xm[124]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.3121014363903782e-07
		 -0.32587042001319788 -3.4155988477557746e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[125]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2912201007585509e-06
		 -0.25403680528294403 3.1602951704456927e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[126]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.040343128826233698
		 -0.2491059527597016 0.19764887417795071 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.53985767069598956 -0.42702211748334645 -0.61336736750480036 0.38728062054661461 1
		 1 1 yes;
	setAttr ".xm[127]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.022577151005357399
		 0.13163550299029814 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.36835218303073231 0.92968632842292243 1 1 1 yes;
	setAttr ".xm[128]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.29223212794746511
		 -2.9190405050893986e-06 5.2432170951632884e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[129]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34046608396857103
		 -0.6223945462036129 -0.63626149168190904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.54959736007712801 0.54959736007712667 0.44490756545180588 0.44490756545180482 1
		 1 1 yes;
	setAttr ".xm[130]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4176404716774496 -1.1102230246251564e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.051492238834898688 0.058197347494895073 0.64088774976572505 0.76369137109473306 1
		 1 1 yes;
	setAttr ".xm[131]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.79716943439436916
		 -4.0993239533317885e-18 -0.18535402084487271 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.69278869126599574 -0.14157623124645172 -0.14157623124645166 0.69278869126599596 1
		 1 1 yes;
	setAttr ".xm[132]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.23135270980395983
		 -1.0871584284932247 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70272919730391092 -0.078560010543539505 -0.70272919730391092 0.078560010543539616 1
		 1 1 yes;
	setAttr ".xm[133]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.10646312896409782
		 -2.5630072535420823e-06 -2.1341322478867034e-22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[134]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.8255067889439598
		 9.5613471362554492e-08 -1.3825998101957282e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.99293449058680694 -0.11866379988487752 -8.8411421224558247e-10 7.3979385103822108e-09 1
		 1 1 yes;
	setAttr ".xm[135]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -4.4408920985006262e-16
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.14372587145375398 -0.67732783019424458 0.12683478782961813 0.71026954103032702 1
		 1 1 yes;
	setAttr ".xm[136]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.74177700000000002
		 -0.23544999999999927 0.059370000000000145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.27765195162439205 0.54135782571104585 0.27765195162439193 0.74347191746544228 1
		 1 1 yes;
	setAttr ".xm[137]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.0061999999999995392
		 0.68574539058123163 0.29423017706651411 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.66821979487699812 0.23126241747102499 0.6682197948769979 0.23126241747102538 1
		 1 1 yes;
	setAttr ".xm[138]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.349019999999999 -0.42766300000000096
		 -1.3303999999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.97057245643302381 -0.069566546511588834 0.14643007220865578 0.1780669435155916 1
		 1 1 yes;
	setAttr ".xm[139]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.046025128715519337
		 0.47067126300197987 -0.20797322723812584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.067573055409835048 0.069973156789264662 -0.033921079090469194 0.99467934526904833 1
		 1 1 yes;
	setAttr ".xm[140]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.0016614534767996e-06
		 0.32499330981356023 3.6633955087239656e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[141]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.3745366880010295e-06
		 0.23774991852580651 -2.4157448534900539e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[142]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.34046599999999999
		 -0.62238999999999933 -0.63626099999999974 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.40557978767263902 -0.40557978767263908 -0.57922796533956911 0.57922796533956922 1
		 1 1 yes;
	setAttr ".xm[143]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.072844639627129393
		 0.48015025989769983 -0.065767995360698217 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.024121437168460692 0.068426941160086061 -0.036940979970636993 0.99668012621463031 1
		 1 1 yes;
	setAttr ".xm[144]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9484920901777798e-06
		 0.36488467603917329 4.4359098438917499e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[145]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.0948006429816246e-06
		 0.27443425277381639 -3.1845336931901613e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[146]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.031627753494276156
		 0.45468972085916987 0.19922738483932337 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.048813108907548197 0.12388378053824184 -0.024144676901012407 0.99080125347906089 1
		 1 1 yes;
	setAttr ".xm[147]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1153619698944794e-06
		 0.28210619463516462 6.8718604353534829e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[148]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.4157816275798325e-06
		 0.20739740478031332 -4.4233098849266739e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[149]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.050672983145021437
		 0.48705057703525712 0.092980427536162091 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.024121437168460685 0.068426941160086088 -0.036940979970636931 0.99668012621463031 1
		 1 1 yes;
	setAttr ".xm[150]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8390524300370146e-06
		 0.32587546991322047 8.8181352064786722e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[151]" -type "matrix" "xform" 1 1 1 0 0 0 0 -8.7149037444333999e-06
		 0.25403860952798207 -1.4629272322430609e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[152]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.040338992519324275
		 0.24910690323887308 -0.19764891931468909 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.53985766218996167 -0.42702213130273631 -0.61336735593920177 0.38728063548363745 1
		 1 1 yes;
	setAttr ".xm[153]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.022577911564426456
		 -0.13163461082669803 -5.2813556363773273e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0.36835218303073214 0.92968632842292243 1 1 1 yes;
	setAttr ".xm[154]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.29223271774344056
		 2.8128556872619725e-06 -4.1677742190771028e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[155]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.34046599999999999
		 -0.62238999999999933 -0.63626099999999974 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.44490756545180532 -0.44490756545180538 0.54959736007712723 0.54959736007712734 1
		 1 1 yes;
	setAttr ".xm[156]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.4176402365545568
		 1.151666402243734e-06 -4.483524392417948e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.05149223883489721 0.058197347494894754 0.64088774976572538 0.76369137109473306 1
		 1 1 yes;
	setAttr ".xm[157]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.015340000000000131
		 -0.8059759999999998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.70710678118654713 0 0.70710678118654791 1
		 1 1 yes;
	setAttr ".xm[158]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34046608396857103
		 -0.6223945462036129 -0.63626149168190904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.54959736007712801 0.54959736007712667 0.44490756545180588 0.44490756545180482 1
		 1 1 yes;
	setAttr ".xm[159]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34046608396857103
		 -0.6223945462036129 -0.63626149168190904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.57922796533956866 -0.57922796533956966 0.4055797876726388 -0.40557978767263936 1
		 1 1 yes;
	setAttr ".xm[160]" -type "matrix" "xform" 1 1 1 0 -0.18111940397197848 0 0 -0.72208499999999998
		 -0.077519999999999811 -0.008699999999999708 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.26520080203367469 0.23623291981547362 0.56067183743690996 0.74800376529885915 1
		 1 1 yes;
	setAttr ".xm[161]" -type "matrix" "xform" 1 1 1 0 -0.18111940397197848 0 0 0.7220853792972155
		 -0.077519651772043119 -0.0086986358390357399 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.74800376529885926 0.56067183743690996 -0.23623291981547365 -0.26520080203367469 1
		 1 1 yes;
	setAttr -s 55 ".m";
	setAttr -s 70 ".p";
	setAttr -s 162 ".g[0:161]" yes yes yes yes yes yes yes yes no no yes 
		yes yes yes yes no yes yes yes yes yes yes yes yes no yes no yes no yes no yes no 
		yes no no no yes no no no no no no yes no no no yes no yes no yes yes no yes yes 
		no no yes no no no no no no no no no no no no no no no no no no no no no no yes no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no yes no no no no no no no no no no no no no no no no no no no no no no no no no 
		yes no no no no no no no no no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	setAttr -s 82 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.034899496702500699 0 -0.99939082701909565 0 0 1 0 0
		 0.99939082701909565 0 -0.034899496702500699 0 0.6547187658650504 -6.9447145462036142 0.31781033002430142 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak3";
createNode objectSet -n "skinCluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose4";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.34046608396857103 6.9447145462036133
		 -0.64322850831809064 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.71933980033865108 0 0.69465837045899737 1
		 1 1 yes;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster3";
	setAttr -s 82 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.034899496702500699 0 -0.99939082701909565 0 0 1 0 0
		 0.99939082701909565 0 -0.034899496702500699 0 0.6547187658650504 -6.9447145462036142 0.31781033002430142 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak4";
createNode objectSet -n "skinCluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster4";
	setAttr -s 74 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.034899496702500699 0 -0.99939082701909565 0 0 1 0 0
		 0.99939082701909565 0 -0.034899496702500699 0 0.6547187658650504 -6.9447145462036142 0.31781033002430142 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak5";
createNode objectSet -n "skinCluster4Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster4GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster4GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster5";
	setAttr -s 74 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.034899496702500699 0 -0.99939082701909565 0 0 1 0 0
		 0.99939082701909565 0 -0.034899496702500699 0 0.61184182400610532 -6.9454157686629037 -0.33466406814501648 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak6";
createNode objectSet -n "skinCluster5Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster5GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster5GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose3";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.31310722811766994
		 6.9454157686629028 -0.62314871404100602 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.71933980033865108 0 -0.69465837045899737 1
		 1 1 yes;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster6";
	setAttr -s 82 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.034899496702500699 0 -0.99939082701909565 0 0 1 0 0
		 0.99939082701909565 0 -0.034899496702500699 0 0.61184182400610532 -6.9454157686629037 -0.33466406814501648 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak7";
createNode objectSet -n "skinCluster6Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster6GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster6GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode skinCluster -n "skinCluster7";
	setAttr -s 82 ".wl";
	setAttr ".wl[0].w[0]"  1;
	setAttr ".wl[1].w[0]"  1;
	setAttr ".wl[2].w[0]"  1;
	setAttr ".wl[3].w[0]"  1;
	setAttr ".wl[4].w[0]"  1;
	setAttr ".wl[5].w[0]"  1;
	setAttr ".wl[6].w[0]"  1;
	setAttr ".wl[7].w[0]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[0]"  1;
	setAttr ".wl[10].w[0]"  1;
	setAttr ".wl[11].w[0]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[0]"  1;
	setAttr ".wl[19].w[0]"  1;
	setAttr ".wl[20].w[0]"  1;
	setAttr ".wl[21].w[0]"  1;
	setAttr ".wl[22].w[0]"  1;
	setAttr ".wl[23].w[0]"  1;
	setAttr ".wl[24].w[0]"  1;
	setAttr ".wl[25].w[0]"  1;
	setAttr ".wl[26].w[0]"  1;
	setAttr ".wl[27].w[0]"  1;
	setAttr ".wl[28].w[0]"  1;
	setAttr ".wl[29].w[0]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[0]"  1;
	setAttr ".wl[43].w[0]"  1;
	setAttr ".wl[44].w[0]"  1;
	setAttr ".wl[45].w[0]"  1;
	setAttr ".wl[46].w[0]"  1;
	setAttr ".wl[47].w[0]"  1;
	setAttr ".wl[48].w[0]"  1;
	setAttr ".wl[49].w[0]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[0]"  1;
	setAttr ".wl[52].w[0]"  1;
	setAttr ".wl[53].w[0]"  1;
	setAttr ".wl[54].w[0]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[0]"  1;
	setAttr ".wl[59].w[0]"  1;
	setAttr ".wl[60].w[0]"  1;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[0]"  1;
	setAttr ".wl[63].w[0]"  1;
	setAttr ".wl[64].w[0]"  1;
	setAttr ".wl[65].w[0]"  1;
	setAttr ".wl[66].w[0]"  1;
	setAttr ".wl[67].w[0]"  1;
	setAttr ".wl[68].w[0]"  1;
	setAttr ".wl[69].w[0]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[0]"  1;
	setAttr ".wl[73].w[0]"  1;
	setAttr ".wl[74].w[0]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[0]"  1;
	setAttr ".wl[81].w[0]"  1;
	setAttr ".pm[0]" -type "matrix" -0.034899496702500699 0 -0.99939082701909565 0 0 1 0 0
		 0.99939082701909565 0 -0.034899496702500699 0 0.61184182400610532 -6.9454157686629037 -0.33466406814501648 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
createNode tweak -n "tweak8";
createNode objectSet -n "skinCluster7Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster7GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster7GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak9";
	setAttr -s 3 ".vl[0].vt";
	setAttr ".vl[0].vt[1576]" -type "float3" 0 -1.8626451e-09 0 ;
createNode objectSet -n "tweakSet9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1111]";
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1112:1243]";
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[1244:2089]" "f[3042:3053]";
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[2090:2437]";
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[2438:2969]";
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[2970:3041]" "f[3054:3089]";
createNode skinCluster -n "skinCluster8";
	setAttr -s 3245 ".wl";
	setAttr ".wl[0].w[66]"  1;
	setAttr ".wl[1].w[66]"  1;
	setAttr ".wl[2].w[66]"  1;
	setAttr ".wl[3].w[66]"  1;
	setAttr ".wl[4].w[66]"  1;
	setAttr ".wl[5].w[66]"  1;
	setAttr ".wl[6].w[1]"  1;
	setAttr ".wl[7].w[1]"  1;
	setAttr ".wl[8].w[0]"  1;
	setAttr ".wl[9].w[1]"  1;
	setAttr ".wl[10].w[1]"  1;
	setAttr ".wl[11].w[2]"  1;
	setAttr ".wl[12].w[0]"  1;
	setAttr ".wl[13].w[0]"  1;
	setAttr ".wl[14].w[0]"  1;
	setAttr ".wl[15].w[0]"  1;
	setAttr ".wl[16].w[0]"  1;
	setAttr ".wl[17].w[0]"  1;
	setAttr ".wl[18].w[66]"  1;
	setAttr ".wl[19].w[66]"  1;
	setAttr ".wl[20].w[66]"  1;
	setAttr ".wl[21].w[66]"  1;
	setAttr ".wl[22].w[66]"  1;
	setAttr ".wl[23].w[66]"  1;
	setAttr ".wl[24].w[66]"  1;
	setAttr ".wl[25].w[66]"  1;
	setAttr ".wl[26].w[66]"  1;
	setAttr ".wl[27].w[66]"  1;
	setAttr ".wl[28].w[66]"  1;
	setAttr ".wl[29].w[66]"  1;
	setAttr ".wl[30].w[0]"  1;
	setAttr ".wl[31].w[0]"  1;
	setAttr ".wl[32].w[0]"  1;
	setAttr ".wl[33].w[0]"  1;
	setAttr ".wl[34].w[0]"  1;
	setAttr ".wl[35].w[0]"  1;
	setAttr ".wl[36].w[0]"  1;
	setAttr ".wl[37].w[0]"  1;
	setAttr ".wl[38].w[0]"  1;
	setAttr ".wl[39].w[0]"  1;
	setAttr ".wl[40].w[0]"  1;
	setAttr ".wl[41].w[0]"  1;
	setAttr ".wl[42].w[66]"  1;
	setAttr ".wl[43].w[66]"  1;
	setAttr ".wl[44].w[66]"  1;
	setAttr ".wl[45].w[66]"  1;
	setAttr ".wl[46].w[66]"  1;
	setAttr ".wl[47].w[66]"  1;
	setAttr ".wl[48].w[1]"  1;
	setAttr ".wl[49].w[1]"  1;
	setAttr ".wl[50].w[0]"  1;
	setAttr ".wl[51].w[1]"  1;
	setAttr ".wl[52].w[1]"  1;
	setAttr ".wl[53].w[1]"  1;
	setAttr ".wl[54].w[1]"  1;
	setAttr ".wl[55].w[0]"  1;
	setAttr ".wl[56].w[0]"  1;
	setAttr ".wl[57].w[0]"  1;
	setAttr ".wl[58].w[1]"  1;
	setAttr ".wl[59].w[1]"  1;
	setAttr ".wl[60].w[66]"  1;
	setAttr ".wl[61].w[66]"  1;
	setAttr ".wl[62].w[66]"  1;
	setAttr ".wl[63].w[66]"  1;
	setAttr ".wl[64].w[66]"  1;
	setAttr ".wl[65].w[66]"  1;
	setAttr ".wl[66].w[66]"  1;
	setAttr ".wl[67].w[66]"  1;
	setAttr ".wl[68].w[66]"  1;
	setAttr ".wl[69].w[66]"  1;
	setAttr ".wl[70].w[0]"  1;
	setAttr ".wl[71].w[0]"  1;
	setAttr ".wl[72].w[66]"  1;
	setAttr ".wl[73].w[66]"  1;
	setAttr ".wl[74].w[66]"  1;
	setAttr ".wl[75].w[0]"  1;
	setAttr ".wl[76].w[0]"  1;
	setAttr ".wl[77].w[0]"  1;
	setAttr ".wl[78].w[0]"  1;
	setAttr ".wl[79].w[0]"  1;
	setAttr ".wl[80].w[1]"  1;
	setAttr ".wl[81].w[1]"  1;
	setAttr ".wl[82].w[1]"  1;
	setAttr ".wl[83].w[32]"  1;
	setAttr ".wl[84].w[2]"  1;
	setAttr ".wl[85].w[32]"  1;
	setAttr ".wl[86].w[32]"  1;
	setAttr ".wl[87].w[32]"  1;
	setAttr ".wl[88].w[1]"  1;
	setAttr ".wl[89].w[66]"  1;
	setAttr ".wl[90].w[66]"  1;
	setAttr ".wl[91].w[66]"  1;
	setAttr ".wl[92].w[66]"  1;
	setAttr ".wl[93].w[0]"  1;
	setAttr ".wl[94].w[66]"  1;
	setAttr ".wl[95].w[0]"  1;
	setAttr ".wl[96].w[0]"  1;
	setAttr ".wl[97].w[1]"  1;
	setAttr ".wl[98].w[1]"  1;
	setAttr ".wl[99].w[1]"  1;
	setAttr ".wl[100].w[1]"  1;
	setAttr ".wl[101].w[32]"  1;
	setAttr ".wl[102].w[1]"  1;
	setAttr ".wl[103].w[1]"  1;
	setAttr ".wl[104].w[1]"  1;
	setAttr ".wl[105].w[2]"  1;
	setAttr ".wl[106].w[2]"  1;
	setAttr ".wl[107].w[2]"  1;
	setAttr ".wl[108].w[1]"  1;
	setAttr ".wl[109].w[3]"  1;
	setAttr ".wl[110].w[1]"  1;
	setAttr ".wl[111].w[1]"  1;
	setAttr ".wl[112].w[1]"  1;
	setAttr ".wl[113].w[1]"  1;
	setAttr ".wl[114].w[0]"  1;
	setAttr ".wl[115].w[0]"  1;
	setAttr ".wl[116].w[0]"  1;
	setAttr ".wl[117].w[0]"  1;
	setAttr ".wl[118].w[66]"  1;
	setAttr ".wl[119].w[66]"  1;
	setAttr ".wl[120].w[66]"  1;
	setAttr ".wl[121].w[66]"  1;
	setAttr ".wl[122].w[66]"  1;
	setAttr ".wl[123].w[66]"  1;
	setAttr ".wl[124].w[66]"  1;
	setAttr ".wl[125].w[0]"  1;
	setAttr ".wl[126].w[1]"  1;
	setAttr ".wl[127].w[1]"  1;
	setAttr ".wl[128].w[1]"  1;
	setAttr ".wl[129].w[32]"  1;
	setAttr ".wl[130].w[66]"  1;
	setAttr ".wl[131].w[66]"  1;
	setAttr ".wl[132].w[66]"  1;
	setAttr ".wl[133].w[66]"  1;
	setAttr ".wl[134].w[66]"  1;
	setAttr ".wl[135].w[66]"  1;
	setAttr ".wl[136].w[66]"  1;
	setAttr ".wl[137].w[2]"  1;
	setAttr ".wl[138].w[2]"  1;
	setAttr ".wl[139].w[2]"  1;
	setAttr ".wl[140].w[2]"  1;
	setAttr ".wl[141].w[3]"  1;
	setAttr ".wl[142].w[3]"  1;
	setAttr ".wl[143].w[33]"  1;
	setAttr ".wl[144].w[33]"  1;
	setAttr ".wl[145].w[1]"  1;
	setAttr ".wl[146].w[1]"  1;
	setAttr ".wl[147].w[3]"  1;
	setAttr ".wl[148].w[2]"  1;
	setAttr ".wl[149].w[2]"  1;
	setAttr ".wl[150].w[2]"  1;
	setAttr ".wl[151].w[3]"  1;
	setAttr ".wl[152].w[3]"  1;
	setAttr ".wl[153].w[3]"  1;
	setAttr ".wl[154].w[33]"  1;
	setAttr ".wl[155].w[33]"  1;
	setAttr ".wl[156].w[1]"  1;
	setAttr ".wl[157].w[1]"  1;
	setAttr ".wl[158].w[3]"  1;
	setAttr ".wl[159].w[32]"  1;
	setAttr ".wl[160].w[2]"  1;
	setAttr ".wl[161].w[32]"  1;
	setAttr ".wl[162].w[32]"  1;
	setAttr ".wl[163].w[32]"  1;
	setAttr ".wl[164].w[1]"  1;
	setAttr ".wl[165].w[32]"  1;
	setAttr ".wl[166].w[32]"  1;
	setAttr ".wl[167].w[1]"  1;
	setAttr ".wl[168].w[1]"  1;
	setAttr ".wl[169].w[3]"  1;
	setAttr ".wl[170].w[32]"  1;
	setAttr ".wl[171].w[32]"  1;
	setAttr ".wl[172].w[2]"  1;
	setAttr ".wl[173].w[2]"  1;
	setAttr ".wl[174].w[2]"  1;
	setAttr ".wl[175].w[3]"  1;
	setAttr ".wl[176].w[3]"  1;
	setAttr ".wl[177].w[1]"  1;
	setAttr ".wl[178].w[3]"  1;
	setAttr ".wl[179].w[3]"  1;
	setAttr ".wl[180].w[3]"  1;
	setAttr ".wl[181].w[66]"  1;
	setAttr ".wl[182].w[66]"  1;
	setAttr ".wl[183].w[66]"  1;
	setAttr ".wl[184].w[66]"  1;
	setAttr ".wl[185].w[66]"  1;
	setAttr ".wl[186].w[66]"  1;
	setAttr ".wl[187].w[66]"  1;
	setAttr ".wl[188].w[66]"  1;
	setAttr ".wl[189].w[66]"  1;
	setAttr ".wl[190].w[66]"  1;
	setAttr ".wl[191].w[66]"  1;
	setAttr ".wl[192].w[66]"  1;
	setAttr ".wl[193].w[66]"  1;
	setAttr ".wl[194].w[66]"  1;
	setAttr ".wl[195].w[66]"  1;
	setAttr ".wl[196].w[66]"  1;
	setAttr ".wl[197].w[66]"  1;
	setAttr ".wl[198].w[66]"  1;
	setAttr ".wl[199].w[66]"  1;
	setAttr ".wl[200].w[66]"  1;
	setAttr ".wl[201].w[66]"  1;
	setAttr ".wl[202].w[66]"  1;
	setAttr ".wl[203].w[66]"  1;
	setAttr ".wl[204].w[66]"  1;
	setAttr ".wl[205].w[66]"  1;
	setAttr ".wl[206].w[66]"  1;
	setAttr ".wl[207].w[66]"  1;
	setAttr ".wl[208].w[66]"  1;
	setAttr ".wl[209].w[66]"  1;
	setAttr ".wl[210].w[66]"  1;
	setAttr ".wl[211].w[66]"  1;
	setAttr ".wl[212].w[66]"  1;
	setAttr ".wl[213].w[0]"  1;
	setAttr ".wl[214].w[0]"  1;
	setAttr ".wl[215].w[0]"  1;
	setAttr ".wl[216].w[0]"  1;
	setAttr ".wl[217].w[0]"  1;
	setAttr ".wl[218].w[0]"  1;
	setAttr ".wl[219].w[0]"  1;
	setAttr ".wl[220].w[0]"  1;
	setAttr ".wl[221].w[0]"  1;
	setAttr ".wl[222].w[0]"  1;
	setAttr ".wl[223].w[0]"  1;
	setAttr ".wl[224].w[0]"  1;
	setAttr ".wl[225].w[0]"  1;
	setAttr ".wl[226].w[0]"  1;
	setAttr ".wl[227].w[1]"  1;
	setAttr ".wl[228].w[1]"  1;
	setAttr ".wl[229].w[0]"  1;
	setAttr ".wl[230].w[1]"  1;
	setAttr ".wl[231].w[1]"  1;
	setAttr ".wl[232].w[1]"  1;
	setAttr ".wl[233].w[2]"  1;
	setAttr ".wl[234].w[66]"  1;
	setAttr ".wl[235].w[66]"  1;
	setAttr ".wl[236].w[66]"  1;
	setAttr ".wl[237].w[66]"  1;
	setAttr ".wl[238].w[66]"  1;
	setAttr ".wl[239].w[66]"  1;
	setAttr ".wl[240].w[1]"  1;
	setAttr ".wl[241].w[1]"  1;
	setAttr ".wl[242].w[0]"  1;
	setAttr ".wl[243].w[1]"  1;
	setAttr ".wl[244].w[1]"  1;
	setAttr ".wl[245].w[2]"  1;
	setAttr ".wl[246].w[0]"  1;
	setAttr ".wl[247].w[0]"  1;
	setAttr ".wl[248].w[0]"  1;
	setAttr ".wl[249].w[0]"  1;
	setAttr ".wl[250].w[0]"  1;
	setAttr ".wl[251].w[0]"  1;
	setAttr ".wl[252].w[66]"  1;
	setAttr ".wl[253].w[66]"  1;
	setAttr ".wl[254].w[66]"  1;
	setAttr ".wl[255].w[66]"  1;
	setAttr ".wl[256].w[66]"  1;
	setAttr ".wl[257].w[66]"  1;
	setAttr ".wl[258].w[66]"  1;
	setAttr ".wl[259].w[66]"  1;
	setAttr ".wl[260].w[66]"  1;
	setAttr ".wl[261].w[66]"  1;
	setAttr ".wl[262].w[66]"  1;
	setAttr ".wl[263].w[66]"  1;
	setAttr ".wl[264].w[0]"  1;
	setAttr ".wl[265].w[0]"  1;
	setAttr ".wl[266].w[0]"  1;
	setAttr ".wl[267].w[0]"  1;
	setAttr ".wl[268].w[0]"  1;
	setAttr ".wl[269].w[0]"  1;
	setAttr -s 2 ".wl[270].w";
	setAttr ".wl[270].w[0]" 0.56023747495641796;
	setAttr ".wl[270].w[66]" 0.43976252504358204;
	setAttr -s 2 ".wl[271].w";
	setAttr ".wl[271].w[0]" 0.65107402529234726;
	setAttr ".wl[271].w[66]" 0.34892597470765269;
	setAttr -s 2 ".wl[272].w";
	setAttr ".wl[272].w[0]" 0.71544532111638848;
	setAttr ".wl[272].w[66]" 0.28455467888361152;
	setAttr -s 2 ".wl[273].w";
	setAttr ".wl[273].w[0]" 0.69589406439897938;
	setAttr ".wl[273].w[66]" 0.30410593560102062;
	setAttr -s 2 ".wl[274].w";
	setAttr ".wl[274].w[0]" 0.98529494043559063;
	setAttr ".wl[274].w[66]" 0.014705059564409475;
	setAttr -s 2 ".wl[275].w";
	setAttr ".wl[275].w[0]" 0.98761046313341105;
	setAttr ".wl[275].w[66]" 0.012389536866589061;
	setAttr ".wl[276].w[66]"  1;
	setAttr ".wl[277].w[66]"  1;
	setAttr ".wl[278].w[66]"  1;
	setAttr ".wl[279].w[66]"  1;
	setAttr ".wl[280].w[66]"  1;
	setAttr ".wl[281].w[66]"  1;
	setAttr -s 2 ".wl[282].w[0:1]"  0.00025368557889329367 0.99974631442110684;
	setAttr ".wl[283].w[1]"  1;
	setAttr ".wl[284].w[0]"  1;
	setAttr ".wl[285].w[1]"  1;
	setAttr -s 2 ".wl[286].w[0:1]"  0.00045679287215398182 0.99954320712784606;
	setAttr ".wl[287].w[1]"  1;
	setAttr ".wl[288].w[1]"  1;
	setAttr ".wl[289].w[0]"  1;
	setAttr ".wl[290].w[0]"  1;
	setAttr ".wl[291].w[0]"  1;
	setAttr ".wl[292].w[1]"  1;
	setAttr ".wl[293].w[1]"  1;
	setAttr ".wl[294].w[66]"  1;
	setAttr ".wl[295].w[66]"  1;
	setAttr ".wl[296].w[66]"  1;
	setAttr ".wl[297].w[66]"  1;
	setAttr ".wl[298].w[66]"  1;
	setAttr ".wl[299].w[66]"  1;
	setAttr ".wl[300].w[66]"  1;
	setAttr ".wl[301].w[66]"  1;
	setAttr ".wl[302].w[66]"  1;
	setAttr ".wl[303].w[66]"  1;
	setAttr ".wl[304].w[0]"  1;
	setAttr ".wl[305].w[0]"  1;
	setAttr ".wl[306].w[66]"  1;
	setAttr ".wl[307].w[66]"  1;
	setAttr ".wl[308].w[66]"  1;
	setAttr ".wl[309].w[0]"  1;
	setAttr ".wl[310].w[0]"  1;
	setAttr ".wl[311].w[0]"  1;
	setAttr ".wl[312].w[0]"  1;
	setAttr ".wl[313].w[0]"  1;
	setAttr ".wl[314].w[1]"  1;
	setAttr ".wl[315].w[1]"  1;
	setAttr ".wl[316].w[1]"  1;
	setAttr ".wl[317].w[32]"  1;
	setAttr ".wl[318].w[2]"  1;
	setAttr ".wl[319].w[32]"  1;
	setAttr ".wl[320].w[32]"  1;
	setAttr ".wl[321].w[32]"  1;
	setAttr ".wl[322].w[1]"  1;
	setAttr ".wl[323].w[1]"  1;
	setAttr ".wl[324].w[1]"  1;
	setAttr ".wl[325].w[1]"  1;
	setAttr ".wl[326].w[2]"  1;
	setAttr ".wl[327].w[2]"  1;
	setAttr ".wl[328].w[2]"  1;
	setAttr ".wl[329].w[1]"  1;
	setAttr ".wl[330].w[3]"  1;
	setAttr ".wl[331].w[1]"  1;
	setAttr ".wl[332].w[1]"  1;
	setAttr ".wl[333].w[1]"  1;
	setAttr ".wl[334].w[0]"  1;
	setAttr ".wl[335].w[0]"  1;
	setAttr ".wl[336].w[0]"  1;
	setAttr -s 2 ".wl[337].w";
	setAttr ".wl[337].w[0]" 0.65219986108763706;
	setAttr ".wl[337].w[66]" 0.34780013891236289;
	setAttr ".wl[338].w[66]"  1;
	setAttr ".wl[339].w[66]"  1;
	setAttr ".wl[340].w[66]"  1;
	setAttr ".wl[341].w[66]"  1;
	setAttr ".wl[342].w[66]"  1;
	setAttr ".wl[343].w[66]"  1;
	setAttr ".wl[344].w[66]"  1;
	setAttr ".wl[345].w[0]"  1;
	setAttr ".wl[346].w[1]"  1;
	setAttr ".wl[347].w[1]"  1;
	setAttr ".wl[348].w[1]"  1;
	setAttr ".wl[349].w[32]"  1;
	setAttr ".wl[350].w[66]"  1;
	setAttr ".wl[351].w[66]"  1;
	setAttr ".wl[352].w[66]"  1;
	setAttr ".wl[353].w[66]"  1;
	setAttr ".wl[354].w[66]"  1;
	setAttr ".wl[355].w[66]"  1;
	setAttr ".wl[356].w[66]"  1;
	setAttr ".wl[357].w[2]"  1;
	setAttr ".wl[358].w[2]"  1;
	setAttr ".wl[359].w[2]"  1;
	setAttr ".wl[360].w[2]"  1;
	setAttr ".wl[361].w[3]"  1;
	setAttr ".wl[362].w[3]"  1;
	setAttr ".wl[363].w[33]"  1;
	setAttr ".wl[364].w[1]"  1;
	setAttr ".wl[365].w[1]"  1;
	setAttr ".wl[366].w[3]"  1;
	setAttr ".wl[367].w[2]"  1;
	setAttr ".wl[368].w[2]"  1;
	setAttr ".wl[369].w[2]"  1;
	setAttr ".wl[370].w[3]"  1;
	setAttr ".wl[371].w[3]"  1;
	setAttr ".wl[372].w[3]"  1;
	setAttr ".wl[373].w[33]"  1;
	setAttr ".wl[374].w[1]"  1;
	setAttr ".wl[375].w[3]"  1;
	setAttr ".wl[376].w[32]"  1;
	setAttr ".wl[377].w[2]"  1;
	setAttr ".wl[378].w[32]"  1;
	setAttr ".wl[379].w[32]"  1;
	setAttr ".wl[380].w[32]"  1;
	setAttr ".wl[381].w[1]"  1;
	setAttr ".wl[382].w[32]"  1;
	setAttr ".wl[383].w[1]"  1;
	setAttr ".wl[384].w[3]"  1;
	setAttr ".wl[385].w[32]"  1;
	setAttr ".wl[386].w[2]"  1;
	setAttr ".wl[387].w[2]"  1;
	setAttr ".wl[388].w[2]"  1;
	setAttr ".wl[389].w[3]"  1;
	setAttr ".wl[390].w[3]"  1;
	setAttr ".wl[391].w[1]"  1;
	setAttr ".wl[392].w[3]"  1;
	setAttr ".wl[393].w[3]"  1;
	setAttr ".wl[394].w[3]"  1;
	setAttr ".wl[395].w[66]"  1;
	setAttr ".wl[396].w[66]"  1;
	setAttr ".wl[397].w[66]"  1;
	setAttr ".wl[398].w[66]"  1;
	setAttr ".wl[399].w[66]"  1;
	setAttr ".wl[400].w[66]"  1;
	setAttr ".wl[401].w[66]"  1;
	setAttr ".wl[402].w[66]"  1;
	setAttr ".wl[403].w[66]"  1;
	setAttr ".wl[404].w[66]"  1;
	setAttr ".wl[405].w[66]"  1;
	setAttr ".wl[406].w[66]"  1;
	setAttr ".wl[407].w[66]"  1;
	setAttr ".wl[408].w[66]"  1;
	setAttr ".wl[409].w[66]"  1;
	setAttr ".wl[410].w[66]"  1;
	setAttr ".wl[411].w[66]"  1;
	setAttr ".wl[412].w[66]"  1;
	setAttr ".wl[413].w[66]"  1;
	setAttr ".wl[414].w[66]"  1;
	setAttr ".wl[415].w[66]"  1;
	setAttr ".wl[416].w[66]"  1;
	setAttr ".wl[417].w[66]"  1;
	setAttr ".wl[418].w[66]"  1;
	setAttr ".wl[419].w[0]"  1;
	setAttr ".wl[420].w[0]"  1;
	setAttr ".wl[421].w[0]"  1;
	setAttr ".wl[422].w[0]"  1;
	setAttr ".wl[423].w[0]"  1;
	setAttr ".wl[424].w[0]"  1;
	setAttr ".wl[425].w[0]"  1;
	setAttr ".wl[426].w[0]"  1;
	setAttr ".wl[427].w[0]"  1;
	setAttr ".wl[428].w[0]"  1;
	setAttr ".wl[429].w[0]"  1;
	setAttr ".wl[430].w[0]"  1;
	setAttr ".wl[431].w[0]"  1;
	setAttr ".wl[432].w[0]"  1;
	setAttr ".wl[433].w[1]"  1;
	setAttr ".wl[434].w[1]"  1;
	setAttr ".wl[435].w[0]"  1;
	setAttr ".wl[436].w[1]"  1;
	setAttr ".wl[437].w[1]"  1;
	setAttr ".wl[438].w[1]"  1;
	setAttr ".wl[439].w[2]"  1;
	setAttr -s 2 ".wl[440].w[0:1]"  0.99964383068892215 0.0003561693110778933;
	setAttr ".wl[441].w[0]"  1;
	setAttr ".wl[442].w[0]"  1;
	setAttr ".wl[443].w[0]"  1;
	setAttr ".wl[444].w[0]"  1;
	setAttr ".wl[445].w[0]"  1;
	setAttr ".wl[446].w[0]"  1;
	setAttr ".wl[447].w[0]"  1;
	setAttr -s 2 ".wl[448].w[0:1]"  0.96865338087081909 0.031346619129180908;
	setAttr -s 2 ".wl[449].w[0:1]"  0.96865338180502114 0.031346618194978887;
	setAttr ".wl[450].w[0]"  1;
	setAttr -s 2 ".wl[451].w[0:1]"  0.96865333570023382 0.031346664299766187;
	setAttr -s 2 ".wl[452].w[0:1]"  0.96865361928939819 0.031346380710601807;
	setAttr -s 2 ".wl[453].w[0:1]"  0.96865373849868774 0.031346261501312256;
	setAttr ".wl[454].w[66]"  1;
	setAttr ".wl[455].w[66]"  1;
	setAttr ".wl[456].w[66]"  1;
	setAttr ".wl[457].w[66]"  1;
	setAttr ".wl[458].w[66]"  1;
	setAttr ".wl[459].w[66]"  1;
	setAttr ".wl[460].w[66]"  1;
	setAttr ".wl[461].w[66]"  1;
	setAttr ".wl[462].w[66]"  1;
	setAttr ".wl[463].w[66]"  1;
	setAttr ".wl[464].w[66]"  1;
	setAttr ".wl[465].w[66]"  1;
	setAttr ".wl[466].w[66]"  1;
	setAttr ".wl[467].w[66]"  1;
	setAttr ".wl[468].w[66]"  1;
	setAttr ".wl[469].w[66]"  1;
	setAttr ".wl[470].w[66]"  1;
	setAttr ".wl[471].w[66]"  1;
	setAttr ".wl[472].w[66]"  1;
	setAttr ".wl[473].w[66]"  1;
	setAttr ".wl[474].w[66]"  1;
	setAttr ".wl[475].w[66]"  1;
	setAttr ".wl[476].w[66]"  1;
	setAttr ".wl[477].w[66]"  1;
	setAttr ".wl[478].w[66]"  1;
	setAttr ".wl[479].w[66]"  1;
	setAttr ".wl[480].w[0]"  1;
	setAttr ".wl[481].w[0]"  1;
	setAttr ".wl[482].w[66]"  1;
	setAttr ".wl[483].w[66]"  1;
	setAttr ".wl[484].w[66]"  1;
	setAttr ".wl[485].w[66]"  1;
	setAttr ".wl[486].w[66]"  1;
	setAttr ".wl[487].w[66]"  1;
	setAttr ".wl[488].w[66]"  1;
	setAttr ".wl[489].w[66]"  1;
	setAttr ".wl[490].w[66]"  1;
	setAttr ".wl[491].w[66]"  1;
	setAttr ".wl[492].w[66]"  1;
	setAttr ".wl[493].w[66]"  1;
	setAttr ".wl[494].w[66]"  1;
	setAttr ".wl[495].w[66]"  1;
	setAttr ".wl[496].w[66]"  1;
	setAttr ".wl[497].w[66]"  1;
	setAttr ".wl[498].w[66]"  1;
	setAttr ".wl[499].w[66]"  1;
	setAttr ".wl[500].w[66]"  1;
	setAttr ".wl[501].w[66]"  1;
	setAttr ".wl[502].w[66]"  1;
	setAttr ".wl[503].w[66]"  1;
	setAttr ".wl[504].w[66]"  1;
	setAttr ".wl[505].w[66]"  1;
	setAttr ".wl[506].w[66]"  1;
	setAttr ".wl[507].w[66]"  1;
	setAttr ".wl[508].w[66]"  1;
	setAttr ".wl[509].w[66]"  1;
	setAttr ".wl[510].w[66]"  1;
	setAttr ".wl[511].w[66]"  1;
	setAttr ".wl[512].w[66]"  1;
	setAttr ".wl[513].w[66]"  1;
	setAttr ".wl[514].w[66]"  1;
	setAttr ".wl[515].w[66]"  1;
	setAttr ".wl[516].w[66]"  1;
	setAttr ".wl[517].w[66]"  1;
	setAttr ".wl[518].w[66]"  1;
	setAttr ".wl[519].w[66]"  1;
	setAttr ".wl[520].w[66]"  1;
	setAttr ".wl[521].w[66]"  1;
	setAttr ".wl[522].w[66]"  1;
	setAttr ".wl[523].w[66]"  1;
	setAttr ".wl[524].w[66]"  1;
	setAttr ".wl[525].w[66]"  1;
	setAttr ".wl[526].w[66]"  1;
	setAttr ".wl[527].w[66]"  1;
	setAttr ".wl[528].w[66]"  1;
	setAttr ".wl[529].w[66]"  1;
	setAttr ".wl[530].w[66]"  1;
	setAttr ".wl[531].w[66]"  1;
	setAttr ".wl[532].w[66]"  1;
	setAttr ".wl[533].w[66]"  1;
	setAttr ".wl[534].w[66]"  1;
	setAttr ".wl[535].w[66]"  1;
	setAttr ".wl[536].w[66]"  1;
	setAttr ".wl[537].w[66]"  1;
	setAttr ".wl[538].w[66]"  1;
	setAttr ".wl[539].w[66]"  1;
	setAttr ".wl[540].w[66]"  1;
	setAttr ".wl[541].w[66]"  1;
	setAttr ".wl[542].w[66]"  1;
	setAttr ".wl[543].w[66]"  1;
	setAttr ".wl[544].w[66]"  1;
	setAttr ".wl[545].w[66]"  1;
	setAttr ".wl[546].w[66]"  1;
	setAttr ".wl[547].w[66]"  1;
	setAttr ".wl[548].w[66]"  1;
	setAttr ".wl[549].w[66]"  1;
	setAttr ".wl[550].w[66]"  1;
	setAttr ".wl[551].w[66]"  1;
	setAttr ".wl[552].w[66]"  1;
	setAttr ".wl[553].w[66]"  1;
	setAttr ".wl[554].w[66]"  1;
	setAttr ".wl[555].w[66]"  1;
	setAttr ".wl[556].w[66]"  1;
	setAttr ".wl[557].w[66]"  1;
	setAttr ".wl[558].w[66]"  1;
	setAttr ".wl[559].w[0]"  1;
	setAttr ".wl[560].w[0]"  1;
	setAttr ".wl[561].w[0]"  1;
	setAttr ".wl[562].w[0]"  1;
	setAttr ".wl[563].w[0]"  1;
	setAttr ".wl[564].w[0]"  1;
	setAttr ".wl[565].w[0]"  1;
	setAttr ".wl[566].w[0]"  1;
	setAttr ".wl[567].w[0]"  1;
	setAttr ".wl[568].w[0]"  1;
	setAttr ".wl[569].w[0]"  1;
	setAttr ".wl[570].w[0]"  1;
	setAttr ".wl[571].w[0]"  1;
	setAttr ".wl[572].w[0]"  1;
	setAttr ".wl[573].w[66]"  1;
	setAttr ".wl[574].w[66]"  1;
	setAttr ".wl[575].w[66]"  1;
	setAttr ".wl[576].w[66]"  1;
	setAttr ".wl[577].w[66]"  1;
	setAttr ".wl[578].w[66]"  1;
	setAttr ".wl[579].w[66]"  1;
	setAttr ".wl[580].w[66]"  1;
	setAttr ".wl[581].w[66]"  1;
	setAttr ".wl[582].w[66]"  1;
	setAttr ".wl[583].w[66]"  1;
	setAttr ".wl[584].w[66]"  1;
	setAttr ".wl[585].w[66]"  1;
	setAttr ".wl[586].w[66]"  1;
	setAttr ".wl[587].w[66]"  1;
	setAttr ".wl[588].w[66]"  1;
	setAttr ".wl[589].w[66]"  1;
	setAttr ".wl[590].w[66]"  1;
	setAttr ".wl[591].w[66]"  1;
	setAttr ".wl[592].w[66]"  1;
	setAttr ".wl[593].w[66]"  1;
	setAttr ".wl[594].w[0]"  1;
	setAttr ".wl[595].w[0]"  1;
	setAttr ".wl[596].w[1]"  1;
	setAttr ".wl[597].w[0]"  1;
	setAttr ".wl[598].w[0]"  1;
	setAttr ".wl[599].w[0]"  1;
	setAttr ".wl[600].w[0]"  1;
	setAttr ".wl[601].w[0]"  1;
	setAttr ".wl[602].w[0]"  1;
	setAttr ".wl[603].w[0]"  1;
	setAttr ".wl[604].w[0]"  1;
	setAttr ".wl[605].w[0]"  1;
	setAttr ".wl[606].w[1]"  1;
	setAttr ".wl[607].w[1]"  1;
	setAttr ".wl[608].w[0]"  1;
	setAttr ".wl[609].w[0]"  1;
	setAttr ".wl[610].w[0]"  1;
	setAttr ".wl[611].w[0]"  1;
	setAttr ".wl[612].w[0]"  1;
	setAttr ".wl[613].w[0]"  1;
	setAttr ".wl[614].w[0]"  1;
	setAttr ".wl[615].w[0]"  1;
	setAttr ".wl[616].w[0]"  1;
	setAttr ".wl[617].w[0]"  1;
	setAttr ".wl[618].w[0]"  1;
	setAttr ".wl[619].w[0]"  1;
	setAttr ".wl[620].w[0]"  1;
	setAttr ".wl[621].w[0]"  1;
	setAttr ".wl[622].w[66]"  1;
	setAttr ".wl[623].w[66]"  1;
	setAttr ".wl[624].w[66]"  1;
	setAttr ".wl[625].w[66]"  1;
	setAttr ".wl[626].w[66]"  1;
	setAttr ".wl[627].w[66]"  1;
	setAttr ".wl[628].w[66]"  1;
	setAttr ".wl[629].w[66]"  1;
	setAttr ".wl[630].w[66]"  1;
	setAttr ".wl[631].w[66]"  1;
	setAttr ".wl[632].w[66]"  1;
	setAttr ".wl[633].w[66]"  1;
	setAttr ".wl[634].w[66]"  1;
	setAttr ".wl[635].w[66]"  1;
	setAttr ".wl[636].w[1]"  1;
	setAttr ".wl[637].w[1]"  1;
	setAttr ".wl[638].w[1]"  1;
	setAttr ".wl[639].w[1]"  1;
	setAttr ".wl[640].w[0]"  1;
	setAttr ".wl[641].w[0]"  1;
	setAttr ".wl[642].w[1]"  1;
	setAttr ".wl[643].w[1]"  1;
	setAttr ".wl[644].w[1]"  1;
	setAttr ".wl[645].w[1]"  1;
	setAttr ".wl[646].w[1]"  1;
	setAttr ".wl[647].w[1]"  1;
	setAttr ".wl[648].w[1]"  1;
	setAttr ".wl[649].w[1]"  1;
	setAttr ".wl[650].w[66]"  1;
	setAttr ".wl[651].w[66]"  1;
	setAttr ".wl[652].w[66]"  1;
	setAttr ".wl[653].w[66]"  1;
	setAttr ".wl[654].w[66]"  1;
	setAttr ".wl[655].w[66]"  1;
	setAttr ".wl[656].w[66]"  1;
	setAttr ".wl[657].w[66]"  1;
	setAttr ".wl[658].w[66]"  1;
	setAttr ".wl[659].w[66]"  1;
	setAttr ".wl[660].w[66]"  1;
	setAttr ".wl[661].w[66]"  1;
	setAttr ".wl[662].w[66]"  1;
	setAttr ".wl[663].w[66]"  1;
	setAttr ".wl[664].w[66]"  1;
	setAttr ".wl[665].w[66]"  1;
	setAttr ".wl[666].w[66]"  1;
	setAttr ".wl[667].w[66]"  1;
	setAttr ".wl[668].w[66]"  1;
	setAttr ".wl[669].w[66]"  1;
	setAttr ".wl[670].w[66]"  1;
	setAttr ".wl[671].w[66]"  1;
	setAttr ".wl[672].w[66]"  1;
	setAttr ".wl[673].w[66]"  1;
	setAttr ".wl[674].w[66]"  1;
	setAttr ".wl[675].w[66]"  1;
	setAttr ".wl[676].w[66]"  1;
	setAttr ".wl[677].w[66]"  1;
	setAttr ".wl[678].w[0]"  1;
	setAttr ".wl[679].w[0]"  1;
	setAttr ".wl[680].w[0]"  1;
	setAttr ".wl[681].w[0]"  1;
	setAttr ".wl[682].w[0]"  1;
	setAttr ".wl[683].w[0]"  1;
	setAttr ".wl[684].w[66]"  1;
	setAttr ".wl[685].w[66]"  1;
	setAttr ".wl[686].w[0]"  1;
	setAttr ".wl[687].w[0]"  1;
	setAttr ".wl[688].w[66]"  1;
	setAttr ".wl[689].w[0]"  1;
	setAttr ".wl[690].w[0]"  1;
	setAttr ".wl[691].w[0]"  1;
	setAttr ".wl[692].w[0]"  1;
	setAttr ".wl[693].w[0]"  1;
	setAttr ".wl[694].w[1]"  1;
	setAttr ".wl[695].w[1]"  1;
	setAttr ".wl[696].w[0]"  1;
	setAttr ".wl[697].w[1]"  1;
	setAttr ".wl[698].w[0]"  1;
	setAttr ".wl[699].w[0]"  1;
	setAttr ".wl[700].w[1]"  1;
	setAttr ".wl[701].w[1]"  1;
	setAttr ".wl[702].w[0]"  1;
	setAttr ".wl[703].w[1]"  1;
	setAttr ".wl[704].w[0]"  1;
	setAttr ".wl[705].w[0]"  1;
	setAttr ".wl[706].w[1]"  1;
	setAttr ".wl[707].w[1]"  1;
	setAttr ".wl[708].w[1]"  1;
	setAttr ".wl[709].w[1]"  1;
	setAttr ".wl[710].w[1]"  1;
	setAttr ".wl[711].w[1]"  1;
	setAttr ".wl[712].w[2]"  1;
	setAttr ".wl[713].w[1]"  1;
	setAttr ".wl[714].w[1]"  1;
	setAttr ".wl[715].w[1]"  1;
	setAttr ".wl[716].w[1]"  1;
	setAttr ".wl[717].w[1]"  1;
	setAttr ".wl[718].w[1]"  1;
	setAttr ".wl[719].w[2]"  1;
	setAttr ".wl[720].w[2]"  1;
	setAttr ".wl[721].w[1]"  1;
	setAttr ".wl[722].w[2]"  1;
	setAttr ".wl[723].w[66]"  1;
	setAttr ".wl[724].w[66]"  1;
	setAttr ".wl[725].w[66]"  1;
	setAttr ".wl[726].w[66]"  1;
	setAttr ".wl[727].w[66]"  1;
	setAttr ".wl[728].w[0]"  1;
	setAttr ".wl[729].w[0]"  1;
	setAttr ".wl[730].w[3]"  1;
	setAttr ".wl[731].w[32]"  1;
	setAttr ".wl[732].w[32]"  1;
	setAttr ".wl[733].w[2]"  1;
	setAttr ".wl[734].w[2]"  1;
	setAttr ".wl[735].w[2]"  1;
	setAttr ".wl[736].w[32]"  1;
	setAttr ".wl[737].w[1]"  1;
	setAttr ".wl[738].w[3]"  1;
	setAttr ".wl[739].w[66]"  1;
	setAttr ".wl[740].w[66]"  1;
	setAttr ".wl[741].w[66]"  1;
	setAttr ".wl[742].w[66]"  1;
	setAttr ".wl[743].w[66]"  1;
	setAttr ".wl[744].w[66]"  1;
	setAttr ".wl[745].w[66]"  1;
	setAttr ".wl[746].w[32]"  1;
	setAttr ".wl[747].w[2]"  1;
	setAttr ".wl[748].w[32]"  1;
	setAttr ".wl[749].w[32]"  1;
	setAttr ".wl[750].w[32]"  1;
	setAttr ".wl[751].w[1]"  1;
	setAttr ".wl[752].w[32]"  1;
	setAttr ".wl[753].w[32]"  1;
	setAttr ".wl[754].w[66]"  1;
	setAttr ".wl[755].w[66]"  1;
	setAttr ".wl[756].w[66]"  1;
	setAttr ".wl[757].w[66]"  1;
	setAttr ".wl[758].w[66]"  1;
	setAttr ".wl[759].w[66]"  1;
	setAttr ".wl[760].w[66]"  1;
	setAttr ".wl[761].w[66]"  1;
	setAttr ".wl[762].w[66]"  1;
	setAttr ".wl[763].w[66]"  1;
	setAttr ".wl[764].w[66]"  1;
	setAttr ".wl[765].w[66]"  1;
	setAttr ".wl[766].w[66]"  1;
	setAttr ".wl[767].w[66]"  1;
	setAttr ".wl[768].w[66]"  1;
	setAttr ".wl[769].w[66]"  1;
	setAttr ".wl[770].w[66]"  1;
	setAttr ".wl[771].w[66]"  1;
	setAttr ".wl[772].w[66]"  1;
	setAttr ".wl[773].w[66]"  1;
	setAttr ".wl[774].w[66]"  1;
	setAttr ".wl[775].w[66]"  1;
	setAttr ".wl[776].w[66]"  1;
	setAttr ".wl[777].w[66]"  1;
	setAttr ".wl[778].w[66]"  1;
	setAttr ".wl[779].w[66]"  1;
	setAttr ".wl[780].w[66]"  1;
	setAttr ".wl[781].w[66]"  1;
	setAttr ".wl[782].w[66]"  1;
	setAttr ".wl[783].w[66]"  1;
	setAttr ".wl[784].w[0]"  1;
	setAttr ".wl[785].w[0]"  1;
	setAttr ".wl[786].w[0]"  1;
	setAttr ".wl[787].w[0]"  1;
	setAttr ".wl[788].w[0]"  1;
	setAttr ".wl[789].w[0]"  1;
	setAttr ".wl[790].w[0]"  1;
	setAttr ".wl[791].w[0]"  1;
	setAttr ".wl[792].w[0]"  1;
	setAttr ".wl[793].w[0]"  1;
	setAttr ".wl[794].w[0]"  1;
	setAttr ".wl[795].w[0]"  1;
	setAttr ".wl[796].w[0]"  1;
	setAttr ".wl[797].w[0]"  1;
	setAttr ".wl[798].w[66]"  1;
	setAttr ".wl[799].w[66]"  1;
	setAttr ".wl[800].w[66]"  1;
	setAttr ".wl[801].w[66]"  1;
	setAttr ".wl[802].w[66]"  1;
	setAttr ".wl[803].w[66]"  1;
	setAttr ".wl[804].w[66]"  1;
	setAttr ".wl[805].w[66]"  1;
	setAttr ".wl[806].w[66]"  1;
	setAttr ".wl[807].w[66]"  1;
	setAttr ".wl[808].w[66]"  1;
	setAttr ".wl[809].w[66]"  1;
	setAttr ".wl[810].w[66]"  1;
	setAttr ".wl[811].w[66]"  1;
	setAttr ".wl[812].w[66]"  1;
	setAttr ".wl[813].w[66]"  1;
	setAttr ".wl[814].w[66]"  1;
	setAttr ".wl[815].w[66]"  1;
	setAttr ".wl[816].w[66]"  1;
	setAttr ".wl[817].w[66]"  1;
	setAttr ".wl[818].w[66]"  1;
	setAttr ".wl[819].w[0]"  1;
	setAttr ".wl[820].w[0]"  1;
	setAttr ".wl[821].w[1]"  1;
	setAttr ".wl[822].w[0]"  1;
	setAttr ".wl[823].w[0]"  1;
	setAttr ".wl[824].w[0]"  1;
	setAttr ".wl[825].w[0]"  1;
	setAttr ".wl[826].w[0]"  1;
	setAttr ".wl[827].w[0]"  1;
	setAttr ".wl[828].w[0]"  1;
	setAttr ".wl[829].w[0]"  1;
	setAttr ".wl[830].w[1]"  1;
	setAttr ".wl[831].w[1]"  1;
	setAttr ".wl[832].w[0]"  1;
	setAttr -s 2 ".wl[833].w";
	setAttr ".wl[833].w[0]" 0.64222476301288356;
	setAttr ".wl[833].w[66]" 0.3577752369871165;
	setAttr ".wl[834].w[0]"  1;
	setAttr ".wl[835].w[0]"  1;
	setAttr -s 2 ".wl[836].w";
	setAttr ".wl[836].w[0]" 0.5610829193753194;
	setAttr ".wl[836].w[66]" 0.43891708062468054;
	setAttr -s 2 ".wl[837].w";
	setAttr ".wl[837].w[0]" 0.72069530678136506;
	setAttr ".wl[837].w[66]" 0.27930469321863499;
	setAttr ".wl[838].w[0]"  1;
	setAttr -s 2 ".wl[839].w";
	setAttr ".wl[839].w[0]" 0.70650027402075666;
	setAttr ".wl[839].w[66]" 0.29349972597924329;
	setAttr ".wl[840].w[0]"  1;
	setAttr ".wl[841].w[0]"  1;
	setAttr -s 2 ".wl[842].w";
	setAttr ".wl[842].w[0]" 0.66907584667205811;
	setAttr ".wl[842].w[66]" 0.33092415332794189;
	setAttr -s 2 ".wl[843].w";
	setAttr ".wl[843].w[0]" 0.9871192704413374;
	setAttr ".wl[843].w[66]" 0.012880729558662542;
	setAttr ".wl[844].w[0]"  1;
	setAttr ".wl[845].w[0]"  1;
	setAttr -s 2 ".wl[846].w";
	setAttr ".wl[846].w[0]" 0.98698396868265437;
	setAttr ".wl[846].w[66]" 0.013016031317345647;
	setAttr ".wl[847].w[66]"  1;
	setAttr ".wl[848].w[66]"  1;
	setAttr ".wl[849].w[66]"  1;
	setAttr ".wl[850].w[66]"  1;
	setAttr ".wl[851].w[66]"  1;
	setAttr ".wl[852].w[66]"  1;
	setAttr ".wl[853].w[66]"  1;
	setAttr ".wl[854].w[66]"  1;
	setAttr ".wl[855].w[66]"  1;
	setAttr ".wl[856].w[66]"  1;
	setAttr ".wl[857].w[66]"  1;
	setAttr ".wl[858].w[66]"  1;
	setAttr ".wl[859].w[66]"  1;
	setAttr ".wl[860].w[66]"  1;
	setAttr -s 2 ".wl[861].w[0:1]"  0.21808380016194084 0.78191619983805916;
	setAttr -s 2 ".wl[862].w[0:1]"  0.13983620976920499 0.86016379023079503;
	setAttr ".wl[863].w[1]"  1;
	setAttr ".wl[864].w[1]"  1;
	setAttr -s 2 ".wl[865].w[0:1]"  0.92936204823160029 0.070637951768399862;
	setAttr -s 2 ".wl[866].w[0:1]"  0.89443379529473055 0.10556620470526962;
	setAttr ".wl[867].w[1]"  1;
	setAttr ".wl[868].w[1]"  1;
	setAttr ".wl[869].w[1]"  1;
	setAttr ".wl[870].w[1]"  1;
	setAttr ".wl[871].w[1]"  1;
	setAttr ".wl[872].w[1]"  1;
	setAttr ".wl[873].w[1]"  1;
	setAttr -s 2 ".wl[874].w[0:1]"  0.00046727132118426176 0.99953272867881582;
	setAttr ".wl[875].w[66]"  1;
	setAttr ".wl[876].w[66]"  1;
	setAttr ".wl[877].w[66]"  1;
	setAttr ".wl[878].w[66]"  1;
	setAttr ".wl[879].w[66]"  1;
	setAttr ".wl[880].w[66]"  1;
	setAttr ".wl[881].w[66]"  1;
	setAttr ".wl[882].w[66]"  1;
	setAttr ".wl[883].w[66]"  1;
	setAttr ".wl[884].w[66]"  1;
	setAttr ".wl[885].w[66]"  1;
	setAttr ".wl[886].w[66]"  1;
	setAttr ".wl[887].w[66]"  1;
	setAttr ".wl[888].w[66]"  1;
	setAttr ".wl[889].w[66]"  1;
	setAttr ".wl[890].w[66]"  1;
	setAttr ".wl[891].w[66]"  1;
	setAttr ".wl[892].w[66]"  1;
	setAttr ".wl[893].w[66]"  1;
	setAttr ".wl[894].w[66]"  1;
	setAttr ".wl[895].w[66]"  1;
	setAttr ".wl[896].w[66]"  1;
	setAttr ".wl[897].w[66]"  1;
	setAttr ".wl[898].w[66]"  1;
	setAttr ".wl[899].w[0]"  1;
	setAttr ".wl[900].w[0]"  1;
	setAttr ".wl[901].w[0]"  1;
	setAttr ".wl[902].w[0]"  1;
	setAttr ".wl[903].w[66]"  1;
	setAttr ".wl[904].w[0]"  1;
	setAttr ".wl[905].w[0]"  1;
	setAttr ".wl[906].w[66]"  1;
	setAttr ".wl[907].w[0]"  1;
	setAttr ".wl[908].w[0]"  1;
	setAttr ".wl[909].w[0]"  1;
	setAttr ".wl[910].w[66]"  1;
	setAttr -s 2 ".wl[911].w[0:1]"  0.96822410317752616 0.031775896822473823;
	setAttr -s 2 ".wl[912].w[0:1]"  0.96873049437999725 0.031269505620002747;
	setAttr -s 2 ".wl[913].w[0:1]"  0.96842467784881592 0.031575322151184082;
	setAttr -s 2 ".wl[914].w[0:1]"  0.96858835331685955 0.031411646683140428;
	setAttr -s 2 ".wl[915].w[0:1]"  0.99994896845481129 5.1031545188826681e-05;
	setAttr -s 2 ".wl[916].w[0:1]"  0.96878455036767497 0.031215449632325046;
	setAttr ".wl[917].w[1]"  1;
	setAttr ".wl[918].w[1]"  1;
	setAttr ".wl[919].w[1]"  1;
	setAttr -s 2 ".wl[920].w[0:1]"  1.6510486206896114e-05 0.99998348951379312;
	setAttr ".wl[921].w[1]"  1;
	setAttr ".wl[922].w[1]"  1;
	setAttr ".wl[923].w[1]"  1;
	setAttr ".wl[924].w[1]"  1;
	setAttr ".wl[925].w[1]"  1;
	setAttr ".wl[926].w[1]"  1;
	setAttr ".wl[927].w[1]"  1;
	setAttr ".wl[928].w[2]"  1;
	setAttr ".wl[929].w[1]"  1;
	setAttr -s 2 ".wl[930].w[1:2]"  0.99999982118606567 1.7881393432617188e-07;
	setAttr ".wl[931].w[2]"  1;
	setAttr ".wl[932].w[2]"  1;
	setAttr -s 2 ".wl[933].w[1:2]"  0.87710721001236092 0.12289278998763913;
	setAttr ".wl[934].w[2]"  1;
	setAttr ".wl[935].w[3]"  1;
	setAttr ".wl[936].w[32]"  1;
	setAttr ".wl[937].w[2]"  1;
	setAttr ".wl[938].w[2]"  1;
	setAttr -s 2 ".wl[939].w";
	setAttr ".wl[939].w[2]" 0.9999997615814209;
	setAttr ".wl[939].w[32]" 2.384185791015625e-07;
	setAttr ".wl[940].w[1]"  1;
	setAttr ".wl[941].w[32]"  1;
	setAttr -s 2 ".wl[942].w";
	setAttr ".wl[942].w[1]" 2.9802322387695312e-07;
	setAttr ".wl[942].w[3]" 0.99999970197677612;
	setAttr -s 2 ".wl[943].w[0:1]"  0.094830751419067383 0.90516924858093262;
	setAttr ".wl[944].w[2]"  1;
	setAttr ".wl[945].w[32]"  1;
	setAttr ".wl[946].w[32]"  1;
	setAttr ".wl[947].w[32]"  1;
	setAttr ".wl[948].w[1]"  1;
	setAttr ".wl[949].w[32]"  1;
	setAttr ".wl[950].w[32]"  1;
	setAttr ".wl[951].w[66]"  1;
	setAttr ".wl[952].w[66]"  1;
	setAttr ".wl[953].w[66]"  1;
	setAttr ".wl[954].w[66]"  1;
	setAttr ".wl[955].w[66]"  1;
	setAttr ".wl[956].w[66]"  1;
	setAttr ".wl[957].w[66]"  1;
	setAttr ".wl[958].w[66]"  1;
	setAttr ".wl[959].w[66]"  1;
	setAttr ".wl[960].w[66]"  1;
	setAttr ".wl[961].w[66]"  1;
	setAttr ".wl[962].w[66]"  1;
	setAttr -s 2 ".wl[963].w[0:1]"  0.83713018894195557 0.16286981105804443;
	setAttr ".wl[964].w[66]"  1;
	setAttr ".wl[965].w[66]"  1;
	setAttr ".wl[966].w[66]"  1;
	setAttr ".wl[967].w[66]"  1;
	setAttr ".wl[968].w[66]"  1;
	setAttr ".wl[969].w[66]"  1;
	setAttr ".wl[970].w[66]"  1;
	setAttr ".wl[971].w[66]"  1;
	setAttr ".wl[972].w[66]"  1;
	setAttr ".wl[973].w[66]"  1;
	setAttr ".wl[974].w[66]"  1;
	setAttr ".wl[975].w[66]"  1;
	setAttr ".wl[976].w[66]"  1;
	setAttr ".wl[977].w[66]"  1;
	setAttr ".wl[978].w[66]"  1;
	setAttr ".wl[979].w[66]"  1;
	setAttr ".wl[980].w[66]"  1;
	setAttr ".wl[981].w[66]"  1;
	setAttr ".wl[982].w[66]"  1;
	setAttr ".wl[983].w[0]"  1;
	setAttr ".wl[984].w[0]"  1;
	setAttr ".wl[985].w[66]"  1;
	setAttr ".wl[986].w[66]"  1;
	setAttr ".wl[987].w[66]"  1;
	setAttr ".wl[988].w[66]"  1;
	setAttr ".wl[989].w[66]"  1;
	setAttr ".wl[990].w[66]"  1;
	setAttr ".wl[991].w[66]"  1;
	setAttr ".wl[992].w[66]"  1;
	setAttr ".wl[993].w[66]"  1;
	setAttr ".wl[994].w[66]"  1;
	setAttr ".wl[995].w[66]"  1;
	setAttr ".wl[996].w[66]"  1;
	setAttr ".wl[997].w[66]"  1;
	setAttr ".wl[998].w[66]"  1;
	setAttr ".wl[999].w[66]"  1;
	setAttr ".wl[1000].w[66]"  1;
	setAttr ".wl[1001].w[66]"  1;
	setAttr ".wl[1002].w[66]"  1;
	setAttr ".wl[1003].w[66]"  1;
	setAttr ".wl[1004].w[66]"  1;
	setAttr ".wl[1005].w[66]"  1;
	setAttr ".wl[1006].w[66]"  1;
	setAttr ".wl[1007].w[66]"  1;
	setAttr ".wl[1008].w[66]"  1;
	setAttr ".wl[1009].w[66]"  1;
	setAttr ".wl[1010].w[66]"  1;
	setAttr ".wl[1011].w[66]"  1;
	setAttr ".wl[1012].w[66]"  1;
	setAttr ".wl[1013].w[66]"  1;
	setAttr ".wl[1014].w[66]"  1;
	setAttr ".wl[1015].w[66]"  1;
	setAttr ".wl[1016].w[66]"  1;
	setAttr ".wl[1017].w[66]"  1;
	setAttr ".wl[1018].w[66]"  1;
	setAttr ".wl[1019].w[66]"  1;
	setAttr ".wl[1020].w[66]"  1;
	setAttr ".wl[1021].w[66]"  1;
	setAttr ".wl[1022].w[66]"  1;
	setAttr ".wl[1023].w[66]"  1;
	setAttr ".wl[1024].w[66]"  1;
	setAttr ".wl[1025].w[66]"  1;
	setAttr ".wl[1026].w[66]"  1;
	setAttr ".wl[1027].w[66]"  1;
	setAttr ".wl[1028].w[66]"  1;
	setAttr ".wl[1029].w[66]"  1;
	setAttr ".wl[1030].w[66]"  1;
	setAttr ".wl[1031].w[66]"  1;
	setAttr ".wl[1032].w[66]"  1;
	setAttr ".wl[1033].w[66]"  1;
	setAttr ".wl[1034].w[66]"  1;
	setAttr ".wl[1035].w[66]"  1;
	setAttr ".wl[1036].w[66]"  1;
	setAttr ".wl[1037].w[66]"  1;
	setAttr ".wl[1038].w[66]"  1;
	setAttr ".wl[1039].w[66]"  1;
	setAttr ".wl[1040].w[66]"  1;
	setAttr ".wl[1041].w[66]"  1;
	setAttr ".wl[1042].w[66]"  1;
	setAttr ".wl[1043].w[66]"  1;
	setAttr ".wl[1044].w[66]"  1;
	setAttr ".wl[1045].w[66]"  1;
	setAttr ".wl[1046].w[66]"  1;
	setAttr ".wl[1047].w[66]"  1;
	setAttr ".wl[1048].w[1]"  1;
	setAttr ".wl[1049].w[1]"  1;
	setAttr ".wl[1050].w[1]"  1;
	setAttr ".wl[1051].w[1]"  1;
	setAttr ".wl[1052].w[3]"  1;
	setAttr ".wl[1053].w[3]"  1;
	setAttr ".wl[1054].w[3]"  1;
	setAttr ".wl[1055].w[3]"  1;
	setAttr ".wl[1056].w[2]"  1;
	setAttr ".wl[1057].w[2]"  1;
	setAttr ".wl[1058].w[2]"  1;
	setAttr ".wl[1059].w[2]"  1;
	setAttr ".wl[1060].w[33]"  1;
	setAttr ".wl[1061].w[33]"  1;
	setAttr ".wl[1062].w[33]"  1;
	setAttr ".wl[1063].w[2]"  1;
	setAttr ".wl[1064].w[2]"  1;
	setAttr ".wl[1065].w[2]"  1;
	setAttr ".wl[1066].w[2]"  1;
	setAttr ".wl[1067].w[3]"  1;
	setAttr ".wl[1068].w[3]"  1;
	setAttr ".wl[1069].w[3]"  1;
	setAttr ".wl[1070].w[3]"  1;
	setAttr ".wl[1071].w[1]"  1;
	setAttr ".wl[1072].w[1]"  1;
	setAttr ".wl[1073].w[1]"  1;
	setAttr ".wl[1074].w[1]"  1;
	setAttr ".wl[1075].w[1]"  1;
	setAttr ".wl[1076].w[1]"  1;
	setAttr ".wl[1077].w[3]"  1;
	setAttr ".wl[1078].w[3]"  1;
	setAttr ".wl[1079].w[3]"  1;
	setAttr ".wl[1080].w[3]"  1;
	setAttr ".wl[1081].w[3]"  1;
	setAttr ".wl[1082].w[2]"  1;
	setAttr ".wl[1083].w[2]"  1;
	setAttr ".wl[1084].w[32]"  1;
	setAttr ".wl[1085].w[32]"  1;
	setAttr ".wl[1086].w[32]"  1;
	setAttr ".wl[1087].w[32]"  1;
	setAttr ".wl[1088].w[32]"  1;
	setAttr ".wl[1089].w[2]"  1;
	setAttr ".wl[1090].w[2]"  1;
	setAttr ".wl[1091].w[3]"  1;
	setAttr ".wl[1092].w[3]"  1;
	setAttr ".wl[1093].w[3]"  1;
	setAttr ".wl[1094].w[3]"  1;
	setAttr ".wl[1095].w[3]"  1;
	setAttr ".wl[1096].w[1]"  1;
	setAttr ".wl[1097].w[1]"  1;
	setAttr ".wl[1098].w[1]"  1;
	setAttr ".wl[1099].w[3]"  1;
	setAttr ".wl[1100].w[3]"  1;
	setAttr ".wl[1101].w[3]"  1;
	setAttr ".wl[1102].w[3]"  1;
	setAttr ".wl[1103].w[3]"  1;
	setAttr ".wl[1104].w[2]"  1;
	setAttr ".wl[1105].w[2]"  1;
	setAttr ".wl[1106].w[2]"  1;
	setAttr ".wl[1107].w[32]"  1;
	setAttr ".wl[1108].w[32]"  1;
	setAttr ".wl[1109].w[32]"  1;
	setAttr ".wl[1110].w[2]"  1;
	setAttr ".wl[1111].w[2]"  1;
	setAttr ".wl[1112].w[2]"  1;
	setAttr ".wl[1113].w[3]"  1;
	setAttr ".wl[1114].w[3]"  1;
	setAttr ".wl[1115].w[3]"  1;
	setAttr ".wl[1116].w[3]"  1;
	setAttr ".wl[1117].w[3]"  1;
	setAttr ".wl[1118].w[1]"  1;
	setAttr ".wl[1119].w[1]"  1;
	setAttr ".wl[1120].w[1]"  1;
	setAttr ".wl[1121].w[1]"  1;
	setAttr -s 2 ".wl[1122].w";
	setAttr ".wl[1122].w[1]" 0.99999999995879363;
	setAttr ".wl[1122].w[32]" 4.1206472262834706e-11;
	setAttr ".wl[1123].w[1]"  1;
	setAttr ".wl[1124].w[1]"  1;
	setAttr ".wl[1125].w[2]"  1;
	setAttr ".wl[1126].w[1]"  1;
	setAttr ".wl[1127].w[1]"  1;
	setAttr ".wl[1128].w[1]"  1;
	setAttr ".wl[1129].w[1]"  1;
	setAttr ".wl[1130].w[1]"  1;
	setAttr ".wl[1131].w[1]"  1;
	setAttr -s 2 ".wl[1132].w";
	setAttr ".wl[1132].w[1]" 3.5677105188369751e-05;
	setAttr ".wl[1132].w[32]" 0.99996432289481163;
	setAttr ".wl[1133].w[32]"  1;
	setAttr ".wl[1134].w[32]"  1;
	setAttr ".wl[1135].w[2]"  1;
	setAttr ".wl[1136].w[32]"  1;
	setAttr ".wl[1137].w[1]"  1;
	setAttr ".wl[1138].w[1]"  1;
	setAttr ".wl[1139].w[3]"  1;
	setAttr ".wl[1140].w[1]"  1;
	setAttr ".wl[1141].w[1]"  1;
	setAttr ".wl[1142].w[1]"  1;
	setAttr ".wl[1143].w[1]"  1;
	setAttr ".wl[1144].w[1]"  1;
	setAttr -s 2 ".wl[1145].w[1:2]"  0.99971741437911987 0.00028258562088012695;
	setAttr -s 2 ".wl[1146].w[1:2]"  0.050376775683270675 0.9496232243167293;
	setAttr -s 2 ".wl[1147].w[1:2]"  0.18676459989580338 0.81323540010419659;
	setAttr ".wl[1148].w[1]"  1;
	setAttr ".wl[1149].w[1]"  1;
	setAttr ".wl[1150].w[1]"  1;
	setAttr -s 2 ".wl[1151].w[1:2]"  0.99075950432159776 0.0092404956784023738;
	setAttr ".wl[1152].w[1]"  1;
	setAttr -s 2 ".wl[1153].w";
	setAttr ".wl[1153].w[1]" 0.00023244041949510574;
	setAttr ".wl[1153].w[32]" 0.99976755958050489;
	setAttr -s 3 ".wl[1154].w";
	setAttr ".wl[1154].w[1]" 0.00043420604796305028;
	setAttr ".wl[1154].w[2]" 0.0005002617905010728;
	setAttr ".wl[1154].w[32]" 0.99906553216153593;
	setAttr ".wl[1155].w[2]"  1;
	setAttr -s 2 ".wl[1156].w";
	setAttr ".wl[1156].w[1]" 0.00067144632339477539;
	setAttr ".wl[1156].w[32]" 0.99932855367660522;
	setAttr -s 2 ".wl[1157].w";
	setAttr ".wl[1157].w[1]" 0.99967558548087254;
	setAttr ".wl[1157].w[32]" 0.00032441451912745833;
	setAttr ".wl[1158].w[1]"  1;
	setAttr -s 2 ".wl[1159].w";
	setAttr ".wl[1159].w[1]" 0.0013101697258735608;
	setAttr ".wl[1159].w[3]" 0.99868983027412639;
	setAttr ".wl[1160].w[32]"  1;
	setAttr ".wl[1161].w[32]"  1;
	setAttr ".wl[1162].w[32]"  1;
	setAttr ".wl[1163].w[32]"  1;
	setAttr ".wl[1164].w[32]"  1;
	setAttr ".wl[1165].w[32]"  1;
	setAttr ".wl[1166].w[32]"  1;
	setAttr ".wl[1167].w[3]"  1;
	setAttr ".wl[1168].w[32]"  1;
	setAttr ".wl[1169].w[32]"  1;
	setAttr ".wl[1170].w[32]"  1;
	setAttr ".wl[1171].w[32]"  1;
	setAttr ".wl[1172].w[32]"  1;
	setAttr -s 3 ".wl[1173].w";
	setAttr ".wl[1173].w[1]" 0.019352202242229215;
	setAttr ".wl[1173].w[3]" 0.0070686938989537656;
	setAttr ".wl[1173].w[32]" 0.97357910385881707;
	setAttr -s 3 ".wl[1174].w";
	setAttr ".wl[1174].w[1]" 0.12030993780310929;
	setAttr ".wl[1174].w[3]" 0.87439355007829489;
	setAttr ".wl[1174].w[32]" 0.0052965121185958646;
	setAttr ".wl[1175].w[1]"  1;
	setAttr ".wl[1176].w[1]"  1;
	setAttr ".wl[1177].w[1]"  1;
	setAttr ".wl[1178].w[1]"  1;
	setAttr ".wl[1179].w[1]"  1;
	setAttr ".wl[1180].w[1]"  1;
	setAttr -s 2 ".wl[1181].w";
	setAttr ".wl[1181].w[1]" 0.99999497013925753;
	setAttr ".wl[1181].w[32]" 5.0298607424429406e-06;
	setAttr ".wl[1182].w[1]"  1;
	setAttr ".wl[1183].w[1]"  1;
	setAttr ".wl[1184].w[1]"  1;
	setAttr ".wl[1185].w[1]"  1;
	setAttr ".wl[1186].w[1]"  1;
	setAttr ".wl[1187].w[1]"  1;
	setAttr ".wl[1188].w[1]"  1;
	setAttr -s 2 ".wl[1189].w";
	setAttr ".wl[1189].w[1]" 3.2126904031364048e-05;
	setAttr ".wl[1189].w[32]" 0.9999678730959688;
	setAttr ".wl[1190].w[32]"  1;
	setAttr ".wl[1191].w[32]"  1;
	setAttr ".wl[1192].w[32]"  1;
	setAttr ".wl[1193].w[1]"  1;
	setAttr ".wl[1194].w[1]"  1;
	setAttr ".wl[1195].w[1]"  1;
	setAttr ".wl[1196].w[1]"  1;
	setAttr ".wl[1197].w[1]"  1;
	setAttr ".wl[1198].w[1]"  1;
	setAttr ".wl[1199].w[1]"  1;
	setAttr ".wl[1200].w[1]"  1;
	setAttr ".wl[1201].w[1]"  1;
	setAttr ".wl[1202].w[1]"  1;
	setAttr ".wl[1203].w[1]"  1;
	setAttr ".wl[1204].w[1]"  1;
	setAttr -s 2 ".wl[1205].w[1:2]"  0.15728654172330134 0.84271345827669863;
	setAttr -s 2 ".wl[1206].w[1:2]"  0.58652781847035318 0.41347218152964677;
	setAttr ".wl[1207].w[1]"  1;
	setAttr ".wl[1208].w[1]"  1;
	setAttr ".wl[1209].w[1]"  1;
	setAttr -s 2 ".wl[1210].w";
	setAttr ".wl[1210].w[1]" 0.00028121320065110922;
	setAttr ".wl[1210].w[32]" 0.99971878679934889;
	setAttr -s 2 ".wl[1211].w";
	setAttr ".wl[1211].w[1]" 0.00073862744699336143;
	setAttr ".wl[1211].w[32]" 0.99926137255300662;
	setAttr ".wl[1212].w[32]"  1;
	setAttr -s 2 ".wl[1213].w";
	setAttr ".wl[1213].w[1]" 0.98780660103332374;
	setAttr ".wl[1213].w[32]" 0.012193398966676346;
	setAttr ".wl[1214].w[1]"  1;
	setAttr ".wl[1215].w[1]"  1;
	setAttr ".wl[1216].w[1]"  1;
	setAttr ".wl[1217].w[32]"  1;
	setAttr ".wl[1218].w[32]"  1;
	setAttr ".wl[1219].w[32]"  1;
	setAttr ".wl[1220].w[32]"  1;
	setAttr ".wl[1221].w[32]"  1;
	setAttr ".wl[1222].w[32]"  1;
	setAttr ".wl[1223].w[1]"  1;
	setAttr ".wl[1224].w[1]"  1;
	setAttr ".wl[1225].w[32]"  1;
	setAttr ".wl[1226].w[32]"  1;
	setAttr ".wl[1227].w[32]"  1;
	setAttr ".wl[1228].w[32]"  1;
	setAttr -s 2 ".wl[1229].w";
	setAttr ".wl[1229].w[1]" 0.0023943781284087875;
	setAttr ".wl[1229].w[32]" 0.99760562187159119;
	setAttr -s 3 ".wl[1230].w";
	setAttr ".wl[1230].w[1]" 0.84343764698326085;
	setAttr ".wl[1230].w[3]" 0.0055433394180343818;
	setAttr ".wl[1230].w[32]" 0.15101901359870476;
	setAttr -s 2 ".wl[1231].w";
	setAttr ".wl[1231].w[1]" 0.8739187759312731;
	setAttr ".wl[1231].w[3]" 0.12608122406872688;
	setAttr ".wl[1232].w[2]"  1;
	setAttr ".wl[1233].w[2]"  1;
	setAttr ".wl[1234].w[32]"  1;
	setAttr ".wl[1235].w[32]"  1;
	setAttr ".wl[1236].w[32]"  1;
	setAttr ".wl[1237].w[1]"  1;
	setAttr ".wl[1238].w[32]"  1;
	setAttr ".wl[1239].w[32]"  1;
	setAttr ".wl[1240].w[32]"  1;
	setAttr ".wl[1241].w[32]"  1;
	setAttr ".wl[1242].w[32]"  1;
	setAttr ".wl[1243].w[32]"  1;
	setAttr ".wl[1244].w[32]"  1;
	setAttr ".wl[1245].w[32]"  1;
	setAttr ".wl[1246].w[32]"  1;
	setAttr ".wl[1247].w[32]"  1;
	setAttr ".wl[1248].w[32]"  1;
	setAttr ".wl[1249].w[32]"  1;
	setAttr ".wl[1250].w[1]"  1;
	setAttr ".wl[1251].w[32]"  1;
	setAttr ".wl[1252].w[1]"  1;
	setAttr ".wl[1253].w[32]"  1;
	setAttr ".wl[1254].w[3]"  1;
	setAttr ".wl[1255].w[3]"  1;
	setAttr ".wl[1256].w[32]"  1;
	setAttr ".wl[1257].w[32]"  1;
	setAttr ".wl[1258].w[32]"  1;
	setAttr ".wl[1259].w[32]"  1;
	setAttr -s 2 ".wl[1260].w";
	setAttr ".wl[1260].w[2]" 0.0040838915512126919;
	setAttr ".wl[1260].w[32]" 0.99591610844878731;
	setAttr ".wl[1261].w[32]"  1;
	setAttr -s 2 ".wl[1262].w";
	setAttr ".wl[1262].w[1]" 3.0755997201786796e-05;
	setAttr ".wl[1262].w[32]" 0.99996924400279819;
	setAttr ".wl[1263].w[32]"  1;
	setAttr ".wl[1264].w[1]"  1;
	setAttr ".wl[1265].w[32]"  1;
	setAttr -s 2 ".wl[1266].w";
	setAttr ".wl[1266].w[1]" 0.99925732612004647;
	setAttr ".wl[1266].w[3]" 0.00074267387995347045;
	setAttr -s 2 ".wl[1267].w";
	setAttr ".wl[1267].w[3]" 0.038468420505523682;
	setAttr ".wl[1267].w[32]" 0.96153157949447632;
	setAttr -s 2 ".wl[1268].w";
	setAttr ".wl[1268].w[1]" 0.0011535834055393934;
	setAttr ".wl[1268].w[3]" 0.99884641659446061;
	setAttr -s 2 ".wl[1269].w";
	setAttr ".wl[1269].w[3]" 0.99402073007883818;
	setAttr ".wl[1269].w[32]" 0.005979269921161828;
	setAttr ".wl[1270].w[3]"  1;
	setAttr ".wl[1271].w[3]"  1;
	setAttr ".wl[1272].w[3]"  1;
	setAttr ".wl[1273].w[3]"  1;
	setAttr ".wl[1274].w[3]"  1;
	setAttr -s 21 ".wl[1275].w";
	setAttr ".wl[1275].w[0]" 0.047619047619047616;
	setAttr ".wl[1275].w[1]" 0.047619047619047616;
	setAttr ".wl[1275].w[2]" 0.047619047619047616;
	setAttr ".wl[1275].w[3]" 0.047619047619047616;
	setAttr ".wl[1275].w[4]" 0.047619047619047616;
	setAttr ".wl[1275].w[23]" 0.047619047619047616;
	setAttr ".wl[1275].w[32]" 0.047619047619047616;
	setAttr ".wl[1275].w[33]" 0.047619047619047616;
	setAttr ".wl[1275].w[34]" 0.047619047619047616;
	setAttr ".wl[1275].w[35]" 0.047619047619047616;
	setAttr ".wl[1275].w[36]" 0.047619047619047616;
	setAttr ".wl[1275].w[37]" 0.047619047619047616;
	setAttr ".wl[1275].w[38]" 0.047619047619047616;
	setAttr ".wl[1275].w[39]" 0.047619047619047616;
	setAttr ".wl[1275].w[48]" 0.047619047619047616;
	setAttr ".wl[1275].w[58]" 0.047619047619047616;
	setAttr ".wl[1275].w[63]" 0.047619047619047616;
	setAttr ".wl[1275].w[66]" 0.047619047619047616;
	setAttr ".wl[1275].w[76]" 0.047619047619047616;
	setAttr ".wl[1275].w[78]" 0.047619047619047616;
	setAttr ".wl[1275].w[79]" 0.047619047619047616;
	setAttr -s 21 ".wl[1276].w";
	setAttr ".wl[1276].w[0]" 0.047619047619047616;
	setAttr ".wl[1276].w[1]" 0.047619047619047616;
	setAttr ".wl[1276].w[2]" 0.047619047619047616;
	setAttr ".wl[1276].w[3]" 0.047619047619047616;
	setAttr ".wl[1276].w[4]" 0.047619047619047616;
	setAttr ".wl[1276].w[23]" 0.047619047619047616;
	setAttr ".wl[1276].w[32]" 0.047619047619047616;
	setAttr ".wl[1276].w[33]" 0.047619047619047616;
	setAttr ".wl[1276].w[34]" 0.047619047619047616;
	setAttr ".wl[1276].w[35]" 0.047619047619047616;
	setAttr ".wl[1276].w[36]" 0.047619047619047616;
	setAttr ".wl[1276].w[37]" 0.047619047619047616;
	setAttr ".wl[1276].w[38]" 0.047619047619047616;
	setAttr ".wl[1276].w[39]" 0.047619047619047616;
	setAttr ".wl[1276].w[48]" 0.047619047619047616;
	setAttr ".wl[1276].w[58]" 0.047619047619047616;
	setAttr ".wl[1276].w[63]" 0.047619047619047616;
	setAttr ".wl[1276].w[66]" 0.047619047619047616;
	setAttr ".wl[1276].w[76]" 0.047619047619047616;
	setAttr ".wl[1276].w[78]" 0.047619047619047616;
	setAttr ".wl[1276].w[79]" 0.047619047619047616;
	setAttr -s 4 ".wl[1277].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1278].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1279].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1280].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1281].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1282].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1283].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1284].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1285].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1286].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1287].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1288].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[1289].w[2]"  1;
	setAttr ".wl[1290].w[2]"  1;
	setAttr ".wl[1291].w[2]"  1;
	setAttr ".wl[1292].w[2]"  1;
	setAttr -s 5 ".wl[1293].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1294].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1295].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1296].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1297].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1298].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1299].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1300].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1301].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1302].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1303].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1304].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1305].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1306].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1307].w[2]"  1;
	setAttr ".wl[1308].w[2]"  1;
	setAttr -s 5 ".wl[1309].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1310].w[35]"  1;
	setAttr ".wl[1311].w[2]"  1;
	setAttr ".wl[1312].w[2]"  1;
	setAttr ".wl[1313].w[34]"  1;
	setAttr ".wl[1314].w[34]"  1;
	setAttr ".wl[1315].w[2]"  1;
	setAttr ".wl[1316].w[2]"  1;
	setAttr ".wl[1317].w[2]"  1;
	setAttr ".wl[1318].w[3]"  1;
	setAttr ".wl[1319].w[3]"  1;
	setAttr ".wl[1320].w[3]"  1;
	setAttr ".wl[1321].w[2]"  1;
	setAttr ".wl[1322].w[2]"  1;
	setAttr ".wl[1323].w[2]"  1;
	setAttr ".wl[1324].w[2]"  1;
	setAttr -s 5 ".wl[1325].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1326].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1327].w[2]"  1;
	setAttr -s 5 ".wl[1328].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1329].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1330].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 4 ".wl[1331].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 5 ".wl[1332].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1333].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1334].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 4 ".wl[1335].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[1336].w[37]"  1;
	setAttr ".wl[1337].w[2]"  1;
	setAttr ".wl[1338].w[3]"  1;
	setAttr ".wl[1339].w[35]"  1;
	setAttr ".wl[1340].w[2]"  1;
	setAttr -s 5 ".wl[1341].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1342].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1343].w[2]"  1;
	setAttr ".wl[1344].w[2]"  1;
	setAttr -s 21 ".wl[1345].w";
	setAttr ".wl[1345].w[0]" 0.047619047619047616;
	setAttr ".wl[1345].w[1]" 0.047619047619047616;
	setAttr ".wl[1345].w[2]" 0.047619047619047616;
	setAttr ".wl[1345].w[3]" 0.047619047619047616;
	setAttr ".wl[1345].w[4]" 0.047619047619047616;
	setAttr ".wl[1345].w[23]" 0.047619047619047616;
	setAttr ".wl[1345].w[32]" 0.047619047619047616;
	setAttr ".wl[1345].w[33]" 0.047619047619047616;
	setAttr ".wl[1345].w[34]" 0.047619047619047616;
	setAttr ".wl[1345].w[35]" 0.047619047619047616;
	setAttr ".wl[1345].w[36]" 0.047619047619047616;
	setAttr ".wl[1345].w[37]" 0.047619047619047616;
	setAttr ".wl[1345].w[38]" 0.047619047619047616;
	setAttr ".wl[1345].w[39]" 0.047619047619047616;
	setAttr ".wl[1345].w[48]" 0.047619047619047616;
	setAttr ".wl[1345].w[58]" 0.047619047619047616;
	setAttr ".wl[1345].w[63]" 0.047619047619047616;
	setAttr ".wl[1345].w[66]" 0.047619047619047616;
	setAttr ".wl[1345].w[76]" 0.047619047619047616;
	setAttr ".wl[1345].w[78]" 0.047619047619047616;
	setAttr ".wl[1345].w[79]" 0.047619047619047616;
	setAttr ".wl[1346].w[3]"  1;
	setAttr ".wl[1347].w[3]"  1;
	setAttr ".wl[1348].w[3]"  1;
	setAttr ".wl[1349].w[3]"  1;
	setAttr ".wl[1350].w[3]"  1;
	setAttr ".wl[1351].w[37]"  1;
	setAttr ".wl[1352].w[37]"  1;
	setAttr -s 21 ".wl[1353].w";
	setAttr ".wl[1353].w[0]" 0.047619047619047616;
	setAttr ".wl[1353].w[1]" 0.047619047619047616;
	setAttr ".wl[1353].w[2]" 0.047619047619047616;
	setAttr ".wl[1353].w[3]" 0.047619047619047616;
	setAttr ".wl[1353].w[4]" 0.047619047619047616;
	setAttr ".wl[1353].w[23]" 0.047619047619047616;
	setAttr ".wl[1353].w[32]" 0.047619047619047616;
	setAttr ".wl[1353].w[33]" 0.047619047619047616;
	setAttr ".wl[1353].w[34]" 0.047619047619047616;
	setAttr ".wl[1353].w[35]" 0.047619047619047616;
	setAttr ".wl[1353].w[36]" 0.047619047619047616;
	setAttr ".wl[1353].w[37]" 0.047619047619047616;
	setAttr ".wl[1353].w[38]" 0.047619047619047616;
	setAttr ".wl[1353].w[39]" 0.047619047619047616;
	setAttr ".wl[1353].w[48]" 0.047619047619047616;
	setAttr ".wl[1353].w[58]" 0.047619047619047616;
	setAttr ".wl[1353].w[63]" 0.047619047619047616;
	setAttr ".wl[1353].w[66]" 0.047619047619047616;
	setAttr ".wl[1353].w[76]" 0.047619047619047616;
	setAttr ".wl[1353].w[78]" 0.047619047619047616;
	setAttr ".wl[1353].w[79]" 0.047619047619047616;
	setAttr ".wl[1354].w[3]"  1;
	setAttr ".wl[1355].w[3]"  1;
	setAttr ".wl[1356].w[3]"  1;
	setAttr ".wl[1357].w[2]"  1;
	setAttr -s 5 ".wl[1358].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1359].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1360].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1361].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1362].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1363].w[2]"  1;
	setAttr -s 4 ".wl[1364].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1365].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1366].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[1367].w[3]"  1;
	setAttr ".wl[1368].w[3]"  1;
	setAttr ".wl[1369].w[3]"  1;
	setAttr ".wl[1370].w[2]"  1;
	setAttr -s 21 ".wl[1371].w";
	setAttr ".wl[1371].w[0]" 0.047619047619047616;
	setAttr ".wl[1371].w[1]" 0.047619047619047616;
	setAttr ".wl[1371].w[2]" 0.047619047619047616;
	setAttr ".wl[1371].w[3]" 0.047619047619047616;
	setAttr ".wl[1371].w[4]" 0.047619047619047616;
	setAttr ".wl[1371].w[23]" 0.047619047619047616;
	setAttr ".wl[1371].w[32]" 0.047619047619047616;
	setAttr ".wl[1371].w[33]" 0.047619047619047616;
	setAttr ".wl[1371].w[34]" 0.047619047619047616;
	setAttr ".wl[1371].w[35]" 0.047619047619047616;
	setAttr ".wl[1371].w[36]" 0.047619047619047616;
	setAttr ".wl[1371].w[37]" 0.047619047619047616;
	setAttr ".wl[1371].w[38]" 0.047619047619047616;
	setAttr ".wl[1371].w[39]" 0.047619047619047616;
	setAttr ".wl[1371].w[48]" 0.047619047619047616;
	setAttr ".wl[1371].w[58]" 0.047619047619047616;
	setAttr ".wl[1371].w[63]" 0.047619047619047616;
	setAttr ".wl[1371].w[66]" 0.047619047619047616;
	setAttr ".wl[1371].w[76]" 0.047619047619047616;
	setAttr ".wl[1371].w[78]" 0.047619047619047616;
	setAttr ".wl[1371].w[79]" 0.047619047619047616;
	setAttr -s 21 ".wl[1372].w";
	setAttr ".wl[1372].w[0]" 0.047619047619047616;
	setAttr ".wl[1372].w[1]" 0.047619047619047616;
	setAttr ".wl[1372].w[2]" 0.047619047619047616;
	setAttr ".wl[1372].w[3]" 0.047619047619047616;
	setAttr ".wl[1372].w[4]" 0.047619047619047616;
	setAttr ".wl[1372].w[23]" 0.047619047619047616;
	setAttr ".wl[1372].w[32]" 0.047619047619047616;
	setAttr ".wl[1372].w[33]" 0.047619047619047616;
	setAttr ".wl[1372].w[34]" 0.047619047619047616;
	setAttr ".wl[1372].w[35]" 0.047619047619047616;
	setAttr ".wl[1372].w[36]" 0.047619047619047616;
	setAttr ".wl[1372].w[37]" 0.047619047619047616;
	setAttr ".wl[1372].w[38]" 0.047619047619047616;
	setAttr ".wl[1372].w[39]" 0.047619047619047616;
	setAttr ".wl[1372].w[48]" 0.047619047619047616;
	setAttr ".wl[1372].w[58]" 0.047619047619047616;
	setAttr ".wl[1372].w[63]" 0.047619047619047616;
	setAttr ".wl[1372].w[66]" 0.047619047619047616;
	setAttr ".wl[1372].w[76]" 0.047619047619047616;
	setAttr ".wl[1372].w[78]" 0.047619047619047616;
	setAttr ".wl[1372].w[79]" 0.047619047619047616;
	setAttr -s 4 ".wl[1373].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1374].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1375].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1376].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1377].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[1378].w[2]"  1;
	setAttr -s 5 ".wl[1379].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1380].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1381].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1382].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1383].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1384].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1385].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1386].w[2]"  1;
	setAttr ".wl[1387].w[2]"  1;
	setAttr ".wl[1388].w[34]"  1;
	setAttr -s 4 ".wl[1389].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1390].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 21 ".wl[1391].w";
	setAttr ".wl[1391].w[0]" 0.047619047619047616;
	setAttr ".wl[1391].w[1]" 0.047619047619047616;
	setAttr ".wl[1391].w[2]" 0.047619047619047616;
	setAttr ".wl[1391].w[3]" 0.047619047619047616;
	setAttr ".wl[1391].w[4]" 0.047619047619047616;
	setAttr ".wl[1391].w[23]" 0.047619047619047616;
	setAttr ".wl[1391].w[32]" 0.047619047619047616;
	setAttr ".wl[1391].w[33]" 0.047619047619047616;
	setAttr ".wl[1391].w[34]" 0.047619047619047616;
	setAttr ".wl[1391].w[35]" 0.047619047619047616;
	setAttr ".wl[1391].w[36]" 0.047619047619047616;
	setAttr ".wl[1391].w[37]" 0.047619047619047616;
	setAttr ".wl[1391].w[38]" 0.047619047619047616;
	setAttr ".wl[1391].w[39]" 0.047619047619047616;
	setAttr ".wl[1391].w[48]" 0.047619047619047616;
	setAttr ".wl[1391].w[58]" 0.047619047619047616;
	setAttr ".wl[1391].w[63]" 0.047619047619047616;
	setAttr ".wl[1391].w[66]" 0.047619047619047616;
	setAttr ".wl[1391].w[76]" 0.047619047619047616;
	setAttr ".wl[1391].w[78]" 0.047619047619047616;
	setAttr ".wl[1391].w[79]" 0.047619047619047616;
	setAttr -s 4 ".wl[1392].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 21 ".wl[1393].w";
	setAttr ".wl[1393].w[0]" 0.047619047619047616;
	setAttr ".wl[1393].w[1]" 0.047619047619047616;
	setAttr ".wl[1393].w[2]" 0.047619047619047616;
	setAttr ".wl[1393].w[3]" 0.047619047619047616;
	setAttr ".wl[1393].w[4]" 0.047619047619047616;
	setAttr ".wl[1393].w[23]" 0.047619047619047616;
	setAttr ".wl[1393].w[32]" 0.047619047619047616;
	setAttr ".wl[1393].w[33]" 0.047619047619047616;
	setAttr ".wl[1393].w[34]" 0.047619047619047616;
	setAttr ".wl[1393].w[35]" 0.047619047619047616;
	setAttr ".wl[1393].w[36]" 0.047619047619047616;
	setAttr ".wl[1393].w[37]" 0.047619047619047616;
	setAttr ".wl[1393].w[38]" 0.047619047619047616;
	setAttr ".wl[1393].w[39]" 0.047619047619047616;
	setAttr ".wl[1393].w[48]" 0.047619047619047616;
	setAttr ".wl[1393].w[58]" 0.047619047619047616;
	setAttr ".wl[1393].w[63]" 0.047619047619047616;
	setAttr ".wl[1393].w[66]" 0.047619047619047616;
	setAttr ".wl[1393].w[76]" 0.047619047619047616;
	setAttr ".wl[1393].w[78]" 0.047619047619047616;
	setAttr ".wl[1393].w[79]" 0.047619047619047616;
	setAttr -s 4 ".wl[1394].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 21 ".wl[1395].w";
	setAttr ".wl[1395].w[0]" 0.047619047619047616;
	setAttr ".wl[1395].w[1]" 0.047619047619047616;
	setAttr ".wl[1395].w[2]" 0.047619047619047616;
	setAttr ".wl[1395].w[3]" 0.047619047619047616;
	setAttr ".wl[1395].w[4]" 0.047619047619047616;
	setAttr ".wl[1395].w[23]" 0.047619047619047616;
	setAttr ".wl[1395].w[32]" 0.047619047619047616;
	setAttr ".wl[1395].w[33]" 0.047619047619047616;
	setAttr ".wl[1395].w[34]" 0.047619047619047616;
	setAttr ".wl[1395].w[35]" 0.047619047619047616;
	setAttr ".wl[1395].w[36]" 0.047619047619047616;
	setAttr ".wl[1395].w[37]" 0.047619047619047616;
	setAttr ".wl[1395].w[38]" 0.047619047619047616;
	setAttr ".wl[1395].w[39]" 0.047619047619047616;
	setAttr ".wl[1395].w[48]" 0.047619047619047616;
	setAttr ".wl[1395].w[58]" 0.047619047619047616;
	setAttr ".wl[1395].w[63]" 0.047619047619047616;
	setAttr ".wl[1395].w[66]" 0.047619047619047616;
	setAttr ".wl[1395].w[76]" 0.047619047619047616;
	setAttr ".wl[1395].w[78]" 0.047619047619047616;
	setAttr ".wl[1395].w[79]" 0.047619047619047616;
	setAttr ".wl[1396].w[35]"  1;
	setAttr ".wl[1397].w[2]"  1;
	setAttr ".wl[1398].w[2]"  1;
	setAttr ".wl[1399].w[2]"  1;
	setAttr ".wl[1400].w[2]"  1;
	setAttr ".wl[1401].w[2]"  1;
	setAttr ".wl[1402].w[2]"  1;
	setAttr ".wl[1403].w[3]"  1;
	setAttr ".wl[1404].w[3]"  1;
	setAttr ".wl[1405].w[3]"  1;
	setAttr ".wl[1406].w[3]"  1;
	setAttr ".wl[1407].w[3]"  1;
	setAttr ".wl[1408].w[3]"  1;
	setAttr ".wl[1409].w[3]"  1;
	setAttr ".wl[1410].w[2]"  1;
	setAttr ".wl[1411].w[37]"  1;
	setAttr ".wl[1412].w[3]"  1;
	setAttr ".wl[1413].w[3]"  1;
	setAttr ".wl[1414].w[3]"  1;
	setAttr ".wl[1415].w[2]"  1;
	setAttr ".wl[1416].w[3]"  1;
	setAttr ".wl[1417].w[3]"  1;
	setAttr ".wl[1418].w[2]"  1;
	setAttr ".wl[1419].w[37]"  1;
	setAttr ".wl[1420].w[37]"  1;
	setAttr ".wl[1421].w[2]"  1;
	setAttr -s 4 ".wl[1422].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1423].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1424].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1425].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1426].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1427].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[1428].w[2]"  1;
	setAttr ".wl[1429].w[2]"  1;
	setAttr -s 5 ".wl[1430].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1431].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1432].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1433].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1434].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1435].w[2]"  1;
	setAttr ".wl[1436].w[2]"  1;
	setAttr ".wl[1437].w[35]"  1;
	setAttr ".wl[1438].w[35]"  1;
	setAttr ".wl[1439].w[34]"  1;
	setAttr ".wl[1440].w[37]"  1;
	setAttr ".wl[1441].w[37]"  1;
	setAttr ".wl[1442].w[38]"  1;
	setAttr ".wl[1443].w[38]"  1;
	setAttr ".wl[1444].w[38]"  1;
	setAttr ".wl[1445].w[38]"  1;
	setAttr ".wl[1446].w[38]"  1;
	setAttr ".wl[1447].w[38]"  1;
	setAttr ".wl[1448].w[38]"  1;
	setAttr ".wl[1449].w[38]"  1;
	setAttr -s 4 ".wl[1450].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1451].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[1452].w[37]"  1;
	setAttr ".wl[1453].w[38]"  1;
	setAttr ".wl[1454].w[38]"  1;
	setAttr ".wl[1455].w[38]"  1;
	setAttr ".wl[1456].w[38]"  1;
	setAttr -s 4 ".wl[1457].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1458].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[1459].w[34]"  1;
	setAttr ".wl[1460].w[35]"  1;
	setAttr ".wl[1461].w[35]"  1;
	setAttr ".wl[1462].w[2]"  1;
	setAttr ".wl[1463].w[2]"  1;
	setAttr -s 5 ".wl[1464].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1465].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1466].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1467].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1468].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1469].w[2]"  1;
	setAttr ".wl[1470].w[2]"  1;
	setAttr -s 4 ".wl[1471].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1472].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1473].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1474].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1475].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[1476].w[37]"  1;
	setAttr ".wl[1477].w[37]"  1;
	setAttr ".wl[1478].w[38]"  1;
	setAttr ".wl[1479].w[38]"  1;
	setAttr ".wl[1480].w[37]"  1;
	setAttr ".wl[1481].w[37]"  1;
	setAttr ".wl[1482].w[38]"  1;
	setAttr ".wl[1483].w[38]"  1;
	setAttr ".wl[1484].w[2]"  1;
	setAttr ".wl[1485].w[2]"  1;
	setAttr ".wl[1486].w[2]"  1;
	setAttr ".wl[1487].w[2]"  1;
	setAttr -s 5 ".wl[1488].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1489].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1490].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1491].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1492].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1493].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1494].w[2]"  1;
	setAttr ".wl[1495].w[2]"  1;
	setAttr ".wl[1496].w[2]"  1;
	setAttr ".wl[1497].w[2]"  1;
	setAttr -s 5 ".wl[1498].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1499].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1500].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1501].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1502].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1503].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1504].w[2]"  1;
	setAttr -s 2 ".wl[1505].w";
	setAttr ".wl[1505].w[2]" 0.70588234066963196;
	setAttr ".wl[1505].w[79]" 0.29411765933036804;
	setAttr ".wl[1506].w[79]"  1;
	setAttr ".wl[1507].w[79]"  1;
	setAttr -s 5 ".wl[1508].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1509].w[79]"  1;
	setAttr -s 5 ".wl[1510].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1511].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1512].w[79]"  1;
	setAttr ".wl[1513].w[79]"  1;
	setAttr ".wl[1514].w[79]"  1;
	setAttr -s 5 ".wl[1515].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1516].w";
	setAttr ".wl[1516].w[0]" 0.030392155051231384;
	setAttr ".wl[1516].w[1]" 0.030392155051231384;
	setAttr ".wl[1516].w[2]" 0.030392155051231384;
	setAttr ".wl[1516].w[3]" 0.030392155051231384;
	setAttr ".wl[1516].w[79]" 0.87843137979507446;
	setAttr ".wl[1517].w[79]"  1;
	setAttr ".wl[1518].w[79]"  1;
	setAttr ".wl[1519].w[79]"  1;
	setAttr ".wl[1520].w[79]"  1;
	setAttr -s 5 ".wl[1521].w";
	setAttr ".wl[1521].w[0]" 0.031372547149658203;
	setAttr ".wl[1521].w[1]" 0.031372547149658203;
	setAttr ".wl[1521].w[2]" 0.031372547149658203;
	setAttr ".wl[1521].w[3]" 0.031372547149658203;
	setAttr ".wl[1521].w[79]" 0.87450981140136719;
	setAttr -s 5 ".wl[1522].w";
	setAttr ".wl[1522].w[0]" 0.01666666567325592;
	setAttr ".wl[1522].w[1]" 0.01666666567325592;
	setAttr ".wl[1522].w[2]" 0.01666666567325592;
	setAttr ".wl[1522].w[3]" 0.01666666567325592;
	setAttr ".wl[1522].w[79]" 0.93333333730697632;
	setAttr ".wl[1523].w[79]"  1;
	setAttr ".wl[1524].w[79]"  1;
	setAttr ".wl[1525].w[79]"  1;
	setAttr -s 5 ".wl[1526].w";
	setAttr ".wl[1526].w[0]" 0.05098038911819458;
	setAttr ".wl[1526].w[1]" 0.05098038911819458;
	setAttr ".wl[1526].w[2]" 0.05098038911819458;
	setAttr ".wl[1526].w[3]" 0.05098038911819458;
	setAttr ".wl[1526].w[79]" 0.79607844352722168;
	setAttr -s 2 ".wl[1527].w";
	setAttr ".wl[1527].w[2]" 0.25882351398468018;
	setAttr ".wl[1527].w[79]" 0.74117648601531982;
	setAttr ".wl[1528].w[79]"  1;
	setAttr ".wl[1529].w[79]"  1;
	setAttr ".wl[1530].w[79]"  1;
	setAttr ".wl[1531].w[79]"  1;
	setAttr -s 5 ".wl[1532].w";
	setAttr ".wl[1532].w[0]" 0.021568626165390008;
	setAttr ".wl[1532].w[1]" 0.021568626165390018;
	setAttr ".wl[1532].w[2]" 0.021568626165390018;
	setAttr ".wl[1532].w[3]" 0.021568626165390018;
	setAttr ".wl[1532].w[79]" 0.91372549533843994;
	setAttr -s 5 ".wl[1533].w";
	setAttr ".wl[1533].w[0]" 0.0088235288858413644;
	setAttr ".wl[1533].w[1]" 0.0088235288858413766;
	setAttr ".wl[1533].w[2]" 0.0088235288858413714;
	setAttr ".wl[1533].w[3]" 0.0088235288858413714;
	setAttr ".wl[1533].w[79]" 0.96470588445663452;
	setAttr -s 5 ".wl[1534].w";
	setAttr ".wl[1534].w[0]" 0.0098039209842681885;
	setAttr ".wl[1534].w[1]" 0.0098039209842681885;
	setAttr ".wl[1534].w[2]" 0.0098039209842681885;
	setAttr ".wl[1534].w[3]" 0.0098039209842681885;
	setAttr ".wl[1534].w[79]" 0.96078431606292725;
	setAttr -s 2 ".wl[1535].w";
	setAttr ".wl[1535].w[2]" 0.18431371450424194;
	setAttr ".wl[1535].w[79]" 0.81568628549575806;
	setAttr ".wl[1536].w[79]"  1;
	setAttr -s 5 ".wl[1537].w";
	setAttr ".wl[1537].w[0]" 0.0049019604921340942;
	setAttr ".wl[1537].w[1]" 0.0049019604921340942;
	setAttr ".wl[1537].w[2]" 0.0049019604921340942;
	setAttr ".wl[1537].w[3]" 0.0049019604921340942;
	setAttr ".wl[1537].w[79]" 0.98039215803146362;
	setAttr ".wl[1538].w[79]"  1;
	setAttr ".wl[1539].w[79]"  1;
	setAttr ".wl[1540].w[79]"  1;
	setAttr ".wl[1541].w[79]"  1;
	setAttr ".wl[1542].w[79]"  1;
	setAttr ".wl[1543].w[79]"  1;
	setAttr -s 5 ".wl[1544].w";
	setAttr ".wl[1544].w[0]" 0.067647054791450514;
	setAttr ".wl[1544].w[1]" 0.067647054791450487;
	setAttr ".wl[1544].w[2]" 0.067647054791450487;
	setAttr ".wl[1544].w[3]" 0.067647054791450487;
	setAttr ".wl[1544].w[79]" 0.729411780834198;
	setAttr ".wl[1545].w[79]"  1;
	setAttr -s 5 ".wl[1546].w";
	setAttr ".wl[1546].w[0]" 0.024509802460670478;
	setAttr ".wl[1546].w[1]" 0.024509802460670468;
	setAttr ".wl[1546].w[2]" 0.024509802460670468;
	setAttr ".wl[1546].w[3]" 0.024509802460670468;
	setAttr ".wl[1546].w[79]" 0.90196079015731812;
	setAttr ".wl[1547].w[79]"  1;
	setAttr -s 5 ".wl[1548].w";
	setAttr ".wl[1548].w[0]" 0.023529410362243652;
	setAttr ".wl[1548].w[1]" 0.023529410362243652;
	setAttr ".wl[1548].w[2]" 0.023529410362243652;
	setAttr ".wl[1548].w[3]" 0.023529410362243652;
	setAttr ".wl[1548].w[79]" 0.90588235855102539;
	setAttr -s 5 ".wl[1549].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1550].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1551].w";
	setAttr ".wl[1551].w[0]" 0.043137252330780029;
	setAttr ".wl[1551].w[1]" 0.043137252330780029;
	setAttr ".wl[1551].w[2]" 0.043137252330780029;
	setAttr ".wl[1551].w[3]" 0.043137252330780029;
	setAttr ".wl[1551].w[79]" 0.82745099067687988;
	setAttr ".wl[1552].w[79]"  1;
	setAttr -s 4 ".wl[1553].w";
	setAttr ".wl[1553].w[0]" 0.041666666666666657;
	setAttr ".wl[1553].w[1]" 0.041666666666666657;
	setAttr ".wl[1553].w[2]" 0.041666666666666657;
	setAttr ".wl[1553].w[76]" 0.875;
	setAttr -s 4 ".wl[1554].w";
	setAttr ".wl[1554].w[0]" 0.041666666666666664;
	setAttr ".wl[1554].w[1]" 0.041666666666666664;
	setAttr ".wl[1554].w[2]" 0.041666666666666664;
	setAttr ".wl[1554].w[76]" 0.875;
	setAttr -s 5 ".wl[1555].w";
	setAttr ".wl[1555].w[0]" 0.020197289237248475;
	setAttr ".wl[1555].w[1]" 0.020197289237248475;
	setAttr ".wl[1555].w[2]" 0.082171190614825293;
	setAttr ".wl[1555].w[76]" 0.024702066534343928;
	setAttr ".wl[1555].w[77]" 0.85273216437633392;
	setAttr -s 5 ".wl[1556].w";
	setAttr ".wl[1556].w[0]" 0.029082628513986398;
	setAttr ".wl[1556].w[1]" 0.029082628513986398;
	setAttr ".wl[1556].w[2]" 0.058282687088772551;
	setAttr ".wl[1556].w[76]" 0.054213964179385239;
	setAttr ".wl[1556].w[77]" 0.82933809170386941;
	setAttr -s 4 ".wl[1557].w";
	setAttr ".wl[1557].w[0]" 0.041666666666666664;
	setAttr ".wl[1557].w[1]" 0.041666666666666664;
	setAttr ".wl[1557].w[2]" 0.041666666666666664;
	setAttr ".wl[1557].w[76]" 0.87500000000000011;
	setAttr -s 5 ".wl[1558].w";
	setAttr ".wl[1558].w[0]" 0.050956369974245457;
	setAttr ".wl[1558].w[1]" 0.050956369974245457;
	setAttr ".wl[1558].w[2]" 0.065476557935908841;
	setAttr ".wl[1558].w[76]" 0.18969660348187223;
	setAttr ".wl[1558].w[77]" 0.64291409863372795;
	setAttr -s 5 ".wl[1559].w";
	setAttr ".wl[1559].w[0]" 0.015829970379404097;
	setAttr ".wl[1559].w[1]" 0.015829970379404097;
	setAttr ".wl[1559].w[2]" 0.12363260938706236;
	setAttr ".wl[1559].w[76]" 0.043299505640395849;
	setAttr ".wl[1559].w[77]" 0.80140794421373351;
	setAttr -s 4 ".wl[1560].w";
	setAttr ".wl[1560].w[0]" 0.041666666666666664;
	setAttr ".wl[1560].w[1]" 0.041666666666666664;
	setAttr ".wl[1560].w[2]" 0.041666666666666664;
	setAttr ".wl[1560].w[76]" 0.875;
	setAttr ".wl[1561].w[37]"  1;
	setAttr -s 4 ".wl[1562].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1563].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1564].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 5 ".wl[1565].w";
	setAttr ".wl[1565].w[0]" 0.022329077272010788;
	setAttr ".wl[1565].w[1]" 0.022329077272010788;
	setAttr ".wl[1565].w[2]" 0.081089992517994328;
	setAttr ".wl[1565].w[76]" 0.1475633764858397;
	setAttr ".wl[1565].w[77]" 0.72668847645214441;
	setAttr ".wl[1566].w[76]"  1;
	setAttr ".wl[1567].w[76]"  1;
	setAttr ".wl[1568].w[77]"  1;
	setAttr ".wl[1569].w[77]"  1;
	setAttr ".wl[1570].w[76]"  1;
	setAttr -s 21 ".wl[1571].w";
	setAttr ".wl[1571].w[0]" 0.04761904761904763;
	setAttr ".wl[1571].w[1]" 0.04761904761904763;
	setAttr ".wl[1571].w[2]" 0.04761904761904763;
	setAttr ".wl[1571].w[3]" 0.04761904761904763;
	setAttr ".wl[1571].w[4]" 0.04761904761904763;
	setAttr ".wl[1571].w[23]" 0.04761904761904763;
	setAttr ".wl[1571].w[32]" 0.04761904761904763;
	setAttr ".wl[1571].w[33]" 0.04761904761904763;
	setAttr ".wl[1571].w[34]" 0.04761904761904763;
	setAttr ".wl[1571].w[35]" 0.04761904761904763;
	setAttr ".wl[1571].w[36]" 0.04761904761904763;
	setAttr ".wl[1571].w[37]" 0.04761904761904763;
	setAttr ".wl[1571].w[38]" 0.04761904761904763;
	setAttr ".wl[1571].w[39]" 0.04761904761904763;
	setAttr ".wl[1571].w[48]" 0.04761904761904763;
	setAttr ".wl[1571].w[58]" 0.04761904761904763;
	setAttr ".wl[1571].w[63]" 0.04761904761904763;
	setAttr ".wl[1571].w[66]" 0.04761904761904763;
	setAttr ".wl[1571].w[77]" 0.04761904761904763;
	setAttr ".wl[1571].w[78]" 0.04761904761904763;
	setAttr ".wl[1571].w[79]" 0.04761904761904763;
	setAttr ".wl[1572].w[77]"  1;
	setAttr ".wl[1573].w[76]"  1;
	setAttr ".wl[1574].w[77]"  1;
	setAttr -s 4 ".wl[1575].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1576].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 5 ".wl[1577].w";
	setAttr ".wl[1577].w[0]" 0.090334332826108601;
	setAttr ".wl[1577].w[1]" 0.090334332826108601;
	setAttr ".wl[1577].w[2]" 0.12518222432936779;
	setAttr ".wl[1577].w[76]" 0.14040170289917039;
	setAttr ".wl[1577].w[77]" 0.55374740711924464;
	setAttr -s 5 ".wl[1578].w";
	setAttr ".wl[1578].w[0]" 0.069081439759240665;
	setAttr ".wl[1578].w[1]" 0.069081439759240665;
	setAttr ".wl[1578].w[2]" 0.13695795793498214;
	setAttr ".wl[1578].w[76]" 0.097361599320507822;
	setAttr ".wl[1578].w[77]" 0.6275175632260287;
	setAttr -s 5 ".wl[1579].w";
	setAttr ".wl[1579].w[0]" 0.053304096355094123;
	setAttr ".wl[1579].w[1]" 0.053304096355094123;
	setAttr ".wl[1579].w[2]" 0.20641446468707147;
	setAttr ".wl[1579].w[76]" 0.068402612862255893;
	setAttr ".wl[1579].w[77]" 0.61857472974048433;
	setAttr -s 5 ".wl[1580].w";
	setAttr ".wl[1580].w[0]" 0.033110675531510855;
	setAttr ".wl[1580].w[1]" 0.033110675531510855;
	setAttr ".wl[1580].w[2]" 0.39216650280536203;
	setAttr ".wl[1580].w[76]" 0.048517874550772389;
	setAttr ".wl[1580].w[77]" 0.49309427158084385;
	setAttr -s 4 ".wl[1581].w";
	setAttr ".wl[1581].w[0]" 0.14135790406331708;
	setAttr ".wl[1581].w[1]" 0.14135790406331708;
	setAttr ".wl[1581].w[2]" 0.53333124170252821;
	setAttr ".wl[1581].w[76]" 0.18395295017083771;
	setAttr -s 4 ".wl[1582].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1583].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[1584].w[2]"  1;
	setAttr ".wl[1585].w[37]"  1;
	setAttr ".wl[1586].w[3]"  1;
	setAttr ".wl[1587].w[3]"  1;
	setAttr ".wl[1588].w[3]"  1;
	setAttr ".wl[1589].w[2]"  1;
	setAttr ".wl[1590].w[3]"  1;
	setAttr ".wl[1591].w[3]"  1;
	setAttr ".wl[1592].w[2]"  1;
	setAttr ".wl[1593].w[2]"  1;
	setAttr ".wl[1594].w[37]"  1;
	setAttr ".wl[1595].w[37]"  1;
	setAttr ".wl[1596].w[3]"  1;
	setAttr ".wl[1597].w[3]"  1;
	setAttr ".wl[1598].w[3]"  1;
	setAttr ".wl[1599].w[2]"  1;
	setAttr ".wl[1600].w[3]"  1;
	setAttr ".wl[1601].w[3]"  1;
	setAttr ".wl[1602].w[2]"  1;
	setAttr ".wl[1603].w[37]"  1;
	setAttr ".wl[1604].w[2]"  1;
	setAttr ".wl[1605].w[2]"  1;
	setAttr ".wl[1606].w[3]"  1;
	setAttr ".wl[1607].w[3]"  1;
	setAttr ".wl[1608].w[3]"  1;
	setAttr ".wl[1609].w[3]"  1;
	setAttr ".wl[1610].w[3]"  1;
	setAttr ".wl[1611].w[3]"  1;
	setAttr ".wl[1612].w[3]"  1;
	setAttr ".wl[1613].w[2]"  1;
	setAttr ".wl[1614].w[37]"  1;
	setAttr ".wl[1615].w[37]"  1;
	setAttr ".wl[1616].w[37]"  1;
	setAttr ".wl[1617].w[2]"  1;
	setAttr ".wl[1618].w[3]"  1;
	setAttr ".wl[1619].w[3]"  1;
	setAttr ".wl[1620].w[3]"  1;
	setAttr ".wl[1621].w[2]"  1;
	setAttr ".wl[1622].w[2]"  1;
	setAttr ".wl[1623].w[2]"  1;
	setAttr ".wl[1624].w[37]"  1;
	setAttr ".wl[1625].w[2]"  1;
	setAttr ".wl[1626].w[2]"  1;
	setAttr ".wl[1627].w[2]"  1;
	setAttr ".wl[1628].w[3]"  1;
	setAttr ".wl[1629].w[3]"  1;
	setAttr ".wl[1630].w[3]"  1;
	setAttr ".wl[1631].w[3]"  1;
	setAttr ".wl[1632].w[3]"  1;
	setAttr ".wl[1633].w[2]"  1;
	setAttr ".wl[1634].w[2]"  1;
	setAttr ".wl[1635].w[2]"  1;
	setAttr ".wl[1636].w[2]"  1;
	setAttr ".wl[1637].w[3]"  1;
	setAttr ".wl[1638].w[3]"  1;
	setAttr ".wl[1639].w[3]"  1;
	setAttr ".wl[1640].w[3]"  1;
	setAttr ".wl[1641].w[3]"  1;
	setAttr ".wl[1642].w[3]"  1;
	setAttr ".wl[1643].w[3]"  1;
	setAttr ".wl[1644].w[3]"  1;
	setAttr ".wl[1645].w[34]"  1;
	setAttr ".wl[1646].w[34]"  1;
	setAttr ".wl[1647].w[34]"  1;
	setAttr ".wl[1648].w[34]"  1;
	setAttr ".wl[1649].w[2]"  1;
	setAttr ".wl[1650].w[2]"  1;
	setAttr ".wl[1651].w[2]"  1;
	setAttr ".wl[1652].w[2]"  1;
	setAttr ".wl[1653].w[2]"  1;
	setAttr ".wl[1654].w[2]"  1;
	setAttr ".wl[1655].w[2]"  1;
	setAttr ".wl[1656].w[35]"  1;
	setAttr ".wl[1657].w[35]"  1;
	setAttr ".wl[1658].w[35]"  1;
	setAttr ".wl[1659].w[35]"  1;
	setAttr ".wl[1660].w[3]"  1;
	setAttr ".wl[1661].w[3]"  1;
	setAttr ".wl[1662].w[3]"  1;
	setAttr ".wl[1663].w[3]"  1;
	setAttr ".wl[1664].w[3]"  1;
	setAttr ".wl[1665].w[3]"  1;
	setAttr ".wl[1666].w[3]"  1;
	setAttr ".wl[1667].w[2]"  1;
	setAttr -s 4 ".wl[1668].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1669].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1670].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1671].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1672].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 5 ".wl[1673].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1674].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1675].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1676].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1677].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1678].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1679].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1680].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1681].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1682].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1683].w[2]"  1;
	setAttr -s 4 ".wl[1684].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[1685].w[32]"  1;
	setAttr ".wl[1686].w[32]"  1;
	setAttr ".wl[1687].w[32]"  1;
	setAttr ".wl[1688].w[32]"  1;
	setAttr ".wl[1689].w[32]"  1;
	setAttr ".wl[1690].w[32]"  1;
	setAttr ".wl[1691].w[32]"  1;
	setAttr ".wl[1692].w[32]"  1;
	setAttr ".wl[1693].w[32]"  1;
	setAttr ".wl[1694].w[3]"  1;
	setAttr ".wl[1695].w[3]"  1;
	setAttr ".wl[1696].w[3]"  1;
	setAttr ".wl[1697].w[3]"  1;
	setAttr ".wl[1698].w[3]"  1;
	setAttr ".wl[1699].w[32]"  1;
	setAttr ".wl[1700].w[32]"  1;
	setAttr ".wl[1701].w[32]"  1;
	setAttr ".wl[1702].w[32]"  1;
	setAttr ".wl[1703].w[32]"  1;
	setAttr ".wl[1704].w[32]"  1;
	setAttr ".wl[1705].w[32]"  1;
	setAttr ".wl[1706].w[1]"  1;
	setAttr ".wl[1707].w[1]"  1;
	setAttr ".wl[1708].w[1]"  1;
	setAttr ".wl[1709].w[1]"  1;
	setAttr ".wl[1710].w[1]"  1;
	setAttr ".wl[1711].w[1]"  1;
	setAttr ".wl[1712].w[1]"  1;
	setAttr ".wl[1713].w[1]"  1;
	setAttr ".wl[1714].w[32]"  1;
	setAttr ".wl[1715].w[3]"  1;
	setAttr ".wl[1716].w[3]"  1;
	setAttr ".wl[1717].w[1]"  1;
	setAttr ".wl[1718].w[3]"  1;
	setAttr ".wl[1719].w[3]"  1;
	setAttr ".wl[1720].w[3]"  1;
	setAttr ".wl[1721].w[1]"  1;
	setAttr ".wl[1722].w[76]"  1;
	setAttr -s 4 ".wl[1723].w";
	setAttr ".wl[1723].w[0]" 0.041666666666666664;
	setAttr ".wl[1723].w[1]" 0.041666666666666664;
	setAttr ".wl[1723].w[2]" 0.041666666666666664;
	setAttr ".wl[1723].w[76]" 0.875;
	setAttr -s 4 ".wl[1724].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1725].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1726].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1727].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[1728].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 5 ".wl[1729].w[0:4]"  0.14080867640091807 0.14080867640091807 
		0.43676529439632766 0.14080867640091807 0.14080867640091807;
	setAttr -s 5 ".wl[1730].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1731].w[2]"  1;
	setAttr ".wl[1732].w[2]"  1;
	setAttr -s 5 ".wl[1733].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1734].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1735].w[0:4]"  0.1845738593675188 0.1845738593675188 
		0.2617045625299248 0.1845738593675188 0.1845738593675188;
	setAttr ".wl[1736].w[2]"  1;
	setAttr -s 2 ".wl[1737].w";
	setAttr ".wl[1737].w[2]" 0.90994036331861672;
	setAttr ".wl[1737].w[35]" 0.090059636681383295;
	setAttr ".wl[1738].w[2]"  1;
	setAttr -s 2 ".wl[1739].w";
	setAttr ".wl[1739].w[2]" 0.0043929922456786572;
	setAttr ".wl[1739].w[35]" 0.99560700775432132;
	setAttr -s 2 ".wl[1740].w";
	setAttr ".wl[1740].w[2]" 0.0027676451656052669;
	setAttr ".wl[1740].w[35]" 0.99723235483439476;
	setAttr ".wl[1741].w[2]"  1;
	setAttr ".wl[1742].w[2]"  1;
	setAttr ".wl[1743].w[2]"  1;
	setAttr -s 2 ".wl[1744].w";
	setAttr ".wl[1744].w[2]" 0.96761501433802743;
	setAttr ".wl[1744].w[35]" 0.032384985661972565;
	setAttr ".wl[1745].w[34]"  1;
	setAttr ".wl[1746].w[34]"  1;
	setAttr ".wl[1747].w[34]"  1;
	setAttr ".wl[1748].w[34]"  1;
	setAttr -s 2 ".wl[1749].w[34:35]"  0.99987292102038039 0.00012707897961964498;
	setAttr -s 3 ".wl[1750].w";
	setAttr ".wl[1750].w[2]" 0.97165140083990575;
	setAttr ".wl[1750].w[34]" 0.028243756666728907;
	setAttr ".wl[1750].w[35]" 0.00010484249336528261;
	setAttr ".wl[1751].w[34]"  1;
	setAttr ".wl[1752].w[34]"  1;
	setAttr ".wl[1753].w[2]"  1;
	setAttr ".wl[1754].w[2]"  1;
	setAttr ".wl[1755].w[2]"  1;
	setAttr ".wl[1756].w[2]"  1;
	setAttr -s 2 ".wl[1757].w";
	setAttr ".wl[1757].w[2]" 0.99929733527824283;
	setAttr ".wl[1757].w[32]" 0.00070266472175717354;
	setAttr ".wl[1758].w[2]"  1;
	setAttr -s 3 ".wl[1759].w";
	setAttr ".wl[1759].w[2]" 0.98899185657501221;
	setAttr ".wl[1759].w[3]" 0.011008165776729584;
	setAttr ".wl[1759].w[32]" -2.2351741790771484e-08;
	setAttr -s 2 ".wl[1760].w[2:3]"  0.99399137496948242 0.0060086250305175781;
	setAttr ".wl[1761].w[2]"  1;
	setAttr ".wl[1762].w[2]"  1;
	setAttr -s 5 ".wl[1763].w[0:4]"  0.18689296137532688 0.18689296137532688 
		0.25242815449869249 0.18689296137532688 0.18689296137532688;
	setAttr -s 5 ".wl[1764].w[0:4]"  0.19145007192092436 0.19145007192092436 
		0.23419971231630263 0.19145007192092436 0.19145007192092436;
	setAttr ".wl[1765].w[2]"  1;
	setAttr ".wl[1766].w[2]"  1;
	setAttr ".wl[1767].w[2]"  1;
	setAttr ".wl[1768].w[2]"  1;
	setAttr -s 5 ".wl[1769].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1770].w[0:4]"  0.19626254039629984 0.19626254039629984 
		0.21494983841480064 0.19626254039629984 0.19626254039629984;
	setAttr -s 5 ".wl[1771].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1772].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1773].w";
	setAttr ".wl[1773].w[0]" 0.0049019604921340942;
	setAttr ".wl[1773].w[1]" 0.0049019604921340942;
	setAttr ".wl[1773].w[2]" 0.0049019604921340942;
	setAttr ".wl[1773].w[3]" 0.0049019604921340942;
	setAttr ".wl[1773].w[78]" 0.98039215803146362;
	setAttr -s 5 ".wl[1774].w";
	setAttr ".wl[1774].w[0]" 7.7863821830170821e-05;
	setAttr ".wl[1774].w[1]" 7.7863821830170821e-05;
	setAttr ".wl[1774].w[2]" 7.7863821830170821e-05;
	setAttr ".wl[1774].w[3]" 7.7863821830170821e-05;
	setAttr ".wl[1774].w[78]" 0.99968854471267932;
	setAttr ".wl[1775].w[78]"  1;
	setAttr ".wl[1776].w[78]"  1;
	setAttr -s 5 ".wl[1777].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1778].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1779].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1780].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1781].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1782].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1783].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[1784].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1785].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1786].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1787].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1788].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1789].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1790].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1791].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1792].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1793].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1794].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1795].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1796].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[1797].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1798].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1799].w[63]"  1;
	setAttr ".wl[1800].w[63]"  1;
	setAttr ".wl[1801].w[63]"  1;
	setAttr ".wl[1802].w[63]"  1;
	setAttr ".wl[1803].w[63]"  1;
	setAttr ".wl[1804].w[63]"  1;
	setAttr ".wl[1805].w[63]"  1;
	setAttr ".wl[1806].w[63]"  1;
	setAttr ".wl[1807].w[63]"  1;
	setAttr ".wl[1808].w[63]"  1;
	setAttr ".wl[1809].w[63]"  1;
	setAttr ".wl[1810].w[63]"  1;
	setAttr ".wl[1811].w[63]"  1;
	setAttr ".wl[1812].w[63]"  1;
	setAttr ".wl[1813].w[2]"  1;
	setAttr ".wl[1814].w[2]"  1;
	setAttr -s 5 ".wl[1815].w";
	setAttr ".wl[1815].w[0]" 7.201822081859266e-05;
	setAttr ".wl[1815].w[1]" 7.201822081859266e-05;
	setAttr ".wl[1815].w[2]" 7.201822081859266e-05;
	setAttr ".wl[1815].w[3]" 7.201822081859266e-05;
	setAttr ".wl[1815].w[78]" 0.99971192711672563;
	setAttr -s 5 ".wl[1816].w";
	setAttr ".wl[1816].w[0]" 0.0002421633031726711;
	setAttr ".wl[1816].w[1]" 0.0002421633031726711;
	setAttr ".wl[1816].w[2]" 0.0002421633031726711;
	setAttr ".wl[1816].w[3]" 0.0002421633031726711;
	setAttr ".wl[1816].w[78]" 0.99903134678730932;
	setAttr -s 5 ".wl[1817].w[0:4]"  0.17597278277160569 0.17597278277160569 
		0.29610886891357735 0.17597278277160569 0.17597278277160569;
	setAttr -s 5 ".wl[1818].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1819].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[1820].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1821].w[2]"  1;
	setAttr ".wl[1822].w[2]"  1;
	setAttr ".wl[1823].w[2]"  1;
	setAttr ".wl[1824].w[2]"  1;
	setAttr -s 2 ".wl[1825].w";
	setAttr ".wl[1825].w[2]" 0.99936322868819194;
	setAttr ".wl[1825].w[63]" 0.0006367713118080599;
	setAttr ".wl[1826].w[2]"  1;
	setAttr ".wl[1827].w[2]"  1;
	setAttr -s 5 ".wl[1828].w[0:4]"  0.18811880809913722 0.18811880809913722 
		0.24752476760345116 0.18811880809913722 0.18811880809913722;
	setAttr -s 2 ".wl[1829].w";
	setAttr ".wl[1829].w[2]" 7.8805722296237946e-05;
	setAttr ".wl[1829].w[63]" 0.99992119427770376;
	setAttr -s 5 ".wl[1830].w";
	setAttr ".wl[1830].w[0]" 0.19935700472282378;
	setAttr ".wl[1830].w[1]" 0.19935700472282378;
	setAttr ".wl[1830].w[2]" 0.19935700472282378;
	setAttr ".wl[1830].w[3]" 0.19935700472282378;
	setAttr ".wl[1830].w[63]" 0.20257198110870486;
	setAttr -s 5 ".wl[1831].w";
	setAttr ".wl[1831].w[0]" 0.19663854419755564;
	setAttr ".wl[1831].w[1]" 0.19663854419755564;
	setAttr ".wl[1831].w[2]" 0.21097032616406056;
	setAttr ".wl[1831].w[3]" 0.19663854419755564;
	setAttr ".wl[1831].w[63]" 0.19911404124327256;
	setAttr ".wl[1832].w[63]"  1;
	setAttr ".wl[1833].w[63]"  1;
	setAttr ".wl[1834].w[63]"  1;
	setAttr ".wl[1835].w[63]"  1;
	setAttr -s 2 ".wl[1836].w";
	setAttr ".wl[1836].w[2]" 0.999299192493314;
	setAttr ".wl[1836].w[63]" 0.00070080750668606996;
	setAttr ".wl[1837].w[63]"  1;
	setAttr -s 5 ".wl[1838].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[1839].w[0:4]"  0.19981446301540431 0.19981446301540431 
		0.2007421479383828 0.19981446301540431 0.19981446301540431;
	setAttr -s 5 ".wl[1840].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1841].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1842].w[38]"  1;
	setAttr ".wl[1843].w[38]"  1;
	setAttr -s 5 ".wl[1844].w";
	setAttr ".wl[1844].w[0]" 0.0014458839862262637;
	setAttr ".wl[1844].w[1]" 0.0014458839862262637;
	setAttr ".wl[1844].w[2]" 0.0014458839862262637;
	setAttr ".wl[1844].w[3]" 0.0014458839862262637;
	setAttr ".wl[1844].w[78]" 0.99421646405509512;
	setAttr -s 5 ".wl[1845].w";
	setAttr ".wl[1845].w[0]" 7.916548097761271e-05;
	setAttr ".wl[1845].w[1]" 7.916548097761271e-05;
	setAttr ".wl[1845].w[2]" 7.916548097761271e-05;
	setAttr ".wl[1845].w[3]" 7.916548097761271e-05;
	setAttr ".wl[1845].w[78]" 0.99968333807608956;
	setAttr -s 5 ".wl[1846].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1847].w";
	setAttr ".wl[1847].w[0]" 0.00060254189659324448;
	setAttr ".wl[1847].w[1]" 0.00060254189659324448;
	setAttr ".wl[1847].w[2]" 0.00060254189659324448;
	setAttr ".wl[1847].w[3]" 0.00060254189659324448;
	setAttr ".wl[1847].w[78]" 0.99758983241362709;
	setAttr -s 5 ".wl[1848].w";
	setAttr ".wl[1848].w[0]" 0.041574343426069769;
	setAttr ".wl[1848].w[1]" 0.041574343426069769;
	setAttr ".wl[1848].w[2]" 0.041574343426069769;
	setAttr ".wl[1848].w[3]" 0.041574343426069769;
	setAttr ".wl[1848].w[78]" 0.83370262629572112;
	setAttr -s 5 ".wl[1849].w";
	setAttr ".wl[1849].w[0]" 0.010542717595462606;
	setAttr ".wl[1849].w[1]" 0.010542717595462606;
	setAttr ".wl[1849].w[2]" 0.010542717595462606;
	setAttr ".wl[1849].w[3]" 0.010542717595462606;
	setAttr ".wl[1849].w[78]" 0.95782912961814959;
	setAttr -s 2 ".wl[1850].w";
	setAttr ".wl[1850].w[2]" 0.99729033774093978;
	setAttr ".wl[1850].w[48]" 0.002709662259060277;
	setAttr -s 5 ".wl[1851].w[0:4]"  0.1987380761236667 0.1987380761236667 
		0.20504769550533325 0.1987380761236667 0.1987380761236667;
	setAttr -s 5 ".wl[1852].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 2 ".wl[1853].w";
	setAttr ".wl[1853].w[2]" 0.99484024671654714;
	setAttr ".wl[1853].w[63]" 0.0051597532834528831;
	setAttr ".wl[1854].w[63]"  1;
	setAttr ".wl[1855].w[48]"  1;
	setAttr ".wl[1856].w[2]"  1;
	setAttr ".wl[1857].w[2]"  1;
	setAttr -s 2 ".wl[1858].w[2:3]"  0.99715595785528421 0.002844042144715786;
	setAttr -s 2 ".wl[1859].w[2:3]"  0.9895996635705171 0.010400336429483006;
	setAttr ".wl[1860].w[37]"  1;
	setAttr -s 3 ".wl[1861].w";
	setAttr ".wl[1861].w[2]" 0.0019989682035975865;
	setAttr ".wl[1861].w[37]" 0.015768431820069852;
	setAttr ".wl[1861].w[48]" 0.98223259997633261;
	setAttr -s 2 ".wl[1862].w";
	setAttr ".wl[1862].w[37]" 5.7808532954830373e-05;
	setAttr ".wl[1862].w[48]" 0.99994219146704522;
	setAttr -s 3 ".wl[1863].w";
	setAttr ".wl[1863].w[2]" 0.00039122673421269211;
	setAttr ".wl[1863].w[37]" 0.023185290534685796;
	setAttr ".wl[1863].w[48]" 0.97642348273110158;
	setAttr -s 2 ".wl[1864].w";
	setAttr ".wl[1864].w[3]" 0.99748499528446355;
	setAttr ".wl[1864].w[48]" 0.0025150047155364894;
	setAttr ".wl[1865].w[3]"  1;
	setAttr -s 2 ".wl[1866].w";
	setAttr ".wl[1866].w[2]" 0.0062176225161651409;
	setAttr ".wl[1866].w[48]" 0.99378237748383502;
	setAttr ".wl[1867].w[37]"  1;
	setAttr -s 2 ".wl[1868].w";
	setAttr ".wl[1868].w[2]" 0.99118522729889957;
	setAttr ".wl[1868].w[37]" 0.008814772701100473;
	setAttr ".wl[1869].w[3]"  1;
	setAttr -s 2 ".wl[1870].w";
	setAttr ".wl[1870].w[2]" 0.015567243099212646;
	setAttr ".wl[1870].w[48]" 0.98443275690078735;
	setAttr ".wl[1871].w[3]"  1;
	setAttr ".wl[1872].w[3]"  1;
	setAttr ".wl[1873].w[3]"  1;
	setAttr -s 2 ".wl[1874].w";
	setAttr ".wl[1874].w[3]" 0.99853271804749966;
	setAttr ".wl[1874].w[32]" 0.0014672819525003433;
	setAttr ".wl[1875].w[3]"  1;
	setAttr ".wl[1876].w[3]"  1;
	setAttr ".wl[1877].w[3]"  1;
	setAttr ".wl[1878].w[3]"  1;
	setAttr ".wl[1879].w[3]"  1;
	setAttr ".wl[1880].w[3]"  1;
	setAttr ".wl[1881].w[3]"  1;
	setAttr ".wl[1882].w[3]"  1;
	setAttr ".wl[1883].w[3]"  1;
	setAttr ".wl[1884].w[3]"  1;
	setAttr ".wl[1885].w[3]"  1;
	setAttr ".wl[1886].w[3]"  1;
	setAttr ".wl[1887].w[3]"  1;
	setAttr ".wl[1888].w[3]"  1;
	setAttr ".wl[1889].w[3]"  1;
	setAttr ".wl[1890].w[3]"  1;
	setAttr ".wl[1891].w[38]"  1;
	setAttr -s 5 ".wl[1892].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1893].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1894].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1895].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1896].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1897].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[1898].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[1899].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1900].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1901].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1902].w[0:4]"  0.19952571411854911 0.19952571411854911 
		0.20189714352580357 0.19952571411854911 0.19952571411854911;
	setAttr -s 2 ".wl[1903].w";
	setAttr ".wl[1903].w[2]" 0.994982551317662;
	setAttr ".wl[1903].w[63]" 0.0050174486823379993;
	setAttr ".wl[1904].w[63]"  1;
	setAttr ".wl[1905].w[63]"  1;
	setAttr ".wl[1906].w[63]"  1;
	setAttr ".wl[1907].w[63]"  1;
	setAttr ".wl[1908].w[63]"  1;
	setAttr ".wl[1909].w[3]"  1;
	setAttr ".wl[1910].w[63]"  1;
	setAttr ".wl[1911].w[63]"  1;
	setAttr ".wl[1912].w[48]"  1;
	setAttr -s 2 ".wl[1913].w";
	setAttr ".wl[1913].w[2]" 0.025766670720992303;
	setAttr ".wl[1913].w[48]" 0.97423332927900774;
	setAttr ".wl[1914].w[63]"  1;
	setAttr -s 2 ".wl[1915].w";
	setAttr ".wl[1915].w[48]" 0.99971855370694274;
	setAttr ".wl[1915].w[63]" 0.00028144629305722272;
	setAttr ".wl[1916].w[35]"  1;
	setAttr ".wl[1917].w[35]"  1;
	setAttr -s 2 ".wl[1918].w";
	setAttr ".wl[1918].w[2]" 0.9998073936874885;
	setAttr ".wl[1918].w[35]" 0.00019260631251155754;
	setAttr -s 2 ".wl[1919].w";
	setAttr ".wl[1919].w[2]" 0.96756440393366172;
	setAttr ".wl[1919].w[35]" 0.032435596066338251;
	setAttr ".wl[1920].w[2]"  1;
	setAttr ".wl[1921].w[2]"  1;
	setAttr ".wl[1922].w[2]"  1;
	setAttr ".wl[1923].w[2]"  1;
	setAttr ".wl[1924].w[3]"  1;
	setAttr -s 2 ".wl[1925].w[2:3]"  0.99756151435488394 0.0024384856451161734;
	setAttr ".wl[1926].w[3]"  1;
	setAttr ".wl[1927].w[3]"  1;
	setAttr ".wl[1928].w[3]"  1;
	setAttr ".wl[1929].w[3]"  1;
	setAttr ".wl[1930].w[3]"  1;
	setAttr ".wl[1931].w[3]"  1;
	setAttr ".wl[1932].w[3]"  1;
	setAttr ".wl[1933].w[37]"  1;
	setAttr -s 2 ".wl[1934].w";
	setAttr ".wl[1934].w[2]" 0.00055995675956879362;
	setAttr ".wl[1934].w[37]" 0.99944004324043134;
	setAttr -s 2 ".wl[1935].w";
	setAttr ".wl[1935].w[2]" 0.96592883123817852;
	setAttr ".wl[1935].w[37]" 0.034071168761821508;
	setAttr ".wl[1936].w[3]"  1;
	setAttr ".wl[1937].w[3]"  1;
	setAttr ".wl[1938].w[2]"  1;
	setAttr -s 2 ".wl[1939].w[2:3]"  0.0051848955591189327 0.99481510444088106;
	setAttr ".wl[1940].w[3]"  1;
	setAttr ".wl[1941].w[2]"  1;
	setAttr -s 2 ".wl[1942].w[37:38]"  0.99661405402699332 0.0033859459730066566;
	setAttr -s 2 ".wl[1943].w[37:38]"  0.99441791460567186 0.005582085394328285;
	setAttr -s 2 ".wl[1944].w";
	setAttr ".wl[1944].w[2]" 0.94692588205235406;
	setAttr ".wl[1944].w[37]" 0.053074117947645924;
	setAttr ".wl[1945].w[63]"  1;
	setAttr ".wl[1946].w[38]"  1;
	setAttr ".wl[1947].w[38]"  1;
	setAttr ".wl[1948].w[38]"  1;
	setAttr ".wl[1949].w[37]"  1;
	setAttr ".wl[1950].w[37]"  1;
	setAttr -s 2 ".wl[1951].w[37:38]"  0.018986625058455334 0.98101337494154461;
	setAttr -s 2 ".wl[1952].w[37:38]"  0.02240886671623632 0.97759113328376368;
	setAttr ".wl[1953].w[38]"  1;
	setAttr -s 2 ".wl[1954].w[37:38]"  0.94790794937072564 0.052092050629274377;
	setAttr -s 2 ".wl[1955].w";
	setAttr ".wl[1955].w[37]" 0.081331907126358557;
	setAttr ".wl[1955].w[63]" 0.9186680928736416;
	setAttr ".wl[1956].w[63]"  1;
	setAttr ".wl[1957].w[63]"  1;
	setAttr ".wl[1958].w[63]"  1;
	setAttr ".wl[1959].w[63]"  1;
	setAttr ".wl[1960].w[63]"  1;
	setAttr ".wl[1961].w[63]"  1;
	setAttr -s 2 ".wl[1962].w";
	setAttr ".wl[1962].w[38]" 0.016299719082003752;
	setAttr ".wl[1962].w[63]" 0.98370028091799622;
	setAttr ".wl[1963].w[63]"  1;
	setAttr ".wl[1964].w[63]"  1;
	setAttr ".wl[1965].w[63]"  1;
	setAttr ".wl[1966].w[63]"  1;
	setAttr -s 2 ".wl[1967].w";
	setAttr ".wl[1967].w[2]" 2.6077032089233398e-08;
	setAttr ".wl[1967].w[63]" 0.99999997392296791;
	setAttr ".wl[1968].w[63]"  1;
	setAttr ".wl[1969].w[63]"  1;
	setAttr ".wl[1970].w[38]"  1;
	setAttr -s 2 ".wl[1971].w[37:38]"  0.97873862500766706 0.021261374992332938;
	setAttr -s 2 ".wl[1972].w[37:38]"  0.0065525901328209275 0.99344740986717905;
	setAttr ".wl[1973].w[37]"  1;
	setAttr -s 5 ".wl[1974].w[0:4]"  0.19867807409070745 0.19867807409070745 
		0.20528770363717022 0.19867807409070745 0.19867807409070745;
	setAttr -s 5 ".wl[1975].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1976].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1977].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1978].w[0:4]"  0.19821128555941417 0.19821128555941417 
		0.20715485776234338 0.19821128555941417 0.19821128555941417;
	setAttr -s 5 ".wl[1979].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[1980].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1981].w[2]"  1;
	setAttr -s 2 ".wl[1982].w";
	setAttr ".wl[1982].w[2]" 0.73254862584991254;
	setAttr ".wl[1982].w[78]" 0.26745137415008746;
	setAttr -s 5 ".wl[1983].w";
	setAttr ".wl[1983].w[0]" 0.0022067530293065026;
	setAttr ".wl[1983].w[1]" 0.0022067530293065026;
	setAttr ".wl[1983].w[2]" 0.0022067530293065026;
	setAttr ".wl[1983].w[3]" 0.0022067530293065026;
	setAttr ".wl[1983].w[78]" 0.99117298788277397;
	setAttr -s 5 ".wl[1984].w";
	setAttr ".wl[1984].w[0]" 0.0020844000468964808;
	setAttr ".wl[1984].w[1]" 0.0020844000468964808;
	setAttr ".wl[1984].w[2]" 0.0020844000468964808;
	setAttr ".wl[1984].w[3]" 0.0020844000468964808;
	setAttr ".wl[1984].w[78]" 0.99166239981241411;
	setAttr -s 5 ".wl[1985].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[1986].w";
	setAttr ".wl[1986].w[0]" 0.0024347970570088515;
	setAttr ".wl[1986].w[1]" 0.0024347970570088515;
	setAttr ".wl[1986].w[2]" 0.0025125301907966825;
	setAttr ".wl[1986].w[3]" 0.0024347970570088515;
	setAttr ".wl[1986].w[78]" 0.99018307863817678;
	setAttr -s 5 ".wl[1987].w[0:4]"  0.14464866625911921 0.14464866625911921 
		0.42140533496352317 0.14464866625911921 0.14464866625911921;
	setAttr -s 5 ".wl[1988].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[1989].w[78]"  1;
	setAttr ".wl[1990].w[78]"  1;
	setAttr -s 5 ".wl[1991].w";
	setAttr ".wl[1991].w[0]" 0.0014836248101875449;
	setAttr ".wl[1991].w[1]" 0.0014836248101875449;
	setAttr ".wl[1991].w[2]" 0.0014836248101875449;
	setAttr ".wl[1991].w[3]" 0.0014836248101875449;
	setAttr ".wl[1991].w[78]" 0.99406550075924982;
	setAttr -s 5 ".wl[1992].w";
	setAttr ".wl[1992].w[0]" 0.037384481807748157;
	setAttr ".wl[1992].w[1]" 0.037384481807748157;
	setAttr ".wl[1992].w[2]" 0.037384481807748157;
	setAttr ".wl[1992].w[3]" 0.037384481807748157;
	setAttr ".wl[1992].w[78]" 0.85046207276900743;
	setAttr -s 5 ".wl[1993].w[0:4]"  0.20000872215713114 0.20000872215713114 
		0.20000872215713114 0.20000872215713114 0.19996511137147549;
	setAttr ".wl[1994].w[78]"  1;
	setAttr -s 5 ".wl[1995].w";
	setAttr ".wl[1995].w[0]" 0.00029681349713194834;
	setAttr ".wl[1995].w[1]" 0.00029681349713194834;
	setAttr ".wl[1995].w[2]" 0.00029681349713194834;
	setAttr ".wl[1995].w[3]" 0.00029681349713194834;
	setAttr ".wl[1995].w[78]" 0.9988127460114723;
	setAttr -s 5 ".wl[1996].w";
	setAttr ".wl[1996].w[0]" 9.9669686681615213e-05;
	setAttr ".wl[1996].w[1]" 9.9669686681615213e-05;
	setAttr ".wl[1996].w[2]" 0.10188481170088912;
	setAttr ".wl[1996].w[3]" 9.9669686681615213e-05;
	setAttr ".wl[1996].w[78]" 0.89781617923906609;
	setAttr -s 5 ".wl[1997].w";
	setAttr ".wl[1997].w[0]" 0.029463348620895044;
	setAttr ".wl[1997].w[1]" 0.029463348620895044;
	setAttr ".wl[1997].w[2]" 0.029463348620895044;
	setAttr ".wl[1997].w[3]" 0.029463348620895044;
	setAttr ".wl[1997].w[78]" 0.88214660551641988;
	setAttr ".wl[1998].w[78]"  1;
	setAttr -s 5 ".wl[1999].w";
	setAttr ".wl[1999].w[0]" 0.015675096993467114;
	setAttr ".wl[1999].w[1]" 0.015675096993467114;
	setAttr ".wl[1999].w[2]" 0.015675096993467114;
	setAttr ".wl[1999].w[3]" 0.015675096993467114;
	setAttr ".wl[1999].w[78]" 0.93729961202613177;
	setAttr -s 5 ".wl[2000].w";
	setAttr ".wl[2000].w[0]" 0.002250345506333646;
	setAttr ".wl[2000].w[1]" 0.002250345506333646;
	setAttr ".wl[2000].w[2]" 0.002250345506333646;
	setAttr ".wl[2000].w[3]" 0.002250345506333646;
	setAttr ".wl[2000].w[78]" 0.99099861797466549;
	setAttr -s 5 ".wl[2001].w";
	setAttr ".wl[2001].w[0]" 0.0028245228957525141;
	setAttr ".wl[2001].w[1]" 0.0028245228957525141;
	setAttr ".wl[2001].w[2]" 0.0028245228957525141;
	setAttr ".wl[2001].w[3]" 0.0028245228957525141;
	setAttr ".wl[2001].w[78]" 0.98870190841698991;
	setAttr -s 5 ".wl[2002].w";
	setAttr ".wl[2002].w[0]" 2.1380067456846941e-05;
	setAttr ".wl[2002].w[1]" 2.1380067456846941e-05;
	setAttr ".wl[2002].w[2]" 2.1380067456846941e-05;
	setAttr ".wl[2002].w[3]" 2.1380067456846941e-05;
	setAttr ".wl[2002].w[78]" 0.99991447973017278;
	setAttr -s 5 ".wl[2003].w";
	setAttr ".wl[2003].w[0]" 0.048272416880309858;
	setAttr ".wl[2003].w[1]" 0.048272416880309858;
	setAttr ".wl[2003].w[2]" 0.048684587674824795;
	setAttr ".wl[2003].w[3]" 0.048272416880309858;
	setAttr ".wl[2003].w[78]" 0.8064981616842456;
	setAttr -s 2 ".wl[2004].w";
	setAttr ".wl[2004].w[2]" 0.21030826717530715;
	setAttr ".wl[2004].w[78]" 0.78969173282469285;
	setAttr ".wl[2005].w[78]"  1;
	setAttr -s 5 ".wl[2006].w";
	setAttr ".wl[2006].w[0]" -1.6435103278311648e-10;
	setAttr ".wl[2006].w[1]" -1.6435103278311671e-10;
	setAttr ".wl[2006].w[2]" -1.6435103278311661e-10;
	setAttr ".wl[2006].w[3]" -1.6435103278311661e-10;
	setAttr ".wl[2006].w[78]" 1.0000000006574041;
	setAttr ".wl[2007].w[78]"  1;
	setAttr -s 5 ".wl[2008].w";
	setAttr ".wl[2008].w[0]" 0.020732993755407485;
	setAttr ".wl[2008].w[1]" 0.020732993755407495;
	setAttr ".wl[2008].w[2]" 0.020732993755407495;
	setAttr ".wl[2008].w[3]" 0.020732993755407495;
	setAttr ".wl[2008].w[78]" 0.91706802497837003;
	setAttr ".wl[2009].w[78]"  1;
	setAttr -s 5 ".wl[2010].w";
	setAttr ".wl[2010].w[0]" 0.0085223215329841891;
	setAttr ".wl[2010].w[1]" 0.0085223215329842013;
	setAttr ".wl[2010].w[2]" 0.0085223215329841961;
	setAttr ".wl[2010].w[3]" 0.0085223215329841961;
	setAttr ".wl[2010].w[78]" 0.96591071386806326;
	setAttr -s 5 ".wl[2011].w";
	setAttr ".wl[2011].w[0]" 0.011954864010575916;
	setAttr ".wl[2011].w[1]" 0.011954864010575916;
	setAttr ".wl[2011].w[2]" 0.017307192255079037;
	setAttr ".wl[2011].w[3]" 0.011954864010575916;
	setAttr ".wl[2011].w[78]" 0.9468282157131932;
	setAttr -s 2 ".wl[2012].w";
	setAttr ".wl[2012].w[2]" 0.18540390950942451;
	setAttr ".wl[2012].w[78]" 0.81459609049057546;
	setAttr -s 5 ".wl[2013].w";
	setAttr ".wl[2013].w[0]" 0.065992770562326303;
	setAttr ".wl[2013].w[1]" 0.065992770562326275;
	setAttr ".wl[2013].w[2]" 0.065992770562326275;
	setAttr ".wl[2013].w[3]" 0.065992770562326275;
	setAttr ".wl[2013].w[78]" 0.7360289177506949;
	setAttr -s 5 ".wl[2014].w";
	setAttr ".wl[2014].w[0]" 0.0020297219044405593;
	setAttr ".wl[2014].w[1]" 0.0020297219044405593;
	setAttr ".wl[2014].w[2]" 0.0020297219044405593;
	setAttr ".wl[2014].w[3]" 0.0020297219044405593;
	setAttr ".wl[2014].w[78]" 0.99188111238223786;
	setAttr -s 5 ".wl[2015].w";
	setAttr ".wl[2015].w[0]" 0.022380516411358707;
	setAttr ".wl[2015].w[1]" 0.0223805164113587;
	setAttr ".wl[2015].w[2]" 0.027335956982517319;
	setAttr ".wl[2015].w[3]" 0.0223805164113587;
	setAttr ".wl[2015].w[78]" 0.90552249378340643;
	setAttr -s 5 ".wl[2016].w";
	setAttr ".wl[2016].w[0]" 0.0013393516897555935;
	setAttr ".wl[2016].w[1]" 0.001339351689755593;
	setAttr ".wl[2016].w[2]" 0.001339351689755593;
	setAttr ".wl[2016].w[3]" 0.001339351689755593;
	setAttr ".wl[2016].w[78]" 0.99464259324097781;
	setAttr -s 5 ".wl[2017].w";
	setAttr ".wl[2017].w[0]" 0.02358250231987391;
	setAttr ".wl[2017].w[1]" 0.02358250231987391;
	setAttr ".wl[2017].w[2]" 0.02358250231987391;
	setAttr ".wl[2017].w[3]" 0.02358250231987391;
	setAttr ".wl[2017].w[78]" 0.90566999072050436;
	setAttr ".wl[2018].w[63]"  1;
	setAttr ".wl[2019].w[63]"  1;
	setAttr ".wl[2020].w[48]"  1;
	setAttr -s 2 ".wl[2021].w";
	setAttr ".wl[2021].w[2]" 0.00027544829261089246;
	setAttr ".wl[2021].w[48]" 0.99972455170738905;
	setAttr ".wl[2022].w[63]"  1;
	setAttr ".wl[2023].w[48]"  1;
	setAttr -s 3 ".wl[2024].w";
	setAttr ".wl[2024].w[2]" 0.033402629192102462;
	setAttr ".wl[2024].w[48]" 0.96497404322968161;
	setAttr ".wl[2024].w[63]" 0.0016233275782159913;
	setAttr ".wl[2025].w[63]"  1;
	setAttr -s 2 ".wl[2026].w";
	setAttr ".wl[2026].w[48]" 0.98403936624526978;
	setAttr ".wl[2026].w[63]" 0.015960633754730225;
	setAttr ".wl[2027].w[63]"  1;
	setAttr ".wl[2028].w[63]"  1;
	setAttr ".wl[2029].w[63]"  1;
	setAttr ".wl[2030].w[63]"  1;
	setAttr ".wl[2031].w[63]"  1;
	setAttr ".wl[2032].w[48]"  1;
	setAttr ".wl[2033].w[48]"  1;
	setAttr ".wl[2034].w[48]"  1;
	setAttr ".wl[2035].w[48]"  1;
	setAttr ".wl[2036].w[63]"  1;
	setAttr ".wl[2037].w[63]"  1;
	setAttr -s 2 ".wl[2038].w";
	setAttr ".wl[2038].w[48]" 0.96931053854859761;
	setAttr ".wl[2038].w[63]" 0.030689461451402365;
	setAttr ".wl[2039].w[48]"  1;
	setAttr ".wl[2040].w[48]"  1;
	setAttr ".wl[2041].w[48]"  1;
	setAttr ".wl[2042].w[63]"  1;
	setAttr ".wl[2043].w[63]"  1;
	setAttr -s 2 ".wl[2044].w";
	setAttr ".wl[2044].w[48]" 0.9901487231988555;
	setAttr ".wl[2044].w[63]" 0.009851276801144504;
	setAttr ".wl[2045].w[48]"  1;
	setAttr -s 2 ".wl[2046].w";
	setAttr ".wl[2046].w[48]" 0.06320199542658525;
	setAttr ".wl[2046].w[63]" 0.93679800457341489;
	setAttr -s 2 ".wl[2047].w";
	setAttr ".wl[2047].w[48]" 0.13007435527463951;
	setAttr ".wl[2047].w[63]" 0.86992564472536049;
	setAttr -s 2 ".wl[2048].w";
	setAttr ".wl[2048].w[2]" 0.039714325219392776;
	setAttr ".wl[2048].w[37]" 0.96028567478060722;
	setAttr -s 2 ".wl[2049].w";
	setAttr ".wl[2049].w[2]" 0.96367917209863663;
	setAttr ".wl[2049].w[37]" 0.036320827901363373;
	setAttr ".wl[2050].w[3]"  1;
	setAttr ".wl[2051].w[3]"  1;
	setAttr ".wl[2052].w[2]"  1;
	setAttr ".wl[2053].w[3]"  1;
	setAttr ".wl[2054].w[3]"  1;
	setAttr ".wl[2055].w[2]"  1;
	setAttr -s 2 ".wl[2056].w";
	setAttr ".wl[2056].w[2]" 0.04105861084542229;
	setAttr ".wl[2056].w[37]" 0.95894138915457772;
	setAttr -s 2 ".wl[2057].w";
	setAttr ".wl[2057].w[2]" 0.95894668182226084;
	setAttr ".wl[2057].w[37]" 0.041053318177739107;
	setAttr ".wl[2058].w[3]"  1;
	setAttr ".wl[2059].w[3]"  1;
	setAttr -s 2 ".wl[2060].w";
	setAttr ".wl[2060].w[2]" 0.99886218401727722;
	setAttr ".wl[2060].w[37]" 0.0011378159827227766;
	setAttr ".wl[2061].w[3]"  1;
	setAttr ".wl[2062].w[3]"  1;
	setAttr ".wl[2063].w[2]"  1;
	setAttr ".wl[2064].w[37]"  1;
	setAttr -s 2 ".wl[2065].w";
	setAttr ".wl[2065].w[2]" 0.0011628871186580994;
	setAttr ".wl[2065].w[37]" 0.99883711288134192;
	setAttr -s 2 ".wl[2066].w";
	setAttr ".wl[2066].w[2]" 8.0473721027374268e-05;
	setAttr ".wl[2066].w[37]" 0.99991952627897263;
	setAttr -s 2 ".wl[2067].w";
	setAttr ".wl[2067].w[2]" 0.006259064218126888;
	setAttr ".wl[2067].w[37]" 0.99374093578187317;
	setAttr -s 2 ".wl[2068].w[2:3]"  0.99712472943880348 0.002875270561196532;
	setAttr -s 2 ".wl[2069].w[2:3]"  0.0060312108771991904 0.99396878912280084;
	setAttr -s 2 ".wl[2070].w[2:3]"  0.04237049728359335 0.95762950271640668;
	setAttr -s 2 ".wl[2071].w[2:3]"  0.98554615679999635 0.014453843200003692;
	setAttr -s 2 ".wl[2072].w";
	setAttr ".wl[2072].w[2]" 0.95095224074043572;
	setAttr ".wl[2072].w[37]" 0.049047759259564436;
	setAttr -s 3 ".wl[2073].w";
	setAttr ".wl[2073].w[2]" 0.90744655727573809;
	setAttr ".wl[2073].w[3]" 0.027874421849770192;
	setAttr ".wl[2073].w[37]" 0.064679020874491761;
	setAttr ".wl[2074].w[3]"  1;
	setAttr ".wl[2075].w[3]"  1;
	setAttr ".wl[2076].w[3]"  1;
	setAttr -s 2 ".wl[2077].w[2:3]"  0.22880780619621355 0.77119219380378645;
	setAttr -s 2 ".wl[2078].w[2:3]"  0.9451143993592116 0.05488560064078845;
	setAttr -s 2 ".wl[2079].w[2:3]"  0.12848572872170644 0.87151427127829362;
	setAttr -s 2 ".wl[2080].w";
	setAttr ".wl[2080].w[2]" 0.99969311375769998;
	setAttr ".wl[2080].w[37]" 0.00030688624230007294;
	setAttr -s 2 ".wl[2081].w";
	setAttr ".wl[2081].w[2]" 0.99962789961266829;
	setAttr ".wl[2081].w[37]" 0.00037210038733167904;
	setAttr -s 2 ".wl[2082].w[2:3]"  0.074934840202331543 0.92506515979766846;
	setAttr ".wl[2083].w[3]"  1;
	setAttr ".wl[2084].w[3]"  1;
	setAttr ".wl[2085].w[3]"  1;
	setAttr ".wl[2086].w[3]"  1;
	setAttr ".wl[2087].w[3]"  1;
	setAttr ".wl[2088].w[2]"  1;
	setAttr ".wl[2089].w[2]"  1;
	setAttr -s 2 ".wl[2090].w[2:3]"  0.99995359295067043 4.6407049329573336e-05;
	setAttr -s 2 ".wl[2091].w[2:3]"  0.97817829819471114 0.021821701805288852;
	setAttr ".wl[2092].w[3]"  1;
	setAttr ".wl[2093].w[3]"  1;
	setAttr ".wl[2094].w[3]"  1;
	setAttr ".wl[2095].w[3]"  1;
	setAttr ".wl[2096].w[3]"  1;
	setAttr ".wl[2097].w[3]"  1;
	setAttr ".wl[2098].w[35]"  1;
	setAttr ".wl[2099].w[35]"  1;
	setAttr -s 2 ".wl[2100].w";
	setAttr ".wl[2100].w[2]" 0.0078969315537035095;
	setAttr ".wl[2100].w[35]" 0.99210306844629648;
	setAttr -s 3 ".wl[2101].w";
	setAttr ".wl[2101].w[2]" 0.98979503317196271;
	setAttr ".wl[2101].w[34]" 0.00023843175127917445;
	setAttr ".wl[2101].w[35]" 0.0099665350767581366;
	setAttr ".wl[2102].w[2]"  1;
	setAttr -s 2 ".wl[2103].w";
	setAttr ".wl[2103].w[32]" 0.9999857768413225;
	setAttr ".wl[2103].w[34]" 1.4223158677439958e-05;
	setAttr ".wl[2104].w[32]"  1;
	setAttr -s 2 ".wl[2105].w";
	setAttr ".wl[2105].w[32]" 0.99998594438132282;
	setAttr ".wl[2105].w[34]" 1.4055618677227755e-05;
	setAttr ".wl[2106].w[32]"  1;
	setAttr ".wl[2107].w[32]"  1;
	setAttr -s 2 ".wl[2108].w";
	setAttr ".wl[2108].w[1]" -4.6566128730773926e-09;
	setAttr ".wl[2108].w[32]" 1.0000000046566129;
	setAttr ".wl[2109].w[32]"  1;
	setAttr ".wl[2110].w[3]"  1;
	setAttr -s 3 ".wl[2111].w";
	setAttr ".wl[2111].w[1]" 2.6077032089233398e-08;
	setAttr ".wl[2111].w[3]" 0.022717926651239395;
	setAttr ".wl[2111].w[32]" 0.97728204727172852;
	setAttr -s 2 ".wl[2112].w";
	setAttr ".wl[2112].w[1]" 0.00010467583237204215;
	setAttr ".wl[2112].w[3]" 0.99989532416762794;
	setAttr -s 2 ".wl[2113].w";
	setAttr ".wl[2113].w[1]" -1.4901161193847656e-08;
	setAttr ".wl[2113].w[3]" 1.0000000149011612;
	setAttr ".wl[2114].w[3]"  1;
	setAttr -s 2 ".wl[2115].w";
	setAttr ".wl[2115].w[1]" 2.1952764254241736e-05;
	setAttr ".wl[2115].w[3]" 0.99997804723574579;
	setAttr -s 2 ".wl[2116].w";
	setAttr ".wl[2116].w[32]" 0.9999840036038159;
	setAttr ".wl[2116].w[34]" 1.5996396184048141e-05;
	setAttr ".wl[2117].w[32]"  1;
	setAttr ".wl[2118].w[32]"  1;
	setAttr ".wl[2119].w[32]"  1;
	setAttr ".wl[2120].w[32]"  1;
	setAttr ".wl[2121].w[32]"  1;
	setAttr -s 2 ".wl[2122].w";
	setAttr ".wl[2122].w[1]" 0.99640316795557737;
	setAttr ".wl[2122].w[32]" 0.0035968320444226265;
	setAttr -s 2 ".wl[2123].w";
	setAttr ".wl[2123].w[1]" 0.9973197183584237;
	setAttr ".wl[2123].w[32]" 0.0026802816415763082;
	setAttr -s 2 ".wl[2124].w";
	setAttr ".wl[2124].w[1]" 0.99922072887130353;
	setAttr ".wl[2124].w[3]" 0.0007792711286964682;
	setAttr -s 2 ".wl[2125].w";
	setAttr ".wl[2125].w[1]" 0.99711484694719077;
	setAttr ".wl[2125].w[3]" 0.002885153052809254;
	setAttr -s 2 ".wl[2126].w";
	setAttr ".wl[2126].w[1]" 0.99992060661168025;
	setAttr ".wl[2126].w[3]" 7.9393388319637408e-05;
	setAttr ".wl[2127].w[1]"  1;
	setAttr ".wl[2128].w[1]"  1;
	setAttr ".wl[2129].w[1]"  1;
	setAttr ".wl[2130].w[32]"  1;
	setAttr ".wl[2131].w[3]"  1;
	setAttr ".wl[2132].w[3]"  1;
	setAttr ".wl[2133].w[1]"  1;
	setAttr ".wl[2134].w[76]"  1;
	setAttr ".wl[2135].w[76]"  1;
	setAttr ".wl[2136].w[77]"  1;
	setAttr ".wl[2137].w[77]"  1;
	setAttr ".wl[2138].w[76]"  1;
	setAttr -s 21 ".wl[2139].w";
	setAttr ".wl[2139].w[0]" 0.04761904761904763;
	setAttr ".wl[2139].w[1]" 0.04761904761904763;
	setAttr ".wl[2139].w[2]" 0.04761904761904763;
	setAttr ".wl[2139].w[3]" 0.04761904761904763;
	setAttr ".wl[2139].w[4]" 0.04761904761904763;
	setAttr ".wl[2139].w[23]" 0.04761904761904763;
	setAttr ".wl[2139].w[32]" 0.04761904761904763;
	setAttr ".wl[2139].w[33]" 0.04761904761904763;
	setAttr ".wl[2139].w[34]" 0.04761904761904763;
	setAttr ".wl[2139].w[35]" 0.04761904761904763;
	setAttr ".wl[2139].w[36]" 0.04761904761904763;
	setAttr ".wl[2139].w[37]" 0.04761904761904763;
	setAttr ".wl[2139].w[38]" 0.04761904761904763;
	setAttr ".wl[2139].w[39]" 0.04761904761904763;
	setAttr ".wl[2139].w[48]" 0.04761904761904763;
	setAttr ".wl[2139].w[58]" 0.04761904761904763;
	setAttr ".wl[2139].w[63]" 0.04761904761904763;
	setAttr ".wl[2139].w[66]" 0.04761904761904763;
	setAttr ".wl[2139].w[77]" 0.04761904761904763;
	setAttr ".wl[2139].w[78]" 0.04761904761904763;
	setAttr ".wl[2139].w[79]" 0.04761904761904763;
	setAttr ".wl[2140].w[77]"  1;
	setAttr ".wl[2141].w[76]"  1;
	setAttr -s 21 ".wl[2142].w";
	setAttr ".wl[2142].w[0]" 0.04761904761904763;
	setAttr ".wl[2142].w[1]" 0.04761904761904763;
	setAttr ".wl[2142].w[2]" 0.04761904761904763;
	setAttr ".wl[2142].w[3]" 0.04761904761904763;
	setAttr ".wl[2142].w[4]" 0.04761904761904763;
	setAttr ".wl[2142].w[23]" 0.04761904761904763;
	setAttr ".wl[2142].w[32]" 0.04761904761904763;
	setAttr ".wl[2142].w[33]" 0.04761904761904763;
	setAttr ".wl[2142].w[34]" 0.04761904761904763;
	setAttr ".wl[2142].w[35]" 0.04761904761904763;
	setAttr ".wl[2142].w[36]" 0.04761904761904763;
	setAttr ".wl[2142].w[37]" 0.04761904761904763;
	setAttr ".wl[2142].w[38]" 0.04761904761904763;
	setAttr ".wl[2142].w[39]" 0.04761904761904763;
	setAttr ".wl[2142].w[48]" 0.04761904761904763;
	setAttr ".wl[2142].w[58]" 0.04761904761904763;
	setAttr ".wl[2142].w[63]" 0.04761904761904763;
	setAttr ".wl[2142].w[66]" 0.04761904761904763;
	setAttr ".wl[2142].w[77]" 0.04761904761904763;
	setAttr ".wl[2142].w[78]" 0.04761904761904763;
	setAttr ".wl[2142].w[79]" 0.04761904761904763;
	setAttr ".wl[2143].w[76]"  1;
	setAttr ".wl[2144].w[63]"  1;
	setAttr ".wl[2145].w[63]"  1;
	setAttr ".wl[2146].w[48]"  1;
	setAttr ".wl[2147].w[48]"  1;
	setAttr ".wl[2148].w[63]"  1;
	setAttr ".wl[2149].w[48]"  1;
	setAttr ".wl[2150].w[48]"  1;
	setAttr ".wl[2151].w[63]"  1;
	setAttr ".wl[2152].w[48]"  1;
	setAttr ".wl[2153].w[48]"  1;
	setAttr ".wl[2154].w[63]"  1;
	setAttr ".wl[2155].w[63]"  1;
	setAttr ".wl[2156].w[63]"  1;
	setAttr ".wl[2157].w[63]"  1;
	setAttr ".wl[2158].w[63]"  1;
	setAttr ".wl[2159].w[63]"  1;
	setAttr ".wl[2160].w[63]"  1;
	setAttr ".wl[2161].w[63]"  1;
	setAttr ".wl[2162].w[63]"  1;
	setAttr ".wl[2163].w[63]"  1;
	setAttr ".wl[2164].w[63]"  1;
	setAttr ".wl[2165].w[63]"  1;
	setAttr ".wl[2166].w[63]"  1;
	setAttr ".wl[2167].w[63]"  1;
	setAttr ".wl[2168].w[63]"  1;
	setAttr ".wl[2169].w[63]"  1;
	setAttr ".wl[2170].w[63]"  1;
	setAttr ".wl[2171].w[63]"  1;
	setAttr ".wl[2172].w[63]"  1;
	setAttr ".wl[2173].w[63]"  1;
	setAttr ".wl[2174].w[63]"  1;
	setAttr ".wl[2175].w[63]"  1;
	setAttr ".wl[2176].w[63]"  1;
	setAttr ".wl[2177].w[63]"  1;
	setAttr ".wl[2178].w[63]"  1;
	setAttr -s 4 ".wl[2179].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2180].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2181].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2182].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2183].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2184].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2185].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2186].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2187].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2188].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2189].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2190].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2191].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2192].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2193].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2194].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2195].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2196].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2197].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2198].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2199].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2200].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2201].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2202].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2203].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[2204].w[35]"  1;
	setAttr ".wl[2205].w[2]"  1;
	setAttr -s 5 ".wl[2206].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2207].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2208].w[2]"  1;
	setAttr ".wl[2209].w[2]"  1;
	setAttr -s 5 ".wl[2210].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 2 ".wl[2211].w";
	setAttr ".wl[2211].w[2]" 0.9311284882204458;
	setAttr ".wl[2211].w[35]" 0.068871511779554348;
	setAttr ".wl[2212].w[2]"  1;
	setAttr ".wl[2213].w[2]"  1;
	setAttr -s 5 ".wl[2214].w[0:4]"  0.0024662626678546274 0.0024662626678546274 
		0.99013494932858137 0.0024662626678546274 0.0024662626678546274;
	setAttr ".wl[2215].w[63]"  1;
	setAttr -s 5 ".wl[2216].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2217].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2218].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2219].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2220].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2221].w[2]"  1;
	setAttr ".wl[2222].w[2]"  1;
	setAttr -s 4 ".wl[2223].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2224].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2225].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2226].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2227].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2228].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2229].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2230].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[2231].w[63]"  1;
	setAttr ".wl[2232].w[63]"  1;
	setAttr ".wl[2233].w[63]"  1;
	setAttr ".wl[2234].w[63]"  1;
	setAttr ".wl[2235].w[63]"  1;
	setAttr -s 5 ".wl[2236].w";
	setAttr ".wl[2236].w[0]" 0.12386905709692624;
	setAttr ".wl[2236].w[1]" 0.12386905709692624;
	setAttr ".wl[2236].w[2]" 0.19974486488087564;
	setAttr ".wl[2236].w[3]" 0.12386905709692624;
	setAttr ".wl[2236].w[63]" 0.42864796382834575;
	setAttr ".wl[2237].w[63]"  1;
	setAttr -s 5 ".wl[2238].w[0:4]"  0.049169362848927776 0.049169362848927776 
		0.80332254860428887 0.049169362848927776 0.049169362848927776;
	setAttr -s 5 ".wl[2239].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2240].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2241].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2242].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2243].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2244].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2245].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2246].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2247].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2248].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2249].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2250].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2251].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr ".wl[2252].w[2]"  1;
	setAttr -s 5 ".wl[2253].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2254].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2255].w[2]"  1;
	setAttr -s 5 ".wl[2256].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2257].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2258].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2259].w[2]"  1;
	setAttr ".wl[2260].w[2]"  1;
	setAttr -s 5 ".wl[2261].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2262].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2263].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2264].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2265].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2266].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2267].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2268].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2269].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2270].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2271].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2272].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2273].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2274].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2275].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2276].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2277].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2278].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2279].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2280].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2281].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2282].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2283].w[2]"  1;
	setAttr ".wl[2284].w[2]"  1;
	setAttr -s 5 ".wl[2285].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2286].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2287].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2288].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2289].w[2]"  1;
	setAttr ".wl[2290].w[2]"  1;
	setAttr -s 4 ".wl[2291].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2292].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[2293].w[2]"  1;
	setAttr ".wl[2294].w[2]"  1;
	setAttr -s 4 ".wl[2295].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2296].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[2297].w[2]"  1;
	setAttr ".wl[2298].w[2]"  1;
	setAttr ".wl[2299].w[2]"  1;
	setAttr -s 5 ".wl[2300].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2301].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2302].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2303].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2304].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2305].w[2]"  1;
	setAttr ".wl[2306].w[2]"  1;
	setAttr -s 5 ".wl[2307].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2308].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2309].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2310].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2311].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2312].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2313].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2314].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2315].w[2]"  1;
	setAttr ".wl[2316].w[2]"  1;
	setAttr -s 5 ".wl[2317].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2318].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2319].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2320].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2321].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2322].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2323].w[2]"  1;
	setAttr ".wl[2324].w[2]"  1;
	setAttr -s 4 ".wl[2325].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[2326].w[2]"  1;
	setAttr -s 5 ".wl[2327].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2328].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2329].w[2]"  1;
	setAttr -s 5 ".wl[2330].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2331].w[2]"  1;
	setAttr -s 5 ".wl[2332].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2333].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[2334].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2335].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2336].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2337].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2338].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2339].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2340].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2341].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2342].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2343].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2344].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2345].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[2346].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2347].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[2348].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[2349].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2350].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2351].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2352].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2353].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2354].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2355].w[0:4]"  0.00013383443623403183 0.00013383443623403183 
		0.99946466225506381 0.00013383443623403183 0.00013383443623403183;
	setAttr -s 5 ".wl[2356].w[0:4]"  0.00025157620720075226 0.00025157620720075226 
		0.99899369517119707 0.00025157620720075226 0.00025157620720075226;
	setAttr -s 5 ".wl[2357].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2358].w[0:4]"  0.029773195318489133 0.029773195318489133 
		0.88090721872604349 0.029773195318489133 0.029773195318489133;
	setAttr ".wl[2359].w[2]"  1;
	setAttr ".wl[2360].w[2]"  1;
	setAttr ".wl[2361].w[2]"  1;
	setAttr ".wl[2362].w[63]"  1;
	setAttr ".wl[2363].w[2]"  1;
	setAttr ".wl[2364].w[63]"  1;
	setAttr -s 2 ".wl[2365].w";
	setAttr ".wl[2365].w[2]" 0.014078591612499228;
	setAttr ".wl[2365].w[63]" 0.98592140838750075;
	setAttr ".wl[2366].w[2]"  1;
	setAttr -s 5 ".wl[2367].w[0:4]"  0.00052432191528877588 0.00052432191528877588 
		0.99790271233884498 0.00052432191528877588 0.00052432191528877588;
	setAttr ".wl[2368].w[63]"  1;
	setAttr -s 5 ".wl[2369].w[0:4]"  0.00028059223879460684 0.00028059223879460684 
		0.99887763104482163 0.00028059223879460684 0.00028059223879460684;
	setAttr -s 5 ".wl[2370].w[0:4]"  0.076870598056198822 0.076870598056198822 
		0.69251760777520477 0.076870598056198822 0.076870598056198822;
	setAttr -s 5 ".wl[2371].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2372].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2373].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2374].w[2]"  1;
	setAttr ".wl[2375].w[2]"  1;
	setAttr -s 5 ".wl[2376].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2377].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2378].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[2379].w[0:4]"  0.19992542002240751 0.19992542002240751 
		0.20029831991036995 0.19992542002240751 0.19992542002240751;
	setAttr -s 5 ".wl[2380].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2381].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2382].w[0:4]"  0.00076207329318649097 0.00076207329318649097 
		0.99695170682725409 0.00076207329318649097 0.00076207329318649097;
	setAttr ".wl[2383].w[63]"  1;
	setAttr -s 5 ".wl[2384].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2385].w[2]"  1;
	setAttr ".wl[2386].w[2]"  1;
	setAttr -s 5 ".wl[2387].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[2388].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2389].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2390].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2391].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2392].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2393].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2394].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2395].w[2]"  1;
	setAttr ".wl[2396].w[2]"  1;
	setAttr -s 4 ".wl[2397].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 5 ".wl[2398].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 4 ".wl[2399].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2400].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2401].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2402].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2403].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2404].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[2405].w[63]"  1;
	setAttr ".wl[2406].w[63]"  1;
	setAttr ".wl[2407].w[63]"  1;
	setAttr ".wl[2408].w[63]"  1;
	setAttr ".wl[2409].w[63]"  1;
	setAttr -s 4 ".wl[2410].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2411].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2412].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2413].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2414].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2415].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2416].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[2417].w[63]"  1;
	setAttr ".wl[2418].w[63]"  1;
	setAttr ".wl[2419].w[63]"  1;
	setAttr ".wl[2420].w[63]"  1;
	setAttr ".wl[2421].w[63]"  1;
	setAttr -s 5 ".wl[2422].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2423].w[0:4]"  0.030371479490372121 0.030371479490372121 
		0.87851408203851156 0.030371479490372121 0.030371479490372121;
	setAttr -s 5 ".wl[2424].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2425].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2426].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2427].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2428].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2429].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2430].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2431].w[0:4]"  0.19923923273468835 0.19923923273468835 
		0.20304306906124675 0.19923923273468835 0.19923923273468835;
	setAttr -s 2 ".wl[2432].w";
	setAttr ".wl[2432].w[2]" 0.020666182349118326;
	setAttr ".wl[2432].w[63]" 0.97933381765088168;
	setAttr -s 5 ".wl[2433].w";
	setAttr ".wl[2433].w[0]" 0.14224713745781412;
	setAttr ".wl[2433].w[1]" 0.14224713745781412;
	setAttr ".wl[2433].w[2]" 0.4163044318635738;
	setAttr ".wl[2433].w[3]" 0.14224713745781412;
	setAttr ".wl[2433].w[63]" 0.15695415576298383;
	setAttr -s 5 ".wl[2434].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 2 ".wl[2435].w";
	setAttr ".wl[2435].w[2]" 0.29458341629382417;
	setAttr ".wl[2435].w[63]" 0.70541658370617588;
	setAttr -s 5 ".wl[2436].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2437].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[2438].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2439].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2440].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2441].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2442].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2443].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2444].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2445].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2446].w[0:4]"  0.099046985675895122 0.099046985675895122 
		0.60381205729641951 0.099046985675895122 0.099046985675895122;
	setAttr -s 5 ".wl[2447].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2448].w[2]"  1;
	setAttr -s 5 ".wl[2449].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2450].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2451].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2452].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2453].w[2]"  1;
	setAttr -s 5 ".wl[2454].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2455].w[2]"  1;
	setAttr -s 5 ".wl[2456].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2457].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2458].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2459].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2460].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2461].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2462].w[63]"  1;
	setAttr ".wl[2463].w[63]"  1;
	setAttr ".wl[2464].w[63]"  1;
	setAttr ".wl[2465].w[2]"  1;
	setAttr -s 5 ".wl[2466].w[0:4]"  0.0017968237739768144 0.0017968237739768144 
		0.99281270490409268 0.0017968237739768144 0.0017968237739768144;
	setAttr -s 5 ".wl[2467].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2468].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2469].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2470].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2471].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[2472].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2473].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2474].w[0:4]"  0.065486291342996453 0.065486291342996453 
		0.73805483462801424 0.065486291342996453 0.065486291342996453;
	setAttr -s 5 ".wl[2475].w[0:4]"  0.00025453400962164913 0.00025453400962164913 
		0.99898186396151345 0.00025453400962164913 0.00025453400962164913;
	setAttr ".wl[2476].w[2]"  1;
	setAttr -s 5 ".wl[2477].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2478].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2479].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2480].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2481].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[2482].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2483].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2484].w[0:4]"  0.20000000000000009 0.19999999999999998 
		0.19999999999999998 0.19999999999999998 0.19999999999999998;
	setAttr -s 5 ".wl[2485].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2486].w[0:4]"  0.00042930847877076028 0.00042930847877076028 
		0.99828276608491695 0.00042930847877076028 0.00042930847877076028;
	setAttr ".wl[2487].w[63]"  1;
	setAttr ".wl[2488].w[63]"  1;
	setAttr ".wl[2489].w[63]"  1;
	setAttr ".wl[2490].w[63]"  1;
	setAttr -s 5 ".wl[2491].w";
	setAttr ".wl[2491].w[0]" 0.024303016001141483;
	setAttr ".wl[2491].w[1]" 0.024303016001141483;
	setAttr ".wl[2491].w[2]" 0.12822586490988822;
	setAttr ".wl[2491].w[3]" 0.024303016001141483;
	setAttr ".wl[2491].w[63]" 0.79886508708668735;
	setAttr -s 5 ".wl[2492].w";
	setAttr ".wl[2492].w[0]" 0.047465743466532463;
	setAttr ".wl[2492].w[1]" 0.047465743466532463;
	setAttr ".wl[2492].w[2]" 0.047465743466532463;
	setAttr ".wl[2492].w[3]" 0.047465743466532463;
	setAttr ".wl[2492].w[63]" 0.8101370261338704;
	setAttr -s 5 ".wl[2493].w";
	setAttr ".wl[2493].w[0]" 0.035101382413746711;
	setAttr ".wl[2493].w[1]" 0.035101382413746711;
	setAttr ".wl[2493].w[2]" 0.13157256646490353;
	setAttr ".wl[2493].w[3]" 0.035101382413746711;
	setAttr ".wl[2493].w[63]" 0.7631232862938564;
	setAttr ".wl[2494].w[2]"  1;
	setAttr -s 2 ".wl[2495].w";
	setAttr ".wl[2495].w[2]" 0.93373796860300962;
	setAttr ".wl[2495].w[63]" 0.066262031396990412;
	setAttr -s 2 ".wl[2496].w";
	setAttr ".wl[2496].w[2]" 0.96580011014676259;
	setAttr ".wl[2496].w[63]" 0.034199889853237381;
	setAttr -s 2 ".wl[2497].w";
	setAttr ".wl[2497].w[2]" 0.92724190458411404;
	setAttr ".wl[2497].w[63]" 0.072758095415885946;
	setAttr ".wl[2498].w[2]"  1;
	setAttr ".wl[2499].w[2]"  1;
	setAttr ".wl[2500].w[2]"  1;
	setAttr ".wl[2501].w[2]"  1;
	setAttr ".wl[2502].w[2]"  1;
	setAttr ".wl[2503].w[2]"  1;
	setAttr ".wl[2504].w[2]"  1;
	setAttr ".wl[2505].w[2]"  1;
	setAttr ".wl[2506].w[2]"  1;
	setAttr -s 4 ".wl[2507].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2508].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2509].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2510].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[2511].w[2]"  1;
	setAttr ".wl[2512].w[2]"  1;
	setAttr -s 5 ".wl[2513].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2514].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2515].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2516].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2517].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2518].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2519].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2520].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2521].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 4 ".wl[2522].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2523].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[2524].w[2]"  1;
	setAttr ".wl[2525].w[2]"  1;
	setAttr -s 5 ".wl[2526].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2527].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2528].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2529].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2530].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2531].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2532].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2533].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2534].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2535].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2536].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 4 ".wl[2537].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2538].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2539].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr -s 4 ".wl[2540].w[1:4]"  0.25 0.25 0.25 0.25;
	setAttr ".wl[2541].w[2]"  1;
	setAttr ".wl[2542].w[2]"  1;
	setAttr -s 5 ".wl[2543].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2544].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2545].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2546].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2547].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2548].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2549].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2550].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2551].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr -s 5 ".wl[2552].w[0:4]"  0.2 0.2 0.2 0.2 0.2;
	setAttr ".wl[2553].w[2]"  1;
	setAttr ".wl[2554].w[23]"  1;
	setAttr ".wl[2555].w[23]"  1;
	setAttr ".wl[2556].w[23]"  1;
	setAttr ".wl[2557].w[4]"  1;
	setAttr ".wl[2558].w[4]"  1;
	setAttr ".wl[2559].w[4]"  1;
	setAttr ".wl[2560].w[4]"  1;
	setAttr ".wl[2561].w[4]"  1;
	setAttr ".wl[2562].w[4]"  1;
	setAttr ".wl[2563].w[4]"  1;
	setAttr ".wl[2564].w[23]"  1;
	setAttr ".wl[2565].w[23]"  1;
	setAttr ".wl[2566].w[23]"  1;
	setAttr ".wl[2567].w[23]"  1;
	setAttr ".wl[2568].w[23]"  1;
	setAttr ".wl[2569].w[23]"  1;
	setAttr ".wl[2570].w[23]"  1;
	setAttr ".wl[2571].w[23]"  1;
	setAttr ".wl[2572].w[23]"  1;
	setAttr ".wl[2573].w[23]"  1;
	setAttr ".wl[2574].w[23]"  1;
	setAttr ".wl[2575].w[23]"  1;
	setAttr ".wl[2576].w[23]"  1;
	setAttr ".wl[2577].w[23]"  1;
	setAttr ".wl[2578].w[23]"  1;
	setAttr ".wl[2579].w[23]"  1;
	setAttr ".wl[2580].w[23]"  1;
	setAttr ".wl[2581].w[23]"  1;
	setAttr ".wl[2582].w[23]"  1;
	setAttr ".wl[2583].w[23]"  1;
	setAttr ".wl[2584].w[23]"  1;
	setAttr ".wl[2585].w[23]"  1;
	setAttr ".wl[2586].w[23]"  1;
	setAttr ".wl[2587].w[23]"  1;
	setAttr ".wl[2588].w[23]"  1;
	setAttr ".wl[2589].w[23]"  1;
	setAttr ".wl[2590].w[23]"  1;
	setAttr ".wl[2591].w[23]"  1;
	setAttr ".wl[2592].w[23]"  1;
	setAttr ".wl[2593].w[23]"  1;
	setAttr ".wl[2594].w[23]"  1;
	setAttr ".wl[2595].w[23]"  1;
	setAttr ".wl[2596].w[23]"  1;
	setAttr ".wl[2597].w[23]"  1;
	setAttr ".wl[2598].w[23]"  1;
	setAttr ".wl[2599].w[23]"  1;
	setAttr ".wl[2600].w[23]"  1;
	setAttr ".wl[2601].w[23]"  1;
	setAttr ".wl[2602].w[23]"  1;
	setAttr ".wl[2603].w[23]"  1;
	setAttr ".wl[2604].w[23]"  1;
	setAttr ".wl[2605].w[66]"  1;
	setAttr ".wl[2606].w[66]"  1;
	setAttr ".wl[2607].w[66]"  1;
	setAttr ".wl[2608].w[66]"  1;
	setAttr ".wl[2609].w[66]"  1;
	setAttr ".wl[2610].w[23]"  1;
	setAttr ".wl[2611].w[23]"  1;
	setAttr ".wl[2612].w[23]"  1;
	setAttr ".wl[2613].w[23]"  1;
	setAttr ".wl[2614].w[66]"  1;
	setAttr ".wl[2615].w[66]"  1;
	setAttr ".wl[2616].w[66]"  1;
	setAttr ".wl[2617].w[66]"  1;
	setAttr ".wl[2618].w[66]"  1;
	setAttr ".wl[2619].w[66]"  1;
	setAttr ".wl[2620].w[66]"  1;
	setAttr ".wl[2621].w[66]"  1;
	setAttr ".wl[2622].w[66]"  1;
	setAttr ".wl[2623].w[66]"  1;
	setAttr ".wl[2624].w[23]"  1;
	setAttr ".wl[2625].w[23]"  1;
	setAttr ".wl[2626].w[23]"  1;
	setAttr ".wl[2627].w[23]"  1;
	setAttr ".wl[2628].w[23]"  1;
	setAttr ".wl[2629].w[23]"  1;
	setAttr ".wl[2630].w[23]"  1;
	setAttr ".wl[2631].w[23]"  1;
	setAttr ".wl[2632].w[23]"  1;
	setAttr ".wl[2633].w[23]"  1;
	setAttr ".wl[2634].w[23]"  1;
	setAttr ".wl[2635].w[23]"  1;
	setAttr ".wl[2636].w[23]"  1;
	setAttr ".wl[2637].w[23]"  1;
	setAttr ".wl[2638].w[23]"  1;
	setAttr ".wl[2639].w[23]"  1;
	setAttr ".wl[2640].w[23]"  1;
	setAttr ".wl[2641].w[23]"  1;
	setAttr ".wl[2642].w[23]"  1;
	setAttr ".wl[2643].w[23]"  1;
	setAttr ".wl[2644].w[23]"  1;
	setAttr ".wl[2645].w[23]"  1;
	setAttr ".wl[2646].w[23]"  1;
	setAttr ".wl[2647].w[23]"  1;
	setAttr ".wl[2648].w[23]"  1;
	setAttr ".wl[2649].w[23]"  1;
	setAttr ".wl[2650].w[23]"  1;
	setAttr ".wl[2651].w[23]"  1;
	setAttr ".wl[2652].w[23]"  1;
	setAttr ".wl[2653].w[23]"  1;
	setAttr ".wl[2654].w[23]"  1;
	setAttr ".wl[2655].w[23]"  1;
	setAttr ".wl[2656].w[23]"  1;
	setAttr ".wl[2657].w[23]"  1;
	setAttr ".wl[2658].w[23]"  1;
	setAttr ".wl[2659].w[23]"  1;
	setAttr ".wl[2660].w[23]"  1;
	setAttr ".wl[2661].w[23]"  1;
	setAttr ".wl[2662].w[23]"  1;
	setAttr ".wl[2663].w[23]"  1;
	setAttr ".wl[2664].w[66]"  1;
	setAttr ".wl[2665].w[23]"  1;
	setAttr ".wl[2666].w[23]"  1;
	setAttr ".wl[2667].w[23]"  1;
	setAttr ".wl[2668].w[23]"  1;
	setAttr ".wl[2669].w[23]"  1;
	setAttr ".wl[2670].w[23]"  1;
	setAttr ".wl[2671].w[23]"  1;
	setAttr ".wl[2672].w[23]"  1;
	setAttr ".wl[2673].w[23]"  1;
	setAttr ".wl[2674].w[4]"  1;
	setAttr ".wl[2675].w[66]"  1;
	setAttr ".wl[2676].w[23]"  1;
	setAttr ".wl[2677].w[23]"  1;
	setAttr ".wl[2678].w[23]"  1;
	setAttr ".wl[2679].w[23]"  1;
	setAttr ".wl[2680].w[23]"  1;
	setAttr ".wl[2681].w[23]"  1;
	setAttr ".wl[2682].w[23]"  1;
	setAttr ".wl[2683].w[23]"  1;
	setAttr ".wl[2684].w[23]"  1;
	setAttr ".wl[2685].w[4]"  1;
	setAttr ".wl[2686].w[66]"  1;
	setAttr ".wl[2687].w[23]"  1;
	setAttr ".wl[2688].w[23]"  1;
	setAttr ".wl[2689].w[23]"  1;
	setAttr ".wl[2690].w[23]"  1;
	setAttr ".wl[2691].w[23]"  1;
	setAttr ".wl[2692].w[23]"  1;
	setAttr ".wl[2693].w[23]"  1;
	setAttr ".wl[2694].w[23]"  1;
	setAttr ".wl[2695].w[23]"  1;
	setAttr ".wl[2696].w[4]"  1;
	setAttr ".wl[2697].w[23]"  1;
	setAttr ".wl[2698].w[23]"  1;
	setAttr ".wl[2699].w[23]"  1;
	setAttr ".wl[2700].w[23]"  1;
	setAttr ".wl[2701].w[23]"  1;
	setAttr ".wl[2702].w[23]"  1;
	setAttr ".wl[2703].w[23]"  1;
	setAttr ".wl[2704].w[23]"  1;
	setAttr ".wl[2705].w[23]"  1;
	setAttr ".wl[2706].w[66]"  1;
	setAttr ".wl[2707].w[66]"  1;
	setAttr ".wl[2708].w[23]"  1;
	setAttr ".wl[2709].w[23]"  1;
	setAttr ".wl[2710].w[23]"  1;
	setAttr ".wl[2711].w[23]"  1;
	setAttr ".wl[2712].w[23]"  1;
	setAttr ".wl[2713].w[23]"  1;
	setAttr ".wl[2714].w[23]"  1;
	setAttr ".wl[2715].w[23]"  1;
	setAttr ".wl[2716].w[23]"  1;
	setAttr ".wl[2717].w[66]"  1;
	setAttr ".wl[2718].w[66]"  1;
	setAttr ".wl[2719].w[23]"  1;
	setAttr ".wl[2720].w[23]"  1;
	setAttr ".wl[2721].w[23]"  1;
	setAttr ".wl[2722].w[23]"  1;
	setAttr ".wl[2723].w[23]"  1;
	setAttr ".wl[2724].w[23]"  1;
	setAttr ".wl[2725].w[23]"  1;
	setAttr ".wl[2726].w[23]"  1;
	setAttr ".wl[2727].w[23]"  1;
	setAttr ".wl[2728].w[66]"  1;
	setAttr ".wl[2729].w[66]"  1;
	setAttr ".wl[2730].w[66]"  1;
	setAttr ".wl[2731].w[66]"  1;
	setAttr ".wl[2732].w[66]"  1;
	setAttr ".wl[2733].w[66]"  1;
	setAttr ".wl[2734].w[66]"  1;
	setAttr ".wl[2735].w[66]"  1;
	setAttr ".wl[2736].w[66]"  1;
	setAttr ".wl[2737].w[66]"  1;
	setAttr ".wl[2738].w[66]"  1;
	setAttr ".wl[2739].w[66]"  1;
	setAttr ".wl[2740].w[66]"  1;
	setAttr ".wl[2741].w[66]"  1;
	setAttr ".wl[2742].w[66]"  1;
	setAttr ".wl[2743].w[66]"  1;
	setAttr ".wl[2744].w[66]"  1;
	setAttr ".wl[2745].w[66]"  1;
	setAttr ".wl[2746].w[58]"  1;
	setAttr ".wl[2747].w[58]"  1;
	setAttr ".wl[2748].w[58]"  1;
	setAttr ".wl[2749].w[58]"  1;
	setAttr ".wl[2750].w[58]"  1;
	setAttr ".wl[2751].w[58]"  1;
	setAttr -s 2 ".wl[2752].w";
	setAttr ".wl[2752].w[39]" 0.043234426528215408;
	setAttr ".wl[2752].w[58]" 0.95676557347178459;
	setAttr -s 2 ".wl[2753].w";
	setAttr ".wl[2753].w[39]" 0.99999997112900019;
	setAttr ".wl[2753].w[58]" 2.8870999813079834e-08;
	setAttr -s 2 ".wl[2754].w";
	setAttr ".wl[2754].w[39]" 0.015203446104622606;
	setAttr ".wl[2754].w[58]" 0.98479655389537735;
	setAttr -s 2 ".wl[2755].w";
	setAttr ".wl[2755].w[39]" 0.00056958670346482227;
	setAttr ".wl[2755].w[58]" 0.99943041329653515;
	setAttr ".wl[2756].w[39]"  1;
	setAttr -s 2 ".wl[2757].w";
	setAttr ".wl[2757].w[39]" 0.0073494911193847656;
	setAttr ".wl[2757].w[58]" 0.99265050888061523;
	setAttr -s 2 ".wl[2758].w";
	setAttr ".wl[2758].w[39]" 0.99988031387418275;
	setAttr ".wl[2758].w[58]" 0.00011968612581725324;
	setAttr -s 2 ".wl[2759].w";
	setAttr ".wl[2759].w[39]" 0.015607072993281425;
	setAttr ".wl[2759].w[58]" 0.98439292700671865;
	setAttr ".wl[2760].w[39]"  1;
	setAttr -s 2 ".wl[2761].w";
	setAttr ".wl[2761].w[39]" 0.015894672453244201;
	setAttr ".wl[2761].w[58]" 0.98410532754675595;
	setAttr -s 2 ".wl[2762].w";
	setAttr ".wl[2762].w[39]" 0.98324102925413071;
	setAttr ".wl[2762].w[58]" 0.016758970745869392;
	setAttr -s 2 ".wl[2763].w";
	setAttr ".wl[2763].w[39]" 0.98788718884050997;
	setAttr ".wl[2763].w[58]" 0.012112811159490042;
	setAttr ".wl[2764].w[58]"  1;
	setAttr ".wl[2765].w[58]"  1;
	setAttr -s 2 ".wl[2766].w";
	setAttr ".wl[2766].w[39]" 0.98450218134430256;
	setAttr ".wl[2766].w[58]" 0.01549781865569747;
	setAttr ".wl[2767].w[58]"  1;
	setAttr -s 2 ".wl[2768].w";
	setAttr ".wl[2768].w[39]" 0.98097549261114003;
	setAttr ".wl[2768].w[58]" 0.019024507388859996;
	setAttr ".wl[2769].w[58]"  1;
	setAttr ".wl[2770].w[58]"  1;
	setAttr ".wl[2771].w[58]"  1;
	setAttr ".wl[2772].w[58]"  1;
	setAttr ".wl[2773].w[58]"  1;
	setAttr ".wl[2774].w[58]"  1;
	setAttr ".wl[2775].w[58]"  1;
	setAttr ".wl[2776].w[58]"  1;
	setAttr ".wl[2777].w[58]"  1;
	setAttr ".wl[2778].w[58]"  1;
	setAttr ".wl[2779].w[58]"  1;
	setAttr ".wl[2780].w[58]"  1;
	setAttr ".wl[2781].w[58]"  1;
	setAttr ".wl[2782].w[58]"  1;
	setAttr ".wl[2783].w[58]"  1;
	setAttr ".wl[2784].w[58]"  1;
	setAttr ".wl[2785].w[58]"  1;
	setAttr ".wl[2786].w[58]"  1;
	setAttr ".wl[2787].w[58]"  1;
	setAttr ".wl[2788].w[58]"  1;
	setAttr ".wl[2789].w[58]"  1;
	setAttr ".wl[2790].w[58]"  1;
	setAttr ".wl[2791].w[58]"  1;
	setAttr ".wl[2792].w[58]"  1;
	setAttr ".wl[2793].w[58]"  1;
	setAttr ".wl[2794].w[58]"  1;
	setAttr ".wl[2795].w[58]"  1;
	setAttr ".wl[2796].w[58]"  1;
	setAttr ".wl[2797].w[58]"  1;
	setAttr ".wl[2798].w[58]"  1;
	setAttr ".wl[2799].w[58]"  1;
	setAttr ".wl[2800].w[58]"  1;
	setAttr ".wl[2801].w[58]"  1;
	setAttr ".wl[2802].w[58]"  1;
	setAttr ".wl[2803].w[58]"  1;
	setAttr ".wl[2804].w[58]"  1;
	setAttr ".wl[2805].w[58]"  1;
	setAttr ".wl[2806].w[58]"  1;
	setAttr ".wl[2807].w[58]"  1;
	setAttr ".wl[2808].w[58]"  1;
	setAttr ".wl[2809].w[58]"  1;
	setAttr ".wl[2810].w[58]"  1;
	setAttr ".wl[2811].w[58]"  1;
	setAttr ".wl[2812].w[58]"  1;
	setAttr ".wl[2813].w[58]"  1;
	setAttr ".wl[2814].w[58]"  1;
	setAttr ".wl[2815].w[58]"  1;
	setAttr ".wl[2816].w[58]"  1;
	setAttr ".wl[2817].w[58]"  1;
	setAttr ".wl[2818].w[58]"  1;
	setAttr ".wl[2819].w[58]"  1;
	setAttr ".wl[2820].w[58]"  1;
	setAttr ".wl[2821].w[58]"  1;
	setAttr ".wl[2822].w[58]"  1;
	setAttr ".wl[2823].w[58]"  1;
	setAttr ".wl[2824].w[58]"  1;
	setAttr ".wl[2825].w[58]"  1;
	setAttr ".wl[2826].w[58]"  1;
	setAttr ".wl[2827].w[58]"  1;
	setAttr ".wl[2828].w[58]"  1;
	setAttr ".wl[2829].w[58]"  1;
	setAttr -s 2 ".wl[2830].w";
	setAttr ".wl[2830].w[58]" 0.99691872536109261;
	setAttr ".wl[2830].w[66]" 0.0030812746389074163;
	setAttr ".wl[2831].w[58]"  1;
	setAttr -s 2 ".wl[2832].w";
	setAttr ".wl[2832].w[58]" 0.99818009229495308;
	setAttr ".wl[2832].w[66]" 0.0018199077050468819;
	setAttr -s 2 ".wl[2833].w";
	setAttr ".wl[2833].w[58]" 0.99383102884930619;
	setAttr ".wl[2833].w[66]" 0.0061689711506938199;
	setAttr -s 2 ".wl[2834].w";
	setAttr ".wl[2834].w[58]" 0.99224214669825983;
	setAttr ".wl[2834].w[66]" 0.0077578533017402798;
	setAttr -s 2 ".wl[2835].w";
	setAttr ".wl[2835].w[58]" 0.99483673181384802;
	setAttr ".wl[2835].w[66]" 0.0051632681861519814;
	setAttr -s 2 ".wl[2836].w";
	setAttr ".wl[2836].w[58]" 0.99571151975219163;
	setAttr ".wl[2836].w[66]" 0.0042884802478083657;
	setAttr -s 2 ".wl[2837].w";
	setAttr ".wl[2837].w[58]" 0.99975980295033251;
	setAttr ".wl[2837].w[66]" 0.00024019704966765396;
	setAttr ".wl[2838].w[58]"  1;
	setAttr ".wl[2839].w[58]"  1;
	setAttr ".wl[2840].w[58]"  1;
	setAttr ".wl[2841].w[58]"  1;
	setAttr -s 2 ".wl[2842].w";
	setAttr ".wl[2842].w[58]" 0.9554247260093689;
	setAttr ".wl[2842].w[66]" 0.044575273990631104;
	setAttr ".wl[2843].w[66]"  1;
	setAttr ".wl[2844].w[66]"  1;
	setAttr -s 2 ".wl[2845].w";
	setAttr ".wl[2845].w[58]" 0.0077706256001524952;
	setAttr ".wl[2845].w[66]" 0.99222937439984749;
	setAttr ".wl[2846].w[66]"  1;
	setAttr ".wl[2847].w[66]"  1;
	setAttr -s 2 ".wl[2848].w";
	setAttr ".wl[2848].w[58]" 0.024224854494564855;
	setAttr ".wl[2848].w[66]" 0.97577514550543532;
	setAttr ".wl[2849].w[66]"  1;
	setAttr ".wl[2850].w[66]"  1;
	setAttr ".wl[2851].w[66]"  1;
	setAttr ".wl[2852].w[66]"  1;
	setAttr ".wl[2853].w[66]"  1;
	setAttr ".wl[2854].w[66]"  1;
	setAttr ".wl[2855].w[66]"  1;
	setAttr -s 2 ".wl[2856].w";
	setAttr ".wl[2856].w[58]" 0.97110698662265882;
	setAttr ".wl[2856].w[66]" 0.028893013377341278;
	setAttr ".wl[2857].w[66]"  1;
	setAttr -s 2 ".wl[2858].w";
	setAttr ".wl[2858].w[58]" 0.99789388061090745;
	setAttr ".wl[2858].w[66]" 0.0021061193890925308;
	setAttr -s 2 ".wl[2859].w";
	setAttr ".wl[2859].w[58]" 0.99791891665908716;
	setAttr ".wl[2859].w[66]" 0.0020810833409128206;
	setAttr ".wl[2860].w[66]"  1;
	setAttr ".wl[2861].w[66]"  1;
	setAttr -s 2 ".wl[2862].w";
	setAttr ".wl[2862].w[58]" 0.99822592672549637;
	setAttr ".wl[2862].w[66]" 0.0017740732745036532;
	setAttr ".wl[2863].w[66]"  1;
	setAttr ".wl[2864].w[58]"  1;
	setAttr ".wl[2865].w[66]"  1;
	setAttr ".wl[2866].w[58]"  1;
	setAttr ".wl[2867].w[58]"  1;
	setAttr ".wl[2868].w[58]"  1;
	setAttr ".wl[2869].w[58]"  1;
	setAttr ".wl[2870].w[58]"  1;
	setAttr ".wl[2871].w[58]"  1;
	setAttr ".wl[2872].w[58]"  1;
	setAttr ".wl[2873].w[58]"  1;
	setAttr ".wl[2874].w[58]"  1;
	setAttr ".wl[2875].w[58]"  1;
	setAttr ".wl[2876].w[58]"  1;
	setAttr ".wl[2877].w[58]"  1;
	setAttr ".wl[2878].w[58]"  1;
	setAttr -s 2 ".wl[2879].w";
	setAttr ".wl[2879].w[58]" 0.99778313598354651;
	setAttr ".wl[2879].w[66]" 0.0022168640164535154;
	setAttr ".wl[2880].w[66]"  1;
	setAttr ".wl[2881].w[58]"  1;
	setAttr ".wl[2882].w[58]"  1;
	setAttr ".wl[2883].w[58]"  1;
	setAttr ".wl[2884].w[58]"  1;
	setAttr ".wl[2885].w[58]"  1;
	setAttr ".wl[2886].w[58]"  1;
	setAttr ".wl[2887].w[58]"  1;
	setAttr ".wl[2888].w[58]"  1;
	setAttr -s 2 ".wl[2889].w";
	setAttr ".wl[2889].w[39]" 0.99901257641429564;
	setAttr ".wl[2889].w[58]" 0.00098742358570438546;
	setAttr -s 2 ".wl[2890].w";
	setAttr ".wl[2890].w[58]" 0.99822268721256746;
	setAttr ".wl[2890].w[66]" 0.0017773127874326845;
	setAttr ".wl[2891].w[66]"  1;
	setAttr ".wl[2892].w[58]"  1;
	setAttr ".wl[2893].w[58]"  1;
	setAttr ".wl[2894].w[58]"  1;
	setAttr ".wl[2895].w[58]"  1;
	setAttr ".wl[2896].w[58]"  1;
	setAttr ".wl[2897].w[58]"  1;
	setAttr ".wl[2898].w[58]"  1;
	setAttr ".wl[2899].w[58]"  1;
	setAttr ".wl[2900].w[39]"  1;
	setAttr ".wl[2901].w[58]"  1;
	setAttr ".wl[2902].w[58]"  1;
	setAttr ".wl[2903].w[58]"  1;
	setAttr ".wl[2904].w[58]"  1;
	setAttr ".wl[2905].w[58]"  1;
	setAttr ".wl[2906].w[58]"  1;
	setAttr ".wl[2907].w[58]"  1;
	setAttr -s 2 ".wl[2908].w";
	setAttr ".wl[2908].w[58]" 0.99449052775615343;
	setAttr ".wl[2908].w[66]" 0.0055094722438465155;
	setAttr ".wl[2909].w[66]"  1;
	setAttr ".wl[2910].w[66]"  1;
	setAttr ".wl[2911].w[58]"  1;
	setAttr ".wl[2912].w[58]"  1;
	setAttr ".wl[2913].w[58]"  1;
	setAttr ".wl[2914].w[58]"  1;
	setAttr ".wl[2915].w[58]"  1;
	setAttr ".wl[2916].w[58]"  1;
	setAttr ".wl[2917].w[58]"  1;
	setAttr ".wl[2918].w[58]"  1;
	setAttr -s 2 ".wl[2919].w";
	setAttr ".wl[2919].w[58]" 0.99662372184694359;
	setAttr ".wl[2919].w[66]" 0.0033762781530565218;
	setAttr ".wl[2920].w[66]"  1;
	setAttr ".wl[2921].w[66]"  1;
	setAttr ".wl[2922].w[66]"  1;
	setAttr ".wl[2923].w[66]"  1;
	setAttr ".wl[2924].w[66]"  1;
	setAttr ".wl[2925].w[66]"  1;
	setAttr ".wl[2926].w[66]"  1;
	setAttr ".wl[2927].w[66]"  1;
	setAttr ".wl[2928].w[66]"  1;
	setAttr ".wl[2929].w[66]"  1;
	setAttr ".wl[2930].w[66]"  1;
	setAttr ".wl[2931].w[66]"  1;
	setAttr ".wl[2932].w[66]"  1;
	setAttr ".wl[2933].w[66]"  1;
	setAttr ".wl[2934].w[66]"  1;
	setAttr ".wl[2935].w[66]"  1;
	setAttr ".wl[2936].w[66]"  1;
	setAttr ".wl[2937].w[66]"  1;
	setAttr ".wl[2938].w[66]"  1;
	setAttr ".wl[2939].w[66]"  1;
	setAttr ".wl[2940].w[66]"  1;
	setAttr ".wl[2941].w[66]"  1;
	setAttr ".wl[2942].w[66]"  1;
	setAttr ".wl[2943].w[66]"  1;
	setAttr ".wl[2944].w[66]"  1;
	setAttr ".wl[2945].w[66]"  1;
	setAttr ".wl[2946].w[66]"  1;
	setAttr ".wl[2947].w[66]"  1;
	setAttr ".wl[2948].w[66]"  1;
	setAttr ".wl[2949].w[66]"  1;
	setAttr ".wl[2950].w[66]"  1;
	setAttr ".wl[2951].w[66]"  1;
	setAttr ".wl[2952].w[66]"  1;
	setAttr ".wl[2953].w[66]"  1;
	setAttr ".wl[2954].w[66]"  1;
	setAttr ".wl[2955].w[66]"  1;
	setAttr ".wl[2956].w[66]"  1;
	setAttr ".wl[2957].w[66]"  1;
	setAttr ".wl[2958].w[66]"  1;
	setAttr ".wl[2959].w[66]"  1;
	setAttr ".wl[2960].w[66]"  1;
	setAttr ".wl[2961].w[66]"  1;
	setAttr ".wl[2962].w[66]"  1;
	setAttr ".wl[2963].w[66]"  1;
	setAttr ".wl[2964].w[66]"  1;
	setAttr ".wl[2965].w[66]"  1;
	setAttr ".wl[2966].w[66]"  1;
	setAttr ".wl[2967].w[66]"  1;
	setAttr ".wl[2968].w[66]"  1;
	setAttr ".wl[2969].w[66]"  1;
	setAttr ".wl[2970].w[66]"  1;
	setAttr ".wl[2971].w[66]"  1;
	setAttr ".wl[2972].w[66]"  1;
	setAttr ".wl[2973].w[66]"  1;
	setAttr ".wl[2974].w[66]"  1;
	setAttr ".wl[2975].w[66]"  1;
	setAttr ".wl[2976].w[66]"  1;
	setAttr ".wl[2977].w[66]"  1;
	setAttr ".wl[2978].w[66]"  1;
	setAttr ".wl[2979].w[66]"  1;
	setAttr ".wl[2980].w[66]"  1;
	setAttr ".wl[2981].w[66]"  1;
	setAttr ".wl[2982].w[66]"  1;
	setAttr ".wl[2983].w[66]"  1;
	setAttr ".wl[2984].w[66]"  1;
	setAttr ".wl[2985].w[66]"  1;
	setAttr ".wl[2986].w[66]"  1;
	setAttr ".wl[2987].w[66]"  1;
	setAttr ".wl[2988].w[66]"  1;
	setAttr ".wl[2989].w[66]"  1;
	setAttr ".wl[2990].w[66]"  1;
	setAttr ".wl[2991].w[66]"  1;
	setAttr ".wl[2992].w[66]"  1;
	setAttr ".wl[2993].w[66]"  1;
	setAttr ".wl[2994].w[66]"  1;
	setAttr ".wl[2995].w[66]"  1;
	setAttr ".wl[2996].w[66]"  1;
	setAttr ".wl[2997].w[66]"  1;
	setAttr ".wl[2998].w[66]"  1;
	setAttr ".wl[2999].w[66]"  1;
	setAttr ".wl[3000].w[66]"  1;
	setAttr ".wl[3001].w[66]"  1;
	setAttr ".wl[3002].w[66]"  1;
	setAttr ".wl[3003].w[66]"  1;
	setAttr ".wl[3004].w[66]"  1;
	setAttr ".wl[3005].w[66]"  1;
	setAttr ".wl[3006].w[66]"  1;
	setAttr ".wl[3007].w[66]"  1;
	setAttr ".wl[3008].w[66]"  1;
	setAttr ".wl[3009].w[66]"  1;
	setAttr ".wl[3010].w[66]"  1;
	setAttr ".wl[3011].w[66]"  1;
	setAttr ".wl[3012].w[66]"  1;
	setAttr ".wl[3013].w[66]"  1;
	setAttr -s 2 ".wl[3014].w";
	setAttr ".wl[3014].w[58]" 0.010206442516417105;
	setAttr ".wl[3014].w[66]" 0.989793557483583;
	setAttr ".wl[3015].w[66]"  1;
	setAttr ".wl[3016].w[66]"  1;
	setAttr ".wl[3017].w[66]"  1;
	setAttr ".wl[3018].w[66]"  1;
	setAttr ".wl[3019].w[66]"  1;
	setAttr ".wl[3020].w[66]"  1;
	setAttr ".wl[3021].w[66]"  1;
	setAttr ".wl[3022].w[66]"  1;
	setAttr ".wl[3023].w[66]"  1;
	setAttr ".wl[3024].w[66]"  1;
	setAttr ".wl[3025].w[66]"  1;
	setAttr ".wl[3026].w[66]"  1;
	setAttr ".wl[3027].w[66]"  1;
	setAttr ".wl[3028].w[66]"  1;
	setAttr ".wl[3029].w[66]"  1;
	setAttr ".wl[3030].w[66]"  1;
	setAttr ".wl[3031].w[66]"  1;
	setAttr ".wl[3032].w[66]"  1;
	setAttr ".wl[3033].w[66]"  1;
	setAttr ".wl[3034].w[66]"  1;
	setAttr ".wl[3035].w[66]"  1;
	setAttr ".wl[3036].w[66]"  1;
	setAttr ".wl[3037].w[66]"  1;
	setAttr ".wl[3038].w[66]"  1;
	setAttr ".wl[3039].w[66]"  1;
	setAttr ".wl[3040].w[66]"  1;
	setAttr ".wl[3041].w[66]"  1;
	setAttr ".wl[3042].w[66]"  1;
	setAttr ".wl[3043].w[66]"  1;
	setAttr ".wl[3044].w[66]"  1;
	setAttr ".wl[3045].w[66]"  1;
	setAttr ".wl[3046].w[66]"  1;
	setAttr ".wl[3047].w[66]"  1;
	setAttr ".wl[3048].w[66]"  1;
	setAttr ".wl[3049].w[66]"  1;
	setAttr ".wl[3050].w[66]"  1;
	setAttr ".wl[3051].w[66]"  1;
	setAttr ".wl[3052].w[66]"  1;
	setAttr ".wl[3053].w[66]"  1;
	setAttr ".wl[3054].w[66]"  1;
	setAttr ".wl[3055].w[66]"  1;
	setAttr ".wl[3056].w[66]"  1;
	setAttr ".wl[3057].w[66]"  1;
	setAttr ".wl[3058].w[66]"  1;
	setAttr ".wl[3059].w[66]"  1;
	setAttr ".wl[3060].w[66]"  1;
	setAttr ".wl[3061].w[66]"  1;
	setAttr ".wl[3062].w[66]"  1;
	setAttr ".wl[3063].w[66]"  1;
	setAttr ".wl[3064].w[66]"  1;
	setAttr ".wl[3065].w[66]"  1;
	setAttr ".wl[3066].w[66]"  1;
	setAttr ".wl[3067].w[66]"  1;
	setAttr ".wl[3068].w[66]"  1;
	setAttr ".wl[3069].w[66]"  1;
	setAttr ".wl[3070].w[66]"  1;
	setAttr ".wl[3071].w[66]"  1;
	setAttr ".wl[3072].w[66]"  1;
	setAttr ".wl[3073].w[66]"  1;
	setAttr ".wl[3074].w[66]"  1;
	setAttr ".wl[3075].w[66]"  1;
	setAttr ".wl[3076].w[66]"  1;
	setAttr ".wl[3077].w[66]"  1;
	setAttr ".wl[3078].w[66]"  1;
	setAttr ".wl[3079].w[66]"  1;
	setAttr ".wl[3080].w[66]"  1;
	setAttr ".wl[3081].w[66]"  1;
	setAttr ".wl[3082].w[66]"  1;
	setAttr ".wl[3083].w[66]"  1;
	setAttr ".wl[3084].w[66]"  1;
	setAttr ".wl[3085].w[66]"  1;
	setAttr ".wl[3086].w[66]"  1;
	setAttr ".wl[3087].w[66]"  1;
	setAttr ".wl[3088].w[66]"  1;
	setAttr ".wl[3089].w[23]"  1;
	setAttr ".wl[3090].w[23]"  1;
	setAttr ".wl[3091].w[23]"  1;
	setAttr ".wl[3092].w[23]"  1;
	setAttr ".wl[3093].w[23]"  1;
	setAttr ".wl[3094].w[23]"  1;
	setAttr ".wl[3095].w[23]"  1;
	setAttr ".wl[3096].w[23]"  1;
	setAttr ".wl[3097].w[23]"  1;
	setAttr ".wl[3098].w[23]"  1;
	setAttr ".wl[3099].w[23]"  1;
	setAttr ".wl[3100].w[23]"  1;
	setAttr ".wl[3101].w[23]"  1;
	setAttr ".wl[3102].w[23]"  1;
	setAttr ".wl[3103].w[23]"  1;
	setAttr ".wl[3104].w[23]"  1;
	setAttr ".wl[3105].w[58]"  1;
	setAttr ".wl[3106].w[58]"  1;
	setAttr ".wl[3107].w[58]"  1;
	setAttr ".wl[3108].w[58]"  1;
	setAttr ".wl[3109].w[58]"  1;
	setAttr ".wl[3110].w[58]"  1;
	setAttr ".wl[3111].w[58]"  1;
	setAttr ".wl[3112].w[58]"  1;
	setAttr ".wl[3113].w[58]"  1;
	setAttr ".wl[3114].w[58]"  1;
	setAttr ".wl[3115].w[58]"  1;
	setAttr ".wl[3116].w[58]"  1;
	setAttr ".wl[3117].w[58]"  1;
	setAttr ".wl[3118].w[58]"  1;
	setAttr ".wl[3119].w[58]"  1;
	setAttr ".wl[3120].w[58]"  1;
	setAttr ".wl[3121].w[2]"  1;
	setAttr ".wl[3122].w[2]"  1;
	setAttr ".wl[3123].w[3]"  1;
	setAttr ".wl[3124].w[3]"  1;
	setAttr ".wl[3125].w[2]"  1;
	setAttr ".wl[3126].w[3]"  1;
	setAttr ".wl[3127].w[3]"  1;
	setAttr ".wl[3128].w[3]"  1;
	setAttr ".wl[3129].w[3]"  1;
	setAttr ".wl[3130].w[2]"  1;
	setAttr ".wl[3131].w[2]"  1;
	setAttr ".wl[3132].w[2]"  1;
	setAttr -s 2 ".wl[3133].w[2:3]"  0.98752166411528952 0.012478335884710451;
	setAttr ".wl[3134].w[3]"  1;
	setAttr ".wl[3135].w[3]"  1;
	setAttr ".wl[3136].w[3]"  1;
	setAttr ".wl[3137].w[3]"  1;
	setAttr ".wl[3138].w[3]"  1;
	setAttr ".wl[3139].w[2]"  1;
	setAttr ".wl[3140].w[2]"  1;
	setAttr ".wl[3141].w[3]"  1;
	setAttr ".wl[3142].w[3]"  1;
	setAttr ".wl[3143].w[2]"  1;
	setAttr ".wl[3144].w[3]"  1;
	setAttr ".wl[3145].w[3]"  1;
	setAttr ".wl[3146].w[3]"  1;
	setAttr ".wl[3147].w[3]"  1;
	setAttr ".wl[3148].w[2]"  1;
	setAttr -s 2 ".wl[3149].w[2:3]"  0.9987684781978704 0.0012315218021295862;
	setAttr -s 2 ".wl[3150].w[2:3]"  0.99825863008958804 0.0017413699104119056;
	setAttr -s 2 ".wl[3151].w[2:3]"  0.98827865665210202 0.011721343347897987;
	setAttr -s 2 ".wl[3152].w[2:3]"  0.0068377853140380584 0.99316221468596189;
	setAttr ".wl[3153].w[3]"  1;
	setAttr ".wl[3154].w[3]"  1;
	setAttr ".wl[3155].w[3]"  1;
	setAttr ".wl[3156].w[3]"  1;
	setAttr ".wl[3157].w[3]"  1;
	setAttr ".wl[3158].w[3]"  1;
	setAttr ".wl[3159].w[3]"  1;
	setAttr ".wl[3160].w[3]"  1;
	setAttr ".wl[3161].w[3]"  1;
	setAttr ".wl[3162].w[3]"  1;
	setAttr ".wl[3163].w[3]"  1;
	setAttr ".wl[3164].w[3]"  1;
	setAttr ".wl[3165].w[3]"  1;
	setAttr ".wl[3166].w[2]"  1;
	setAttr -s 2 ".wl[3167].w[2:3]"  0.078256763517856598 0.9217432364821434;
	setAttr ".wl[3168].w[3]"  1;
	setAttr ".wl[3169].w[3]"  1;
	setAttr ".wl[3170].w[3]"  1;
	setAttr ".wl[3171].w[3]"  1;
	setAttr ".wl[3172].w[3]"  1;
	setAttr ".wl[3173].w[3]"  1;
	setAttr ".wl[3174].w[3]"  1;
	setAttr ".wl[3175].w[3]"  1;
	setAttr ".wl[3176].w[3]"  1;
	setAttr ".wl[3177].w[3]"  1;
	setAttr ".wl[3178].w[3]"  1;
	setAttr ".wl[3179].w[3]"  1;
	setAttr ".wl[3180].w[3]"  1;
	setAttr ".wl[3181].w[3]"  1;
	setAttr ".wl[3182].w[3]"  1;
	setAttr ".wl[3183].w[3]"  1;
	setAttr ".wl[3184].w[3]"  1;
	setAttr ".wl[3185].w[3]"  1;
	setAttr ".wl[3186].w[3]"  1;
	setAttr ".wl[3187].w[3]"  1;
	setAttr ".wl[3188].w[3]"  1;
	setAttr ".wl[3189].w[3]"  1;
	setAttr ".wl[3190].w[3]"  1;
	setAttr ".wl[3191].w[3]"  1;
	setAttr ".wl[3192].w[3]"  1;
	setAttr ".wl[3193].w[38]"  1;
	setAttr ".wl[3194].w[37]"  1;
	setAttr ".wl[3195].w[38]"  1;
	setAttr ".wl[3196].w[37]"  1;
	setAttr ".wl[3197].w[37]"  1;
	setAttr -s 2 ".wl[3198].w[37:38]"  0.95306539640429488 0.046934603595705261;
	setAttr -s 2 ".wl[3199].w[37:38]"  0.9864224064507765 0.013577593549223495;
	setAttr ".wl[3200].w[37]"  1;
	setAttr ".wl[3201].w[37]"  1;
	setAttr ".wl[3202].w[37]"  1;
	setAttr ".wl[3203].w[37]"  1;
	setAttr ".wl[3204].w[37]"  1;
	setAttr ".wl[3205].w[37]"  1;
	setAttr ".wl[3206].w[37]"  1;
	setAttr ".wl[3207].w[37]"  1;
	setAttr ".wl[3208].w[37]"  1;
	setAttr ".wl[3209].w[3]"  1;
	setAttr ".wl[3210].w[3]"  1;
	setAttr ".wl[3211].w[3]"  1;
	setAttr ".wl[3212].w[3]"  1;
	setAttr ".wl[3213].w[3]"  1;
	setAttr ".wl[3214].w[3]"  1;
	setAttr ".wl[3215].w[3]"  1;
	setAttr ".wl[3216].w[3]"  1;
	setAttr ".wl[3217].w[3]"  1;
	setAttr ".wl[3218].w[3]"  1;
	setAttr ".wl[3219].w[3]"  1;
	setAttr ".wl[3220].w[3]"  1;
	setAttr ".wl[3221].w[3]"  1;
	setAttr ".wl[3222].w[3]"  1;
	setAttr ".wl[3223].w[3]"  1;
	setAttr ".wl[3224].w[3]"  1;
	setAttr ".wl[3225].w[3]"  1;
	setAttr ".wl[3226].w[3]"  1;
	setAttr ".wl[3227].w[35]"  1;
	setAttr ".wl[3228].w[35]"  1;
	setAttr ".wl[3229].w[3]"  1;
	setAttr ".wl[3230].w[3]"  1;
	setAttr ".wl[3231].w[35]"  1;
	setAttr ".wl[3232].w[3]"  1;
	setAttr ".wl[3233].w[3]"  1;
	setAttr ".wl[3234].w[3]"  1;
	setAttr ".wl[3235].w[3]"  1;
	setAttr ".wl[3236].w[35]"  1;
	setAttr -s 2 ".wl[3237].w";
	setAttr ".wl[3237].w[3]" 0.0021054402837114728;
	setAttr ".wl[3237].w[35]" 0.99789455971628849;
	setAttr -s 2 ".wl[3238].w";
	setAttr ".wl[3238].w[3]" 0.002820106797127847;
	setAttr ".wl[3238].w[35]" 0.99717989320287215;
	setAttr -s 2 ".wl[3239].w";
	setAttr ".wl[3239].w[3]" 0.0051752724800520275;
	setAttr ".wl[3239].w[35]" 0.99482472751994799;
	setAttr -s 2 ".wl[3240].w";
	setAttr ".wl[3240].w[3]" 0.95338277886936695;
	setAttr ".wl[3240].w[35]" 0.046617221130633005;
	setAttr ".wl[3241].w[3]"  1;
	setAttr ".wl[3242].w[3]"  1;
	setAttr ".wl[3243].w[3]"  1;
	setAttr ".wl[3244].w[3]"  1;
	setAttr -s 80 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -1.3753262803389132 1.4463155397842373 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -3.2673187799124408 1.4463155397842373 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 -1 1.2246467991473532e-16 0 0 -1.2246467991473532e-16 -1 -0
		 -0 6.3223200000000004 -1.2794900000000007 1;
	setAttr ".pm[3]" -type "matrix" 2.1028351788058586e-16 1 -6.3450499541422371e-16 -0
		 0.39232964783840507 -7.5090153373859539e-16 -0.91982468298420494 0 -0.91982468298420494 -7.8880607044110036e-17 -0.39232964783840524 -0
		 -3.6573400627531658 4.6465128368793279e-15 5.3134441286119376 1;
	setAttr ".pm[4]" -type "matrix" 1 -3.3062227969288335e-16 2.2467967077269443e-16 -0
		 4.6957564829929758e-17 0.61813650066098702 0.78607077706183048 -0 -4.7505857299375478e-16 -0.78607077706183037 0.61813650066098691 -0
		 -1.1886425773215923 3.6492057157181557 7.5862481911700783 1;
	setAttr ".pm[5]" -type "matrix" 0.25968219660115044 -0.11223474405279893 0.95914989391429539 -0
		 0.71347097139603655 0.69163757503666512 -0.11223474405279947 0 -0.65078746895096073 0.71347097139603655 0.25968219660115016 -0
		 -5.7427185337633402 -3.4971050140047311 0.37221330013478576 1;
	setAttr ".pm[6]" -type "matrix" 0.28153963783430813 0.95410127671860168 -0.10210869743592356 -0
		 -0.89652467139407743 0.29948393159603259 0.32642439905363141 0 0.34202185004743224 -0.00035844067462241502 0.93969193122555572 -0
		 1.546374027456616 -3.0677038134903447 1.7317316797274283 1;
	setAttr ".pm[7]" -type "matrix" -0.034899496702500477 3.6751783587152361e-15 -0.99939082701909576 -0
		 5.8717972704673182e-18 1 3.6772134950519597e-15 -0 0.99939082701909576 1.2246467991473542e-16 -0.034899496702500477 -0
		 0.65471876586505051 -6.9447145462036151 0.31781033002427606 1;
	setAttr ".pm[8]" -type "matrix" 2.2810772451399343e-16 -1.0620865760578663e-16 1 -0
		 1.0000000000000002 3.3306690738754696e-16 -6.4064737632585723e-17 0 -2.7755575615628914e-16 0.99999999999999989 8.0052939318823541e-17 -0
		 8.8742130435359599 1.4636335909667482 -1.1824357333543323 1;
	setAttr ".pm[9]" -type "matrix" 0.97904292348264499 -0.18718746252691471 -0.080223486905586575 -0
		 0.20307977146034556 0.92690531301270418 0.31560283131245004 -0 0.015282683081505835 -0.32528048601407972 0.94549407455376167 -0
		 -3.1716559963490787 0.92922198407811474 1.6615325619815187 1;
	setAttr ".pm[10]" -type "matrix" 0.99240387650610407 -0.117073646887582 0.037792950402147162 -0
		 0.086824088833465138 0.88416740746052946 0.45903112441616034 -0 -0.08715574274765811 -0.45226292882455843 0.8876159753616063 -0
		 -3.4821460744238597 1.3198796982371361 1.1449358100318998 1;
	setAttr ".pm[11]" -type "matrix" 0.99240387650610407 -0.117073646887582 0.037792950402147162 -0
		 0.086824088833465138 0.88416740746052946 0.45903112441616034 -0 -0.08715574274765811 -0.45226292882455843 0.8876159753616063 -0
		 -3.4821483656439609 1.5576279199969605 1.1449326497367289 1;
	setAttr ".pm[12]" -type "matrix" 0.99240387650610407 -0.117073646887582 0.037792950402147162 -0
		 0.086824088833465138 0.88416740746052946 0.45903112441616034 -0 -0.08715574274765811 -0.45226292882455843 0.8876159753616063 -0
		 -3.4821462056340025 0.9948867418824211 1.1449323944330512 1;
	setAttr ".pm[13]" -type "matrix" -7.6404007835923496e-16 1.0000000000000002 1.6122716181661327e-15 -0
		 -0.34202014332566805 -1.5081363539692345e-15 0.93969262078590887 0 0.93969262078590887 -7.6326875940729962e-17 0.34202014332566832 -0
		 2.979669347194049 -0.34046608396856065 -6.3058999059259886 1;
	setAttr ".pm[14]" -type "matrix" 0.99240387650610418 -0.11333427365274984 0.047852777466527441 -0
		 0.08682408883346511 0.92081008213048676 0.38022410529197764 -0 -0.087155742747658013 -0.37318110223114176 0.92365564007570156 -0
		 -3.5285126432442948 1.4557713136534227 1.191275332265217 1;
	setAttr ".pm[15]" -type "matrix" 0.99240387650610418 -0.11333427365274984 0.047852777466527441 -0
		 0.08682408883346511 0.92081008213048676 0.38022410529197764 -0 -0.087155742747658013 -0.37318110223114176 0.92365564007570156 -0
		 -3.5285149344643956 1.7302049688544043 1.1912721719700461 1;
	setAttr ".pm[16]" -type "matrix" 0.99240387650610418 -0.11333427365274984 0.047852777466527441 -0
		 0.08682408883346511 0.92081008213048676 0.38022410529197764 -0 -0.087155742747658013 -0.37318110223114176 0.92365564007570156 -0
		 -3.5285127744544376 1.090888330697706 1.1912719166663686 1;
	setAttr ".pm[17]" -type "matrix" 0.97442545380217893 -0.13467383450760836 0.17988327682537739 -0
		 0.085251180658794626 0.96221966452639318 0.25858374541915308 -0 -0.20791169081775943 -0.23663532174578913 0.94909243665913134 -0
		 -3.5506444852358165 1.6384536395020719 0.88920101738878166 1;
	setAttr ".pm[18]" -type "matrix" 0.97442545380217893 -0.13467383450760836 0.17988327682537739 -0
		 0.085251180658794626 0.96221966452639318 0.25858374541915308 -0 -0.20791169081775943 -0.23663532174578913 0.94909243665913134 -0
		 -3.5506467764559173 1.8458535485860423 0.88919785709361188 1;
	setAttr ".pm[19]" -type "matrix" 0.97442545380217893 -0.13467383450760836 0.17988327682537739 -0
		 0.085251180658794626 0.96221966452639318 0.25858374541915308 -0 -0.20791169081775943 -0.23663532174578913 0.94909243665913134 -0
		 -3.5506446164459575 1.3563460668195817 0.88919760178993434 1;
	setAttr ".pm[20]" -type "matrix" 0.99240387650610395 -0.1133342736527499 0.047852777466527538 -0
		 0.086824088833465179 0.92081008213048665 0.38022410529197748 -0 -0.087155742747658152 -0.3731811022311417 0.92365564007570133 -0
		 -3.5285126432442913 1.4167587507109036 1.3517150712905728 1;
	setAttr ".pm[21]" -type "matrix" 0.99240387650610395 -0.1133342736527499 0.047852777466527538 -0
		 0.086824088833465179 0.92081008213048665 0.38022410529197748 -0 -0.087155742747658152 -0.3731811022311417 0.92365564007570133 -0
		 -3.5285149344643929 1.6707955559938474 1.3517119109954023 1;
	setAttr ".pm[22]" -type "matrix" 0.99240387650610395 -0.1133342736527499 0.047852777466527538 -0
		 0.086824088833465179 0.92081008213048665 0.38022410529197748 -0 -0.087155742747658152 -0.3731811022311417 0.92365564007570133 -0
		 -3.5285127744544353 1.0908883306977057 1.3517116556917252 1;
	setAttr ".pm[23]" -type "matrix" 0.051392986334441539 -0.0098900592258724974 0.99862953475457394 -0
		 -0.98063659703802408 0.18871357193858909 0.052335956242944147 0 -0.18897255225379236 -0.98198236974738395 -5.880712583561377e-16 -0
		 -3.9536789212407526 -0.22519713567839245 -0.75686251415292016 1;
	setAttr ".pm[24]" -type "matrix" 0.30907305664546958 0.95097705299239221 0.01079306896722633 -0
		 -0.95039774346624917 0.3092614503650673 -0.033188620525062072 0 -0.034899496702500962 -6.9388939039072284e-18 0.99939082701909576 -0
		 3.3745861148480039 -3.0756050367414427 2.1849155604574615 1;
	setAttr ".pm[25]" -type "matrix" 0.064140613941139346 -0.059009364825845415 -0.99619469809174577 -0
		 -0.73313057207842891 0.67448012631215482 -0.087155742747658305 0 0.67705653082088346 0.73593101176182973 2.0122792321330974e-15 -0
		 -0.32005268685837251 1.4101529461163209 3.3107087437284277 1;
	setAttr ".pm[26]" -type "matrix" 0.064140613941139346 -0.059009364825845415 -0.99619469809174577 -0
		 -0.73313057207842891 0.67448012631215482 -0.087155742747658305 0 0.67705653082088346 0.73593101176182973 2.0122792321330974e-15 -0
		 -0.61228481480583752 1.410155865156826 3.3107035005113334 1;
	setAttr ".pm[27]" -type "matrix" 0.087150738332464867 0.0009339710928283184 -0.99619469809174577 -0
		 -0.9961374973643401 -0.010675338440271267 -0.087155742747658305 0 -0.010716116498833401 0.99994258077510834 2.0124960725675945e-15 -0
		 -1.2215975700101092 0.93991459378472997 3.3107087437284282 1;
	setAttr ".pm[28]" -type "matrix" 5.0859746657858491e-16 -1 -2.3889514881478335e-15 -0
		 0.20822903281499017 2.3728350507917653e-15 -0.97808009380261585 0 0.97808009380261585 -5.1124583889042694e-17 0.20822903281499011 -0
		 -0.81696219337989706 0.34046608396855454 6.9264259049493271 1;
	setAttr ".pm[29]" -type "matrix" 0.94743745911883781 -0.18718746252691471 0.25946698235262122 -0
		 0.082890037072704384 0.92690531301270418 0.36602702422486066 -0 -0.30901699437494734 -0.32528048601407972 0.89370079031290883 -0
		 -3.5486556850378284 0.59054445084082674 0.47655702211774709 1;
	setAttr ".pm[30]" -type "matrix" 0.99240387650610384 -0.11159519562603178 0.051778935957058285 -0
		 0.086824088833465179 0.93351877941675709 0.34785667461540265 -0 -0.08715574274765818 -0.34071865342161006 0.93611680666285879 -0
		 -3.4024021231289332 0.31967373196879612 1.2207682058100926 1;
	setAttr ".pm[31]" -type "matrix" -3.3001592463100862e-17 1.0378329885163656e-15 1.0000000000000002 -0
		 1.110223024625157e-16 1.0000000000000002 -1.0839684411261426e-15 0 -1 3.3306690738754691e-16 -7.8880607044110172e-17 0
		 -0.47351400000000082 -6.1800600000000001 6.7089856325021455e-15 1;
	setAttr ".pm[32]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -5.3858509288309335 1.3648355397842367 1;
	setAttr ".pm[33]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -5.7893785667962181 1.3311465397842366 1;
	setAttr ".pm[34]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -5.9220300000000003 1.31829 1;
	setAttr ".pm[35]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -6.0857799999999997 1.3024199999999999 1;
	setAttr ".pm[36]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -6.3223189425434061 1.2794895397842365 1;
	setAttr ".pm[37]" -type "matrix" 3.3710287042017595e-17 1.4888710110224568e-16 -1 -0
		 0.22082565259779319 0.97531329897359564 1.4888710110224568e-16 -0 0.97531329897359575 -0.22082565259779319 -3.3710287042017576e-17 -0
		 -1.2596355135517581 -6.4343558957852665 -9.8224088381834652e-16 1;
	setAttr ".pm[38]" -type "matrix" 3.3710287042017595e-17 1.4888710110224568e-16 -1 -0
		 0.22082565259779319 0.97531329897359564 1.4888710110224568e-16 -0 0.97531329897359575 -0.22082565259779319 -3.3710287042017576e-17 -0
		 -1.3660986425158561 -6.4343533327780138 -9.8224067040512153e-16 1;
	setAttr ".pm[39]" -type "matrix" 0.99999999999999978 -1.7665337189882834e-16 -1.3473317794803059e-16 -0
		 -1.0866781415486496e-16 -0.61813650066098691 -0.78607077706182982 0 -1.6489811260486039e-16 0.78607077706183004 -0.61813650066098691 -0
		 1.1886399999999981 -3.6492109535184984 -7.5862500999057865 1;
	setAttr ".pm[40]" -type "matrix" 0.25968219660115027 -0.11223474405279905 0.95914989391429528 -0
		 -0.71347097139603666 -0.69163757503666501 0.1122347440527993 0 0.65078746895096029 -0.71347097139603677 -0.25968219660115016 -0
		 5.7427181235196816 3.4971092439456388 -0.37221241239047737 1;
	setAttr ".pm[41]" -type "matrix" 0.28153963783430824 0.9541012767186019 -0.10210869743592121 -0
		 0.89652467139407743 -0.29948393159603176 -0.32642439905363224 0 -0.34202185004743213 0.00035844067462478807 -0.93969193122555561 -0
		 -1.5463737974153997 3.0677040822579014 -1.7317343364861939 1;
	setAttr ".pm[42]" -type "matrix" -0.034899496702500477 3.6751783587152361e-15 -0.99939082701909576 -0
		 5.8717972704673182e-18 1 3.6772134950519597e-15 -0 0.99939082701909576 1.2246467991473542e-16 -0.034899496702500477 -0
		 0.61184182400610554 -6.9454157686629028 -0.3346640681450419 1;
	setAttr ".pm[43]" -type "matrix" 3.3688522058196089e-16 -2.8716019836508211e-16 0.99999999999999978 -0
		 -0.99999999999999956 -1.5543122344752186e-15 3.3542139569519687e-16 0 1.7208456881689917e-15 -1 -5.5347617122366592e-16 -0
		 -8.8742099999999926 -1.4636300000000153 1.1824400000000019 1;
	setAttr ".pm[44]" -type "matrix" 0.97904292443664531 -0.18718746151201215 -0.080223477631115522 -0
		 -0.20307976673637482 -0.92690532968469208 -0.3156027853876 0 -0.015282684739296424 0.32528043909033461 -0.94549409067024737 -0
		 3.1716560010848567 -0.92922205023678328 -1.6615325159418819 1;
	setAttr ".pm[45]" -type "matrix" 0.99240387650610407 -0.11707364688758257 0.0377929504021473 -0
		 -0.086824088833465457 -0.88416740746052902 -0.45903112441616134 0 0.087155742747658582 0.45226292882455943 -0.88761597536160619 -0
		 3.4821483364982502 -1.3198783677524719 -1.144935264659773 1;
	setAttr ".pm[46]" -type "matrix" 0.99240387650610407 -0.11707364688758257 0.0377929504021473 -0
		 -0.086824088833465457 -0.88416740746052902 -0.45903112441616134 0 0.087155742747658582 0.45226292882455943 -0.88761597536160619 -0
		 3.4821439619615617 -1.5576282862782784 -1.1449328489149195 1;
	setAttr ".pm[47]" -type "matrix" 0.99240387650610407 -0.11707364688758257 0.0377929504021473 -0
		 -0.086824088833465457 -0.88416740746052902 -0.45903112441616134 0 0.087155742747658582 0.45226292882455943 -0.88761597536160619 -0
		 3.4821463348367963 -0.9948850579389118 -1.1449316012642643 1;
	setAttr ".pm[48]" -type "matrix" 7.5943727601150582e-17 1 -2.0865367673337432e-16 -0
		 0.34202014332566832 -1.8027056596783773e-16 -0.93969262078590854 0 -0.93969262078590854 1.7068181293279903e-16 -0.34202014332566832 -0
		 -2.9796682543307011 0.34046600000000132 6.3058954657268798 1;
	setAttr ".pm[49]" -type "matrix" 0.99240387650610407 -0.11333427365275053 0.047852777466527274 -0
		 -0.086824088833465443 -0.92081008213048476 -0.38022410529198247 0 0.087155742747658582 0.37318110223114653 -0.92365564007569978 -0
		 3.5285101408965343 -1.4557704556559676 -1.191275247368782 1;
	setAttr ".pm[50]" -type "matrix" 0.99240387650610407 -0.11333427365275053 0.047852777466527274 -0
		 -0.086824088833465443 -0.92081008213048476 -0.38022410529198247 0 0.087155742747658582 0.37318110223114653 -0.92365564007569978 -0
		 3.5285172356971768 -1.7302047084297842 -1.191272062835089 1;
	setAttr ".pm[51]" -type "matrix" 0.99240387650610407 -0.11333427365275053 0.047852777466527274 -0
		 -0.086824088833465443 -0.92081008213048476 -0.38022410529198247 0 0.087155742747658582 0.37318110223114653 -0.92365564007569978 -0
		 3.5285140893886235 -1.0908857796167939 -1.1912748037777976 1;
	setAttr ".pm[52]" -type "matrix" 0.9744254538021786 -0.13467383450760848 0.17988327682537802 -0
		 -0.085251180658794737 -0.96221966452639307 -0.25858374541915236 0 0.20791169081776001 0.23663532174578833 -0.94909243665913134 -0
		 3.5506419541461973 -1.6384542369495221 -0.88920334917218347 1;
	setAttr ".pm[53]" -type "matrix" 0.9744254538021786 -0.13467383450760848 0.17988327682537802 -0
		 -0.085251180658794737 -0.96221966452639307 -0.25858374541915236 0 0.20791169081776001 0.23663532174578833 -0.94909243665913134 -0
		 3.5506503699278253 -1.8458516417298354 -0.88919892586229832 1;
	setAttr ".pm[54]" -type "matrix" 0.9744254538021786 -0.13467383450760848 0.17988327682537802 -0
		 -0.085251180658794737 -0.96221966452639307 -0.25858374541915236 0 0.20791169081776001 0.23663532174578833 -0.94909243665913134 -0
		 3.5506430695081677 -1.3563480423143575 -0.88919647731174778 1;
	setAttr ".pm[55]" -type "matrix" 0.99240387650610384 -0.11333427365275064 0.047852777466527323 -0
		 -0.086824088833465526 -0.92081008213048454 -0.38022410529198236 0 0.087155742747658652 0.37318110223114648 -0.92365564007569956 -0
		 3.5285089286635607 -1.4167585497786874 -1.3517133946478894 1;
	setAttr ".pm[56]" -type "matrix" 0.99240387650610384 -0.11333427365275064 0.047852777466527323 -0
		 -0.086824088833465526 -0.92081008213048454 -0.38022410529198236 0 0.087155742747658652 0.37318110223114648 -0.92365564007569956 -0
		 3.5285176435673051 -1.6707971593066693 -1.3517119317206572 1;
	setAttr ".pm[57]" -type "matrix" 0.99240387650610384 -0.11333427365275064 0.047852777466527323 -0
		 -0.086824088833465526 -0.92081008213048454 -0.38022410529198236 0 0.087155742747658652 0.37318110223114648 -0.92365564007569956 -0
		 3.5285117677159912 -1.0908830798654672 -1.351712512834369 1;
	setAttr ".pm[58]" -type "matrix" 0.051392986334441629 -0.0098900741066119575 0.99862953460720028 -0
		 0.98063659703802386 -0.1887135711587225 -0.052335959054995378 0 0.18897255225379223 0.98198236974738362 1.4632677777792751e-08 -0
		 3.9536755231333078 0.22519735725206291 0.75686227998246114 1;
	setAttr ".pm[59]" -type "matrix" 0.30907305664546952 0.95097705299239221 0.010793068967228548 -0
		 0.95039774346624917 -0.30926145036506708 0.033188620525061337 0 0.034899496702500948 2.3401419690927124e-15 -0.99939082701909565 -0
		 -3.3745880680820464 3.075601193843672 -2.184912414763037 1;
	setAttr ".pm[60]" -type "matrix" 0.064140613941139943 -0.05900936482584522 -0.99619469809174555 -0
		 0.73313057207842891 -0.67448012631215426 0.087155742747658707 0 -0.67705653082088302 -0.73593101176182985 -2.6645352591003749e-15 0
		 0.32005209706239895 -1.4101530523011359 -3.3107076682855503 1;
	setAttr ".pm[61]" -type "matrix" 0.064140613941139943 -0.05900936482584522 -0.99619469809174555 -0
		 0.73313057207842891 -0.67448012631215426 0.087155742747658707 0 -0.67705653082088302 -0.73593101176182985 -2.6645352591003749e-15 0
		 0.61228481480583941 -1.4101558651568233 -3.3107035005113308 1;
	setAttr ".pm[62]" -type "matrix" 0.087150738332465158 0.00093397109282883958 -0.99619469809174532 -0
		 0.99613749736433943 0.010675338440271211 0.087155742747658693 0 0.01071611649883345 -0.99994258077510778 -2.6715825732215303e-15 -0
		 1.2215979735505704 -0.93991418294453399 -3.3107129496411867 1;
	setAttr ".pm[63]" -type "matrix" 1.0053048532868574e-16 -1 -2.0561837468210796e-16 -0
		 -0.20822903281499011 -1.860011226727425e-16 0.97808009380261596 0 -0.97808009380261596 -7.3911604012725326e-17 -0.20822903281499006 -0
		 0.81696076582402699 -0.34046599999999871 -6.9264215607805184 1;
	setAttr ".pm[64]" -type "matrix" 0.94743745911883759 -0.18718745866055533 0.25946698514193239 -0
		 -0.082890037072704523 -0.92690531846693203 -0.36602701041289398 0 0.3090169943749479 0.32528047269689886 -0.89370079515996581 -0
		 3.5486542067299749 -0.59054451113894302 -0.47655562465499401 1;
	setAttr ".pm[65]" -type "matrix" 0.99240387650610384 -0.11159519562603235 0.051778935957058493 -0
		 -0.086824088833465665 -0.93351877941675754 -0.34785667461540148 0 0.087155742747658485 0.34071865342160867 -0.93611680666285935 -0
		 3.40240098034517 -0.31967388730509622 -1.2207665365214064 1;
	setAttr ".pm[66]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0 -0.0208956 1.15096 1;
	setAttr ".pm[67]" -type "matrix" 4.2197545571622218e-17 -4.0374655851578412e-16 -1 -0
		 -0.052558833122770765 0.99861782933250931 -3.5778697318755139e-16 0 0.99861782933250942 0.052558833122770876 2.0528580363778465e-17 -0
		 1.1914292734643195 -6.2037788674163918 2.2566989493996823e-15 1;
	setAttr ".pm[68]" -type "matrix" 3.2828293985205751e-17 -4.0461613843200757e-16 -1 -0
		 -0.029399051601886949 0.9995677544643532 -3.5778697318755139e-16 0 0.99956775446435331 0.029399051601887057 2.0528580363778468e-17 -0
		 0.98118677945915678 -6.2281936531943449 2.2566989493996827e-15 1;
	setAttr ".pm[69]" -type "matrix" 1.6148169232901019e-17 -4.0562439891608359e-16 -1 -0
		 0.011763891800367327 0.99993080303074411 -3.5778697318755129e-16 -0 0.99993080303074422 -0.011763891800367226 2.0528580363778459e-17 -0
		 0.64525396306354943 -6.260053503890215 2.2569842481577485e-15 1;
	setAttr ".pm[70]" -type "matrix" 3.0919383319642269e-17 -4.047664858912378e-16 -1 -0
		 -0.024683834758820959 0.99969530773211035 -3.5778697318755129e-16 0 0.99969530773211046 0.02468383475882106 2.0528580363778465e-17 -0
		 0.77450584820940926 -6.2359708449263653 2.2579732838523779e-15 1;
	setAttr ".pm[71]" -type "matrix" 4.1392652919908931e-17 -4.0382987092321508e-16 -1 -0
		 -0.050568132333245967 0.99872061358135944 -3.5778697318755129e-16 0 0.99872061358135955 0.050568132333246071 2.0528580363778465e-17 -0
		 0.84188952263691352 -6.2162508976888757 2.2583822120722731e-15 1;
	setAttr ".pm[72]" -type "matrix" 2.0918773368960826e-17 -4.0540636562139301e-16 -1 -0
		 1.9963197761541093e-14 0.99999999999999978 -3.5778697318755129e-16 -0 1 -1.9866053246886392e-14 2.0528580363778462e-17 -0
		 0.43491213253805544 -6.2462349401104236 2.2584107419480796e-15 1;
	setAttr ".pm[73]" -type "matrix" -6.0947887130512156e-18 -4.0589995062349023e-16 -1 0
		 0.06651901052377425 0.99778515785660871 -3.5778697318755134e-16 0 0.99778515785660893 -0.066519010523774166 2.0528580363778462e-17 -0
		 -0.075210546645638018 -6.2550860371321733 2.2591810485948584e-15 1;
	setAttr ".pm[74]" -type "matrix" -6.0947887130512156e-18 -4.0589995062349023e-16 -1 0
		 0.06651901052377425 0.99778515785660871 -3.5778697318755134e-16 0 0.99778515785660893 -0.066519010523774166 2.0528580363778462e-17 -0
		 -0.14490117131472577 -6.2550860371321733 2.2604744029647584e-15 1;
	setAttr ".pm[75]" -type "matrix" 1.1102230246251565e-15 -0 -1 -0 1.2246467991473532e-16 -1 1.3596310734468911e-31 0
		 -1 -1.2246467991473532e-16 -1.1102230246251565e-15 0 -0.47351400000000099 6.3069800000000003 -5.257061452823575e-16 1;
	setAttr ".pm[76]" -type "matrix" 5.0859746657858491e-16 -1 -2.3889514881478335e-15 -0
		 0.20822903281499017 2.3728350507917653e-15 -0.97808009380261585 0 0.97808009380261585 -5.1124583889042694e-17 0.20822903281499011 -0
		 -0.81696219337989706 0.34046608396855454 6.9264259049493271 1;
	setAttr ".pm[77]" -type "matrix" -7.6404007835923496e-16 1.0000000000000002 1.6122716181661327e-15 -0
		 -0.34202014332566805 -1.5081363539692345e-15 0.93969262078590887 0 0.93969262078590887 -7.6326875940729962e-17 0.34202014332566832 -0
		 2.979669347194049 -0.34046608396856065 -6.3058999059259886 1;
	setAttr ".pm[78]" -type "matrix" 0.2655263134562153 -0.96406761060331791 0.0083318094049942854 -0
		 -0.82098234408723603 -0.23063125061162981 -0.52229993005776221 0 0.50545402121199845 0.13184410653087653 -0.85272115255439496 -0
		 6.0882141286512832 0.94741051445020907 2.2650227455204743 1;
	setAttr ".pm[79]" -type "matrix" 0.26552631345621525 -0.96406761060331791 0.0083318094049942837 -0
		 0.8209823440872358 0.23063125061162978 0.52229993005776221 -0 -0.50545402121199845 -0.13184410653087641 0.85272115255439496 -0
		 -6.0882146329963138 -0.94741024832638265 -2.2650214035523599 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 22 ".ma";
	setAttr -s 80 ".dpf[0:79]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 22 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 79 ".ifcl";
createNode objectSet -n "skinCluster8Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster8GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster8GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode geomBind -n "geomBind1";
	setAttr ".fo" 0.7;
	setAttr ".mi" 5;
createNode animCurveTU -n "bind_l_upperlid01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 15 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "bind_l_upperlid01_translateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.34046608396857103 15 0.34046608396857103;
	setAttr -s 2 ".kot[0:1]"  5 2;
createNode animCurveTL -n "bind_l_upperlid01_translateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.6223945462036129 15 -0.6223945462036129;
	setAttr -s 2 ".kot[0:1]"  5 2;
createNode animCurveTL -n "bind_l_upperlid01_translateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.63626149168190904 15 -0.63626149168190904;
	setAttr -s 2 ".kot[0:1]"  5 2;
createNode animCurveTA -n "bind_l_upperlid01_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 15 0;
	setAttr -s 2 ".kot[0:1]"  5 2;
createNode animCurveTA -n "bind_l_upperlid01_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 15 11.930869054881185;
	setAttr -s 2 ".kot[0:1]"  5 2;
createNode animCurveTA -n "bind_l_upperlid01_rotateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 15 0;
	setAttr -s 2 ".kot[0:1]"  5 2;
createNode animCurveTU -n "bind_l_upperlid01_scaleX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 15 1;
	setAttr -s 2 ".kot[0:1]"  5 2;
createNode animCurveTU -n "bind_l_upperlid01_scaleY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 15 1;
	setAttr -s 2 ".kot[0:1]"  5 2;
createNode animCurveTU -n "bind_l_upperlid01_scaleZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 15 1;
	setAttr -s 2 ".kot[0:1]"  5 2;
createNode animCurveTA -n "bind_l_lowerlid01_rotateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 14 0;
createNode animCurveTA -n "bind_l_lowerlid01_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 14 18.023513310039892;
createNode animCurveTA -n "bind_l_lowerlid01_rotateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 14 0;
createNode animCurveTU -n "bind_l_lowerlid01_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 14 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "bind_l_lowerlid01_translateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.34046608396857103 14 0.34046608396857103;
createNode animCurveTL -n "bind_l_lowerlid01_translateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.6223945462036129 14 -0.6223945462036129;
createNode animCurveTL -n "bind_l_lowerlid01_translateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.63626149168190893 14 -0.63626149168190893;
createNode animCurveTU -n "bind_l_lowerlid01_scaleX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 14 1;
createNode animCurveTU -n "bind_l_lowerlid01_scaleY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 14 1;
createNode animCurveTU -n "bind_l_lowerlid01_scaleZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 14 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 24 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 20 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 9 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 9 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
	setAttr -s 3 ".t";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "FullBody.di" "DMe_Model_StrippedRN.phl[40]";
connectAttr "DMe_Model_StrippedRN.phl[41]" "groupParts32.ig";
connectAttr "DMe_Model_StrippedRN.phl[42]" "groupParts18.ig";
connectAttr "DMe_Model_StrippedRN.phl[43]" "groupParts26.ig";
connectAttr "DMe_Model_StrippedRN.phl[44]" "groupParts28.ig";
connectAttr "DMe_Model_StrippedRN.phl[45]" "groupParts30.ig";
connectAttr "DMe_Model_StrippedRN.phl[46]" "groupParts24.ig";
connectAttr "DMe_Model_StrippedRN.phl[47]" "groupParts22.ig";
connectAttr "DMe_Model_StrippedRN.phl[48]" "groupParts20.ig";
connectAttr "DMe_Model_Stripped:LPupilShapeDeformed.iog" "DMe_Model_StrippedRN.phl[49]"
		;
connectAttr "DMe_Model_Stripped:RPupilShapeDeformed.iog" "DMe_Model_StrippedRN.phl[50]"
		;
connectAttr "DMe_Model_Stripped:LCorneaShapeDeformed.iog" "DMe_Model_StrippedRN.phl[51]"
		;
connectAttr "DMe_Model_Stripped:RCorneaShapeDeformed.iog" "DMe_Model_StrippedRN.phl[52]"
		;
connectAttr "DMe_Model_StrippedRN.phl[53]" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[3].gco"
		;
connectAttr "DMe_Model_StrippedRN.phl[54]" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[2].gco"
		;
connectAttr "DMe_Model_StrippedRN.phl[55]" "MainBodyShapeDeformed.iog.og[2].gco"
		;
connectAttr "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[3]" "DMe_Model_StrippedRN.phl[56]"
		;
connectAttr "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[2]" "DMe_Model_StrippedRN.phl[57]"
		;
connectAttr "MainBodyShapeDeformed.iog.og[2]" "DMe_Model_StrippedRN.phl[58]";
connectAttr "groupId4.msg" "DMe_Model_StrippedRN.phl[59]";
connectAttr "groupId12.msg" "DMe_Model_StrippedRN.phl[60]";
connectAttr "groupId33.msg" "DMe_Model_StrippedRN.phl[61]";
connectAttr "DMe_Model_StrippedRN.phl[62]" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[5].gco"
		;
connectAttr "DMe_Model_StrippedRN.phl[63]" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[3].gco"
		;
connectAttr "DMe_Model_StrippedRN.phl[64]" "MainBodyShapeDeformed.iog.og[3].gco"
		;
connectAttr "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[5]" "DMe_Model_StrippedRN.phl[65]"
		;
connectAttr "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[3]" "DMe_Model_StrippedRN.phl[66]"
		;
connectAttr "MainBodyShapeDeformed.iog.og[3]" "DMe_Model_StrippedRN.phl[67]";
connectAttr "groupId6.msg" "DMe_Model_StrippedRN.phl[68]";
connectAttr "groupId13.msg" "DMe_Model_StrippedRN.phl[69]";
connectAttr "groupId34.msg" "DMe_Model_StrippedRN.phl[70]";
connectAttr "DMe_Model_StrippedRN.phl[71]" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[6].gco"
		;
connectAttr "DMe_Model_StrippedRN.phl[72]" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[6].gco"
		;
connectAttr "DMe_Model_StrippedRN.phl[73]" "MainBodyShapeDeformed.iog.og[6].gco"
		;
connectAttr "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[6]" "DMe_Model_StrippedRN.phl[74]"
		;
connectAttr "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[6]" "DMe_Model_StrippedRN.phl[75]"
		;
connectAttr "MainBodyShapeDeformed.iog.og[6]" "DMe_Model_StrippedRN.phl[76]";
connectAttr "groupId7.msg" "DMe_Model_StrippedRN.phl[77]";
connectAttr "groupId16.msg" "DMe_Model_StrippedRN.phl[78]";
connectAttr "groupId37.msg" "DMe_Model_StrippedRN.phl[79]";
connectAttr "DMe_Model_StrippedRN.phl[80]" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[7].gco"
		;
connectAttr "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[7]" "DMe_Model_StrippedRN.phl[81]"
		;
connectAttr "groupId8.msg" "DMe_Model_StrippedRN.phl[82]";
connectAttr "DMe_Model_Stripped:LIris1ShapeDeformed.iog" "DMe_Model_StrippedRN.phl[83]"
		;
connectAttr "DMe_Model_Stripped:RIrisShapeDeformed.iog" "DMe_Model_StrippedRN.phl[84]"
		;
connectAttr "DMe_Model_StrippedRN.phl[85]" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[2].gco"
		;
connectAttr "DMe_Model_StrippedRN.phl[86]" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[4].gco"
		;
connectAttr "DMe_Model_StrippedRN.phl[87]" "MainBodyShapeDeformed.iog.og[4].gco"
		;
connectAttr "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[2]" "DMe_Model_StrippedRN.phl[88]"
		;
connectAttr "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[4]" "DMe_Model_StrippedRN.phl[89]"
		;
connectAttr "MainBodyShapeDeformed.iog.og[4]" "DMe_Model_StrippedRN.phl[90]";
connectAttr "groupId3.msg" "DMe_Model_StrippedRN.phl[91]";
connectAttr "groupId14.msg" "DMe_Model_StrippedRN.phl[92]";
connectAttr "groupId35.msg" "DMe_Model_StrippedRN.phl[93]";
connectAttr "DMe_Model_StrippedRN.phl[94]" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[8].gco"
		;
connectAttr "DMe_Model_StrippedRN.phl[95]" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[5].gco"
		;
connectAttr "DMe_Model_StrippedRN.phl[96]" "MainBodyShapeDeformed.iog.og[5].gco"
		;
connectAttr "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[8]" "DMe_Model_StrippedRN.phl[97]"
		;
connectAttr "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[5]" "DMe_Model_StrippedRN.phl[98]"
		;
connectAttr "MainBodyShapeDeformed.iog.og[5]" "DMe_Model_StrippedRN.phl[99]";
connectAttr "groupId9.msg" "DMe_Model_StrippedRN.phl[100]";
connectAttr "groupId15.msg" "DMe_Model_StrippedRN.phl[101]";
connectAttr "groupId36.msg" "DMe_Model_StrippedRN.phl[102]";
connectAttr "DMe_Model_Stripped:tongueShapeDeformed.iog" "DMe_Model_StrippedRN.phl[103]"
		;
connectAttr "bind_root01.s" "bind_pelvis.is";
connectAttr "bind_pelvis.s" "bind_l_thigh.is";
connectAttr "bind_l_thigh.s" "bind_l_shin01.is";
connectAttr "bind_l_shin01.s" "be_l_ankle01.is";
connectAttr "be_l_ankle01.s" "bind_l_ankle01.is";
connectAttr "bind_l_ankle01.s" "bind_l_foot01.is";
connectAttr "bind_l_foot01.s" "be_l_toe01.is";
connectAttr "bind_pelvis.s" "be_pelvis.is";
connectAttr "bind_pelvis.s" "bind_r_thigh.is";
connectAttr "bind_r_thigh.s" "bind_r_shin01.is";
connectAttr "bind_r_shin01.s" "be_r_ankle01.is";
connectAttr "be_r_ankle01.s" "bind_r_ankle01.is";
connectAttr "bind_r_ankle01.s" "bind_r_foot01.is";
connectAttr "bind_r_foot01.s" "be_r_toe01.is";
connectAttr "bind_root01.s" "bind_back01.is";
connectAttr "bind_back01.s" "bind_chest01.is";
connectAttr "bind_chest01.s" "bind_neck_a01.is";
connectAttr "bind_neck_a01.s" "bind_neck_b01.is";
connectAttr "bind_neck_b01.s" "bind_neck_c01.is";
connectAttr "bind_neck_c01.s" "bind_neck_d01.is";
connectAttr "bind_neck_d01.s" "bind_neck_e01.is";
connectAttr "bind_neck_e01.s" "bind_head01.is";
connectAttr "bind_head01.s" "be_head01.is";
connectAttr "bind_head01.s" "bind_jaw01.is";
connectAttr "bind_jaw01.s" "be_jaw01.is";
connectAttr "bind_jaw01.s" "bind_lowerteeth01.is";
connectAttr "bind_lowerteeth01.s" "be_lowerteeth01.is";
connectAttr "bind_jaw01.s" "bind_tongue_a01.is";
connectAttr "bind_tongue_a01.s" "bind_tongue_b01.is";
connectAttr "bind_tongue_b01.s" "bind_tongue_c01.is";
connectAttr "bind_tongue_c01.s" "bind_tongue_d01.is";
connectAttr "bind_tongue_d01.s" "bind_tongue_e01.is";
connectAttr "bind_tongue_e01.s" "bind_tongue_f01.is";
connectAttr "bind_tongue_f01.s" "bind_tongue_g01.is";
connectAttr "bind_tongue_g01.s" "bind_tongue_h01.is";
connectAttr "bind_tongue_h01.s" "be_tongue_i01.is";
connectAttr "bind_head01.s" "bind_upperteeth01.is";
connectAttr "bind_upperteeth01.s" "be_upperteeth01.is";
connectAttr "bind_head01.s" "bind_l_eye01.is";
connectAttr "bind_l_eye01.s" "be_l_eye01.is";
connectAttr "bind_head01.s" "bind_r_eye01.is";
connectAttr "bind_r_eye01.s" "be_r_eye01.is";
connectAttr "bind_l_ear01.s" "be_l_ear01.is";
connectAttr "bind_head01.s" "bind_nose01.is";
connectAttr "bind_nose01.s" "bind_nose_a01.is";
connectAttr "bind_nose_a01.s" "joint3.is";
connectAttr "bind_r_ear01.s" "be_r_ear01.is";
connectAttr "bind_head01.s" "bind_l_upperlid01.is";
connectAttr "bind_l_upperlid01_scaleX.o" "bind_l_upperlid01.sx";
connectAttr "bind_l_upperlid01_scaleY.o" "bind_l_upperlid01.sy";
connectAttr "bind_l_upperlid01_scaleZ.o" "bind_l_upperlid01.sz";
connectAttr "bind_l_upperlid01_visibility.o" "bind_l_upperlid01.v";
connectAttr "bind_l_upperlid01_translateX.o" "bind_l_upperlid01.tx";
connectAttr "bind_l_upperlid01_translateY.o" "bind_l_upperlid01.ty";
connectAttr "bind_l_upperlid01_translateZ.o" "bind_l_upperlid01.tz";
connectAttr "bind_l_upperlid01_rotateX.o" "bind_l_upperlid01.rx";
connectAttr "bind_l_upperlid01_rotateY.o" "bind_l_upperlid01.ry";
connectAttr "bind_l_upperlid01_rotateZ.o" "bind_l_upperlid01.rz";
connectAttr "bind_l_upperlid01.s" "be_l_upperlid01.is";
connectAttr "bind_head01.s" "bind_l_lowerlid01.is";
connectAttr "bind_l_lowerlid01_scaleX.o" "bind_l_lowerlid01.sx";
connectAttr "bind_l_lowerlid01_scaleY.o" "bind_l_lowerlid01.sy";
connectAttr "bind_l_lowerlid01_scaleZ.o" "bind_l_lowerlid01.sz";
connectAttr "bind_l_lowerlid01_rotateX.o" "bind_l_lowerlid01.rx";
connectAttr "bind_l_lowerlid01_rotateY.o" "bind_l_lowerlid01.ry";
connectAttr "bind_l_lowerlid01_rotateZ.o" "bind_l_lowerlid01.rz";
connectAttr "bind_l_lowerlid01_visibility.o" "bind_l_lowerlid01.v";
connectAttr "bind_l_lowerlid01_translateX.o" "bind_l_lowerlid01.tx";
connectAttr "bind_l_lowerlid01_translateY.o" "bind_l_lowerlid01.ty";
connectAttr "bind_l_lowerlid01_translateZ.o" "bind_l_lowerlid01.tz";
connectAttr "bind_l_lowerlid01.s" "be_l_lowerlid01.is";
connectAttr "bind_head01.s" "bind_r_upperlid01.is";
connectAttr "bind_r_upperlid01.s" "be_r_upperlid01.is";
connectAttr "bind_head01.s" "bind_r_lowerlid01.is";
connectAttr "bind_r_lowerlid01.s" "be_r_lowerlid01.is";
connectAttr "bind_chest01.s" "bind_l_shoulder01.is";
connectAttr "bind_l_shoulder01.s" "bind_l_elbow01.is";
connectAttr "bind_l_elbow01.s" "|Skeleton01|bind_root01|bind_back01|bind_chest01|bind_l_shoulder01|bind_l_elbow01|bind_l_wrist01.is"
		;
connectAttr "bind_chest01.s" "bind_r_shoulder01.is";
connectAttr "bind_r_shoulder01.s" "bind_r_elbow01.is";
connectAttr "bind_r_elbow01.s" "|Skeleton01|bind_root01|bind_back01|bind_chest01|bind_r_shoulder01|bind_r_elbow01|bind_r_wrist01.is"
		;
connectAttr "|bind_l_wrist01.s" "bind_l_hand01.is";
connectAttr "bind_l_hand01.s" "be_l_hand01.is";
connectAttr "bind_l_hand01.s" "bind_l_ringknuckle01.is";
connectAttr "bind_l_ringknuckle01.s" "bind_l_ring_a01.is";
connectAttr "bind_l_ring_a01.s" "bind_l_ring_b01.is";
connectAttr "bind_l_ring_b01.s" "be_l_ring_c01.is";
connectAttr "bind_l_hand01.s" "bind_l_pinkyknuckle01.is";
connectAttr "bind_l_pinkyknuckle01.s" "bind_l_pinky_a01.is";
connectAttr "bind_l_pinky_a01.s" "bind_l_pinky_b01.is";
connectAttr "bind_l_pinky_b01.s" "be_l_pinky_c01.is";
connectAttr "bind_l_hand01.s" "bind_l_indexknuckle01.is";
connectAttr "bind_l_indexknuckle01.s" "bind_l_index_a01.is";
connectAttr "bind_l_index_a01.s" "bind_l_index_b01.is";
connectAttr "bind_l_index_b01.s" "be_l_index_c01.is";
connectAttr "bind_l_hand01.s" "bind_l_middleknuckle01.is";
connectAttr "bind_l_middleknuckle01.s" "bind_l_middle_a01.is";
connectAttr "bind_l_middle_a01.s" "bind_l_middle_b01.is";
connectAttr "bind_l_middle_b01.s" "be_l_middle_c01.is";
connectAttr "bind_l_hand01.s" "bind_l_thumbknuckle01.is";
connectAttr "bind_l_thumbknuckle01.s" "bind_l_thumb_a01.is";
connectAttr "bind_l_thumb_a01.s" "bind_l_thumb_b01.is";
connectAttr "bind_l_thumb_b01.s" "be_l_thumb_c01.is";
connectAttr "|bind_r_wrist01.s" "bind_r_hand01.is";
connectAttr "bind_r_hand01.s" "be_r_hand01.is";
connectAttr "bind_r_hand01.s" "bind_r_ringknuckle01.is";
connectAttr "bind_r_ringknuckle01.s" "bind_r_ring_a01.is";
connectAttr "bind_r_ring_a01.s" "bind_r_ring_b01.is";
connectAttr "bind_r_ring_b01.s" "be_r_ring_c01.is";
connectAttr "bind_r_hand01.s" "bind_r_pinkyknuckle01.is";
connectAttr "bind_r_pinkyknuckle01.s" "bind_r_pinky_a01.is";
connectAttr "bind_r_pinky_a01.s" "bind_r_pinky_b01.is";
connectAttr "bind_r_pinky_b01.s" "be_r_pinky_c01.is";
connectAttr "bind_r_hand01.s" "bind_r_indexknuckle01.is";
connectAttr "bind_r_indexknuckle01.s" "bind_r_index_a01.is";
connectAttr "bind_r_index_a01.s" "bind_r_index_b01.is";
connectAttr "bind_r_index_b01.s" "be_r_index_c01.is";
connectAttr "bind_r_hand01.s" "bind_r_middleknuckle01.is";
connectAttr "bind_r_middleknuckle01.s" "bind_r_middle_a01.is";
connectAttr "bind_r_middle_a01.s" "bind_r_middle_b01.is";
connectAttr "bind_r_middle_b01.s" "be_r_middle_c01.is";
connectAttr "bind_r_hand01.s" "bind_r_thumbknuckle01.is";
connectAttr "bind_r_thumbknuckle01.s" "bind_r_thumb_a01.is";
connectAttr "bind_r_thumb_a01.s" "bind_r_thumb_b01.is";
connectAttr "bind_r_thumb_b01.s" "be_r_thumb_c01.is";
connectAttr "groupId11.id" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[1].gid"
		;
connectAttr "tweakSet1.mwc" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[1].gco"
		;
connectAttr "groupId12.id" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[2].gid"
		;
connectAttr "groupId13.id" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[3].gid"
		;
connectAttr "groupId14.id" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[4].gid"
		;
connectAttr "groupId15.id" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[5].gid"
		;
connectAttr "groupId16.id" "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[6].gid"
		;
connectAttr "groupParts16.og" "DMe_Model_Stripped:polySurfaceShape16Deformed.i";
connectAttr "tweak1.vl[0].vt[0]" "DMe_Model_Stripped:polySurfaceShape16Deformed.twl"
		;
connectAttr "skinCluster2GroupId.id" "DMe_Model_Stripped:LIris1ShapeDeformed.iog.og[2].gid"
		;
connectAttr "skinCluster2Set.mwc" "DMe_Model_Stripped:LIris1ShapeDeformed.iog.og[2].gco"
		;
connectAttr "groupId20.id" "DMe_Model_Stripped:LIris1ShapeDeformed.iog.og[3].gid"
		;
connectAttr "tweakSet3.mwc" "DMe_Model_Stripped:LIris1ShapeDeformed.iog.og[3].gco"
		;
connectAttr "skinCluster2.og[0]" "DMe_Model_Stripped:LIris1ShapeDeformed.i";
connectAttr "tweak3.vl[0].vt[0]" "DMe_Model_Stripped:LIris1ShapeDeformed.twl";
connectAttr "skinCluster3GroupId.id" "DMe_Model_Stripped:LPupilShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster3Set.mwc" "DMe_Model_Stripped:LPupilShapeDeformed.iog.og[0].gco"
		;
connectAttr "groupId22.id" "DMe_Model_Stripped:LPupilShapeDeformed.iog.og[1].gid"
		;
connectAttr "tweakSet4.mwc" "DMe_Model_Stripped:LPupilShapeDeformed.iog.og[1].gco"
		;
connectAttr "skinCluster3.og[0]" "DMe_Model_Stripped:LPupilShapeDeformed.i";
connectAttr "tweak4.vl[0].vt[0]" "DMe_Model_Stripped:LPupilShapeDeformed.twl";
connectAttr "skinCluster4GroupId.id" "DMe_Model_Stripped:LCorneaShapeDeformed.iog.og[2].gid"
		;
connectAttr "skinCluster4Set.mwc" "DMe_Model_Stripped:LCorneaShapeDeformed.iog.og[2].gco"
		;
connectAttr "groupId24.id" "DMe_Model_Stripped:LCorneaShapeDeformed.iog.og[3].gid"
		;
connectAttr "tweakSet5.mwc" "DMe_Model_Stripped:LCorneaShapeDeformed.iog.og[3].gco"
		;
connectAttr "skinCluster4.og[0]" "DMe_Model_Stripped:LCorneaShapeDeformed.i";
connectAttr "tweak5.vl[0].vt[0]" "DMe_Model_Stripped:LCorneaShapeDeformed.twl";
connectAttr "skinCluster7GroupId.id" "DMe_Model_Stripped:RPupilShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster7Set.mwc" "DMe_Model_Stripped:RPupilShapeDeformed.iog.og[0].gco"
		;
connectAttr "groupId30.id" "DMe_Model_Stripped:RPupilShapeDeformed.iog.og[1].gid"
		;
connectAttr "tweakSet8.mwc" "DMe_Model_Stripped:RPupilShapeDeformed.iog.og[1].gco"
		;
connectAttr "skinCluster7.og[0]" "DMe_Model_Stripped:RPupilShapeDeformed.i";
connectAttr "tweak8.vl[0].vt[0]" "DMe_Model_Stripped:RPupilShapeDeformed.twl";
connectAttr "skinCluster6GroupId.id" "DMe_Model_Stripped:RIrisShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster6Set.mwc" "DMe_Model_Stripped:RIrisShapeDeformed.iog.og[0].gco"
		;
connectAttr "groupId28.id" "DMe_Model_Stripped:RIrisShapeDeformed.iog.og[1].gid"
		;
connectAttr "tweakSet7.mwc" "DMe_Model_Stripped:RIrisShapeDeformed.iog.og[1].gco"
		;
connectAttr "skinCluster6.og[0]" "DMe_Model_Stripped:RIrisShapeDeformed.i";
connectAttr "tweak7.vl[0].vt[0]" "DMe_Model_Stripped:RIrisShapeDeformed.twl";
connectAttr "skinCluster5GroupId.id" "DMe_Model_Stripped:RCorneaShapeDeformed.iog.og[0].gid"
		;
connectAttr "skinCluster5Set.mwc" "DMe_Model_Stripped:RCorneaShapeDeformed.iog.og[0].gco"
		;
connectAttr "groupId26.id" "DMe_Model_Stripped:RCorneaShapeDeformed.iog.og[1].gid"
		;
connectAttr "tweakSet6.mwc" "DMe_Model_Stripped:RCorneaShapeDeformed.iog.og[1].gco"
		;
connectAttr "skinCluster5.og[0]" "DMe_Model_Stripped:RCorneaShapeDeformed.i";
connectAttr "tweak6.vl[0].vt[0]" "DMe_Model_Stripped:RCorneaShapeDeformed.twl";
connectAttr "skinCluster1GroupId.id" "DMe_Model_Stripped:tongueShapeDeformed.iog.og[2].gid"
		;
connectAttr "skinCluster1Set.mwc" "DMe_Model_Stripped:tongueShapeDeformed.iog.og[2].gco"
		;
connectAttr "groupId18.id" "DMe_Model_Stripped:tongueShapeDeformed.iog.og[3].gid"
		;
connectAttr "tweakSet2.mwc" "DMe_Model_Stripped:tongueShapeDeformed.iog.og[3].gco"
		;
connectAttr "skinCluster1.og[0]" "DMe_Model_Stripped:tongueShapeDeformed.i";
connectAttr "tweak2.vl[0].vt[0]" "DMe_Model_Stripped:tongueShapeDeformed.twl";
connectAttr "groupId32.id" "MainBodyShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet9.mwc" "MainBodyShapeDeformed.iog.og[1].gco";
connectAttr "groupId33.id" "MainBodyShapeDeformed.iog.og[2].gid";
connectAttr "groupId34.id" "MainBodyShapeDeformed.iog.og[3].gid";
connectAttr "groupId35.id" "MainBodyShapeDeformed.iog.og[4].gid";
connectAttr "groupId36.id" "MainBodyShapeDeformed.iog.og[5].gid";
connectAttr "groupId37.id" "MainBodyShapeDeformed.iog.og[6].gid";
connectAttr "groupId38.id" "MainBodyShapeDeformed.iog.og[7].gid";
connectAttr ":initialShadingGroup.mwc" "MainBodyShapeDeformed.iog.og[7].gco";
connectAttr "skinCluster8GroupId.id" "MainBodyShapeDeformed.iog.og[8].gid";
connectAttr "skinCluster8Set.mwc" "MainBodyShapeDeformed.iog.og[8].gco";
connectAttr "skinCluster8.og[0]" "MainBodyShapeDeformed.i";
connectAttr "tweak9.vl[0].vt[0]" "MainBodyShapeDeformed.twl";
connectAttr "groupId3.id" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[2].gid"
		;
connectAttr "groupId4.id" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[3].gid"
		;
connectAttr "groupId5.id" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[4].gid"
		;
connectAttr ":initialShadingGroup.mwc" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[4].gco"
		;
connectAttr "groupId6.id" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[5].gid"
		;
connectAttr "groupId7.id" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[6].gid"
		;
connectAttr "groupId8.id" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[7].gid"
		;
connectAttr "groupId9.id" "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[8].gid"
		;
connectAttr "groupParts9.og" "DMe_Model_Stripped:BodyMeshShapeDeformed.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Newman:Plane_001SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Newman:Plane_001SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Newman:ArmguardSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Newman:ArmguardSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Newman:CharSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Newman:CharSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Newman:CharSG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Newman:CharSG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Newman:Plane_001SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Newman:Plane_001SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Newman:ArmguardSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Newman:ArmguardSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Newman:CharSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Newman:CharSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Newman:CharSG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Newman:CharSG3.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "FullBody.di" "DMe_Model_StrippedRN.phl[34]";
connectAttr "FullBody.di" "DMe_Model_StrippedRN.phl[35]";
connectAttr "FullBody.di" "DMe_Model_StrippedRN.phl[36]";
connectAttr "FullBody.di" "DMe_Model_StrippedRN.phl[37]";
connectAttr "FullBody.di" "DMe_Model_StrippedRN.phl[38]";
connectAttr "FullBody.di" "DMe_Model_StrippedRN.phl[39]";
connectAttr "DMe_Model_StrippedRNfosterParent1.msg" "DMe_Model_StrippedRN.fp";
connectAttr "Newman:ProtagonistUV3_png.oc" "Newman:Material_001__ProtagonistUV3_png.c"
		;
connectAttr "Newman:Material_001__ProtagonistUV3_png.oc" "Newman:Plane_001SG.ss"
		;
connectAttr "Newman:Plane_001SG.msg" "Newman:materialInfo1.sg";
connectAttr "Newman:Material_001__ProtagonistUV3_png.msg" "Newman:materialInfo1.m"
		;
connectAttr "Newman:ProtagonistUV3_png.msg" "Newman:materialInfo1.t" -na;
connectAttr "Newman:Material_001__ProtagonistUV3_png.oc" "Newman:Plane_001SG1.ss"
		;
connectAttr "Newman:Plane_001SG1.msg" "Newman:materialInfo2.sg";
connectAttr "Newman:Material_001__ProtagonistUV3_png.msg" "Newman:materialInfo2.m"
		;
connectAttr "Newman:ProtagonistUV3_png.msg" "Newman:materialInfo2.t" -na;
connectAttr "Newman:place2dTexture1.o" "Newman:ProtagonistUV3_png.uv";
connectAttr "Newman:place2dTexture1.ofu" "Newman:ProtagonistUV3_png.ofu";
connectAttr "Newman:place2dTexture1.ofv" "Newman:ProtagonistUV3_png.ofv";
connectAttr "Newman:place2dTexture1.rf" "Newman:ProtagonistUV3_png.rf";
connectAttr "Newman:place2dTexture1.reu" "Newman:ProtagonistUV3_png.reu";
connectAttr "Newman:place2dTexture1.rev" "Newman:ProtagonistUV3_png.rev";
connectAttr "Newman:place2dTexture1.vt1" "Newman:ProtagonistUV3_png.vt1";
connectAttr "Newman:place2dTexture1.vt2" "Newman:ProtagonistUV3_png.vt2";
connectAttr "Newman:place2dTexture1.vt3" "Newman:ProtagonistUV3_png.vt3";
connectAttr "Newman:place2dTexture1.vc1" "Newman:ProtagonistUV3_png.vc1";
connectAttr "Newman:place2dTexture1.ofs" "Newman:ProtagonistUV3_png.fs";
connectAttr "Newman:file2.oc" "Newman:Material.c";
connectAttr "Newman:Material.oc" "Newman:ArmguardSG.ss";
connectAttr "Newman:ArmguardSG.msg" "Newman:materialInfo3.sg";
connectAttr "Newman:Material.msg" "Newman:materialInfo3.m";
connectAttr "Newman:file2.msg" "Newman:materialInfo3.t" -na;
connectAttr "Newman:Material.oc" "Newman:ArmguardSG1.ss";
connectAttr "Newman:ArmguardSG1.msg" "Newman:materialInfo4.sg";
connectAttr "Newman:Material.msg" "Newman:materialInfo4.m";
connectAttr "Newman:file2.msg" "Newman:materialInfo4.t" -na;
connectAttr "Newman:file1.oc" "Newman:Material_001.c";
connectAttr "Newman:Material_001.oc" "Newman:CharSG.ss";
connectAttr "Newman:CharSG.msg" "Newman:materialInfo5.sg";
connectAttr "Newman:Material_001.msg" "Newman:materialInfo5.m";
connectAttr "Newman:file1.msg" "Newman:materialInfo5.t" -na;
connectAttr "Newman:Material_001.oc" "Newman:CharSG1.ss";
connectAttr "Newman:CharSG1.msg" "Newman:materialInfo6.sg";
connectAttr "Newman:Material_001.msg" "Newman:materialInfo6.m";
connectAttr "Newman:file1.msg" "Newman:materialInfo6.t" -na;
connectAttr "Newman:ProtagonistUV3_png.oc" "Newman:Material_001__ProtagonistUV3_png_ncl1_1.c"
		;
connectAttr "Newman:Material_001__ProtagonistUV3_png_ncl1_1.oc" "Newman:CharSG2.ss"
		;
connectAttr "Newman:CharSG2.msg" "Newman:materialInfo7.sg";
connectAttr "Newman:Material_001__ProtagonistUV3_png_ncl1_1.msg" "Newman:materialInfo7.m"
		;
connectAttr "Newman:ProtagonistUV3_png.msg" "Newman:materialInfo7.t" -na;
connectAttr "Newman:Material_001__ProtagonistUV3_png_ncl1_1.oc" "Newman:CharSG3.ss"
		;
connectAttr "Newman:CharSG3.msg" "Newman:materialInfo8.sg";
connectAttr "Newman:Material_001__ProtagonistUV3_png_ncl1_1.msg" "Newman:materialInfo8.m"
		;
connectAttr "Newman:ProtagonistUV3_png.msg" "Newman:materialInfo8.t" -na;
connectAttr "Newman:place2dTexture2.c" "Newman:file1.c";
connectAttr "Newman:place2dTexture2.tf" "Newman:file1.tf";
connectAttr "Newman:place2dTexture2.rf" "Newman:file1.rf";
connectAttr "Newman:place2dTexture2.mu" "Newman:file1.mu";
connectAttr "Newman:place2dTexture2.mv" "Newman:file1.mv";
connectAttr "Newman:place2dTexture2.s" "Newman:file1.s";
connectAttr "Newman:place2dTexture2.wu" "Newman:file1.wu";
connectAttr "Newman:place2dTexture2.wv" "Newman:file1.wv";
connectAttr "Newman:place2dTexture2.re" "Newman:file1.re";
connectAttr "Newman:place2dTexture2.of" "Newman:file1.of";
connectAttr "Newman:place2dTexture2.r" "Newman:file1.ro";
connectAttr "Newman:place2dTexture2.n" "Newman:file1.n";
connectAttr "Newman:place2dTexture2.vt1" "Newman:file1.vt1";
connectAttr "Newman:place2dTexture2.vt2" "Newman:file1.vt2";
connectAttr "Newman:place2dTexture2.vt3" "Newman:file1.vt3";
connectAttr "Newman:place2dTexture2.vc1" "Newman:file1.vc1";
connectAttr "Newman:place2dTexture2.o" "Newman:file1.uv";
connectAttr "Newman:place2dTexture2.ofs" "Newman:file1.fs";
connectAttr "Newman:place2dTexture3.c" "Newman:file2.c";
connectAttr "Newman:place2dTexture3.tf" "Newman:file2.tf";
connectAttr "Newman:place2dTexture3.rf" "Newman:file2.rf";
connectAttr "Newman:place2dTexture3.mu" "Newman:file2.mu";
connectAttr "Newman:place2dTexture3.mv" "Newman:file2.mv";
connectAttr "Newman:place2dTexture3.s" "Newman:file2.s";
connectAttr "Newman:place2dTexture3.wu" "Newman:file2.wu";
connectAttr "Newman:place2dTexture3.wv" "Newman:file2.wv";
connectAttr "Newman:place2dTexture3.re" "Newman:file2.re";
connectAttr "Newman:place2dTexture3.of" "Newman:file2.of";
connectAttr "Newman:place2dTexture3.r" "Newman:file2.ro";
connectAttr "Newman:place2dTexture3.n" "Newman:file2.n";
connectAttr "Newman:place2dTexture3.vt1" "Newman:file2.vt1";
connectAttr "Newman:place2dTexture3.vt2" "Newman:file2.vt2";
connectAttr "Newman:place2dTexture3.vt3" "Newman:file2.vt3";
connectAttr "Newman:place2dTexture3.vc1" "Newman:file2.vc1";
connectAttr "Newman:place2dTexture3.o" "Newman:file2.uv";
connectAttr "Newman:place2dTexture3.ofs" "Newman:file2.fs";
connectAttr "Newman:place2dTexture4.c" "Newman:file3.c";
connectAttr "Newman:place2dTexture4.tf" "Newman:file3.tf";
connectAttr "Newman:place2dTexture4.rf" "Newman:file3.rf";
connectAttr "Newman:place2dTexture4.mu" "Newman:file3.mu";
connectAttr "Newman:place2dTexture4.mv" "Newman:file3.mv";
connectAttr "Newman:place2dTexture4.s" "Newman:file3.s";
connectAttr "Newman:place2dTexture4.wu" "Newman:file3.wu";
connectAttr "Newman:place2dTexture4.wv" "Newman:file3.wv";
connectAttr "Newman:place2dTexture4.re" "Newman:file3.re";
connectAttr "Newman:place2dTexture4.of" "Newman:file3.of";
connectAttr "Newman:place2dTexture4.r" "Newman:file3.ro";
connectAttr "Newman:place2dTexture4.n" "Newman:file3.n";
connectAttr "Newman:place2dTexture4.vt1" "Newman:file3.vt1";
connectAttr "Newman:place2dTexture4.vt2" "Newman:file3.vt2";
connectAttr "Newman:place2dTexture4.vt3" "Newman:file3.vt3";
connectAttr "Newman:place2dTexture4.vc1" "Newman:file3.vc1";
connectAttr "Newman:place2dTexture4.o" "Newman:file3.uv";
connectAttr "Newman:place2dTexture4.ofs" "Newman:file3.fs";
connectAttr "layerManager.dli[2]" "Newman:NewmanLayer.id";
connectAttr "layerManager.dli[3]" "Newman:CNTRL.id";
connectAttr "layerManager.dli[5]" "FullBody.id";
connectAttr "DMe_Model_StrippedRN.phl[24]" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "groupParts6.og" "groupParts7.ig";
connectAttr "groupId7.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "groupParts8.og" "groupParts9.ig";
connectAttr "groupId9.id" "groupParts9.gi";
connectAttr "groupParts11.og" "tweak1.ip[0].ig";
connectAttr "groupId11.id" "tweak1.ip[0].gi";
connectAttr "groupId11.msg" "tweakSet1.gn" -na;
connectAttr "DMe_Model_Stripped:polySurfaceShape16Deformed.iog.og[1]" "tweakSet1.dsm"
		 -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "DMe_Model_StrippedRN.phl[32]" "groupParts11.ig";
connectAttr "groupId11.id" "groupParts11.gi";
connectAttr "tweak1.og[0]" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "groupParts12.og" "groupParts13.ig";
connectAttr "groupId13.id" "groupParts13.gi";
connectAttr "groupParts13.og" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "groupParts14.og" "groupParts15.ig";
connectAttr "groupId15.id" "groupParts15.gi";
connectAttr "groupParts15.og" "groupParts16.ig";
connectAttr "groupId16.id" "groupParts16.gi";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "bind_jaw01.wm" "skinCluster1.ma[34]";
connectAttr "bind_tongue_a01.wm" "skinCluster1.ma[38]";
connectAttr "bind_tongue_b01.wm" "skinCluster1.ma[39]";
connectAttr "bind_tongue_c01.wm" "skinCluster1.ma[40]";
connectAttr "bind_tongue_d01.wm" "skinCluster1.ma[41]";
connectAttr "bind_tongue_e01.wm" "skinCluster1.ma[42]";
connectAttr "bind_tongue_g01.wm" "skinCluster1.ma[44]";
connectAttr "bind_tongue_h01.wm" "skinCluster1.ma[45]";
connectAttr "be_tongue_i01.wm" "skinCluster1.ma[46]";
connectAttr "bind_jaw01.liw" "skinCluster1.lw[34]";
connectAttr "bind_tongue_a01.liw" "skinCluster1.lw[38]";
connectAttr "bind_tongue_b01.liw" "skinCluster1.lw[39]";
connectAttr "bind_tongue_c01.liw" "skinCluster1.lw[40]";
connectAttr "bind_tongue_d01.liw" "skinCluster1.lw[41]";
connectAttr "bind_tongue_e01.liw" "skinCluster1.lw[42]";
connectAttr "bind_tongue_g01.liw" "skinCluster1.lw[44]";
connectAttr "bind_tongue_h01.liw" "skinCluster1.lw[45]";
connectAttr "be_tongue_i01.liw" "skinCluster1.lw[46]";
connectAttr "bind_root01.obcc" "skinCluster1.ifcl[0]";
connectAttr "bind_pelvis.obcc" "skinCluster1.ifcl[1]";
connectAttr "bind_l_thigh.obcc" "skinCluster1.ifcl[2]";
connectAttr "bind_l_shin01.obcc" "skinCluster1.ifcl[3]";
connectAttr "be_l_ankle01.obcc" "skinCluster1.ifcl[4]";
connectAttr "bind_l_ankle01.obcc" "skinCluster1.ifcl[5]";
connectAttr "bind_l_foot01.obcc" "skinCluster1.ifcl[6]";
connectAttr "be_l_toe01.obcc" "skinCluster1.ifcl[7]";
connectAttr "be_pelvis.obcc" "skinCluster1.ifcl[8]";
connectAttr "bind_r_thigh.obcc" "skinCluster1.ifcl[9]";
connectAttr "bind_r_shin01.obcc" "skinCluster1.ifcl[10]";
connectAttr "be_r_ankle01.obcc" "skinCluster1.ifcl[11]";
connectAttr "bind_r_ankle01.obcc" "skinCluster1.ifcl[12]";
connectAttr "bind_r_foot01.obcc" "skinCluster1.ifcl[13]";
connectAttr "be_r_toe01.obcc" "skinCluster1.ifcl[14]";
connectAttr "bind_back01.obcc" "skinCluster1.ifcl[15]";
connectAttr "bind_chest01.obcc" "skinCluster1.ifcl[16]";
connectAttr "bind_neck_a01.obcc" "skinCluster1.ifcl[17]";
connectAttr "bind_neck_b01.obcc" "skinCluster1.ifcl[18]";
connectAttr "bind_neck_c01.obcc" "skinCluster1.ifcl[19]";
connectAttr "bind_neck_d01.obcc" "skinCluster1.ifcl[20]";
connectAttr "bind_neck_e01.obcc" "skinCluster1.ifcl[21]";
connectAttr "bind_l_ear01.obcc" "skinCluster1.ifcl[30]";
connectAttr "be_l_ear01.obcc" "skinCluster1.ifcl[31]";
connectAttr "bind_head01.obcc" "skinCluster1.ifcl[32]";
connectAttr "be_head01.obcc" "skinCluster1.ifcl[33]";
connectAttr "bind_jaw01.obcc" "skinCluster1.ifcl[34]";
connectAttr "be_jaw01.obcc" "skinCluster1.ifcl[35]";
connectAttr "bind_lowerteeth01.obcc" "skinCluster1.ifcl[36]";
connectAttr "be_lowerteeth01.obcc" "skinCluster1.ifcl[37]";
connectAttr "bind_tongue_a01.obcc" "skinCluster1.ifcl[38]";
connectAttr "bind_tongue_b01.obcc" "skinCluster1.ifcl[39]";
connectAttr "bind_tongue_c01.obcc" "skinCluster1.ifcl[40]";
connectAttr "bind_tongue_d01.obcc" "skinCluster1.ifcl[41]";
connectAttr "bind_tongue_e01.obcc" "skinCluster1.ifcl[42]";
connectAttr "bind_tongue_f01.obcc" "skinCluster1.ifcl[43]";
connectAttr "bind_tongue_g01.obcc" "skinCluster1.ifcl[44]";
connectAttr "bind_tongue_h01.obcc" "skinCluster1.ifcl[45]";
connectAttr "be_tongue_i01.obcc" "skinCluster1.ifcl[46]";
connectAttr "bind_upperteeth01.obcc" "skinCluster1.ifcl[47]";
connectAttr "be_upperteeth01.obcc" "skinCluster1.ifcl[48]";
connectAttr "bind_l_shoulder01.obcc" "skinCluster1.ifcl[51]";
connectAttr "bind_l_elbow01.obcc" "skinCluster1.ifcl[52]";
connectAttr "|Skeleton01|bind_root01|bind_back01|bind_chest01|bind_l_shoulder01|bind_l_elbow01|bind_l_wrist01.obcc" "skinCluster1.ifcl[53]"
		;
connectAttr "bind_r_shoulder01.obcc" "skinCluster1.ifcl[54]";
connectAttr "bind_r_elbow01.obcc" "skinCluster1.ifcl[55]";
connectAttr "|Skeleton01|bind_root01|bind_back01|bind_chest01|bind_r_shoulder01|bind_r_elbow01|bind_r_wrist01.obcc" "skinCluster1.ifcl[56]"
		;
connectAttr "groupParts18.og" "tweak2.ip[0].ig";
connectAttr "groupId18.id" "tweak2.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "DMe_Model_Stripped:tongueShapeDeformed.iog.og[2]" "skinCluster1Set.dsm"
		 -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId18.msg" "tweakSet2.gn" -na;
connectAttr "DMe_Model_Stripped:tongueShapeDeformed.iog.og[3]" "tweakSet2.dsm" -na
		;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "groupId18.id" "groupParts18.gi";
connectAttr "Skeleton01.msg" "bindPose1.m[0]";
connectAttr "bind_pelvis.msg" "bindPose1.m[2]";
connectAttr "bind_l_thigh.msg" "bindPose1.m[3]";
connectAttr "be_l_ankle01.msg" "bindPose1.m[5]";
connectAttr "bind_r_thigh.msg" "bindPose1.m[10]";
connectAttr "be_r_ankle01.msg" "bindPose1.m[12]";
connectAttr "bind_neck_e01.msg" "bindPose1.m[22]";
connectAttr "bind_head01.msg" "bindPose1.m[33]";
connectAttr "bind_jaw01.msg" "bindPose1.m[35]";
connectAttr "bind_tongue_a01.msg" "bindPose1.m[39]";
connectAttr "bind_tongue_b01.msg" "bindPose1.m[40]";
connectAttr "bind_tongue_c01.msg" "bindPose1.m[41]";
connectAttr "bind_tongue_d01.msg" "bindPose1.m[42]";
connectAttr "bind_tongue_e01.msg" "bindPose1.m[43]";
connectAttr "bind_tongue_f01.msg" "bindPose1.m[44]";
connectAttr "bind_tongue_g01.msg" "bindPose1.m[45]";
connectAttr "bind_tongue_h01.msg" "bindPose1.m[46]";
connectAttr "be_tongue_i01.msg" "bindPose1.m[47]";
connectAttr "bind_l_shoulder01.msg" "bindPose1.m[52]";
connectAttr "bind_l_elbow01.msg" "bindPose1.m[53]";
connectAttr "bind_r_shoulder01.msg" "bindPose1.m[55]";
connectAttr "bind_r_elbow01.msg" "bindPose1.m[56]";
connectAttr "bind_l_eye01.msg" "bindPose1.m[57]";
connectAttr "bind_l_hand01.msg" "bindPose1.m[59]";
connectAttr "bind_r_eye01.msg" "bindPose1.m[80]";
connectAttr "bind_r_hand01.msg" "bindPose1.m[82]";
connectAttr "bind_root01.msg" "bindPose1.m[101]";
connectAttr "bind_back01.msg" "bindPose1.m[102]";
connectAttr "bind_chest01.msg" "bindPose1.m[103]";
connectAttr "bind_neck_a01.msg" "bindPose1.m[104]";
connectAttr "bind_neck_b01.msg" "bindPose1.m[105]";
connectAttr "bind_neck_c01.msg" "bindPose1.m[106]";
connectAttr "bind_neck_d01.msg" "bindPose1.m[107]";
connectAttr "bind_l_shin01.msg" "bindPose1.m[108]";
connectAttr "bind_l_ankle01.msg" "bindPose1.m[109]";
connectAttr "|bind_l_wrist01.msg" "bindPose1.m[112]";
connectAttr "bind_nose01.msg" "bindPose1.m[132]";
connectAttr "bind_nose_a01.msg" "bindPose1.m[133]";
connectAttr "bind_r_shin01.msg" "bindPose1.m[134]";
connectAttr "bind_r_ankle01.msg" "bindPose1.m[135]";
connectAttr "|bind_r_wrist01.msg" "bindPose1.m[138]";
connectAttr "bind_r_lowerlid01.msg" "bindPose1.m[142]";
connectAttr "bind_r_upperlid01.msg" "bindPose1.m[155]";
connectAttr "bind_l_upperlid01.msg" "bindPose1.m[158]";
connectAttr "bind_l_lowerlid01.msg" "bindPose1.m[159]";
connectAttr "bind_r_ear01.msg" "bindPose1.m[160]";
connectAttr "bind_l_ear01.msg" "bindPose1.m[161]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[101]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[108]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[2]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[134]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[1]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[107]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[27]";
connectAttr "bindPose1.m[23]" "bindPose1.p[29]";
connectAttr "bindPose1.m[23]" "bindPose1.p[31]";
connectAttr "bindPose1.m[22]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[43]" "bindPose1.p[44]";
connectAttr "bindPose1.m[44]" "bindPose1.p[45]";
connectAttr "bindPose1.m[45]" "bindPose1.p[46]";
connectAttr "bindPose1.m[46]" "bindPose1.p[47]";
connectAttr "bindPose1.m[33]" "bindPose1.p[50]";
connectAttr "bindPose1.m[103]" "bindPose1.p[52]";
connectAttr "bindPose1.m[52]" "bindPose1.p[53]";
connectAttr "bindPose1.m[17]" "bindPose1.p[55]";
connectAttr "bindPose1.m[55]" "bindPose1.p[56]";
connectAttr "bindPose1.m[33]" "bindPose1.p[57]";
connectAttr "bindPose1.m[112]" "bindPose1.p[59]";
connectAttr "bindPose1.m[33]" "bindPose1.p[63]";
connectAttr "bindPose1.m[33]" "bindPose1.p[76]";
connectAttr "bindPose1.w" "bindPose1.p[78]";
connectAttr "bind_nose01.msg" "bindPose1.p[79]";
connectAttr "bindPose1.m[33]" "bindPose1.p[80]";
connectAttr "bindPose1.m[138]" "bindPose1.p[82]";
connectAttr "bindPose1.m[33]" "bindPose1.p[86]";
connectAttr "bindPose1.m[33]" "bindPose1.p[99]";
connectAttr "bindPose1.m[0]" "bindPose1.p[101]";
connectAttr "bind_root01.msg" "bindPose1.p[102]";
connectAttr "bind_back01.msg" "bindPose1.p[103]";
connectAttr "bind_chest01.msg" "bindPose1.p[104]";
connectAttr "bind_neck_a01.msg" "bindPose1.p[105]";
connectAttr "bind_neck_b01.msg" "bindPose1.p[106]";
connectAttr "bind_neck_c01.msg" "bindPose1.p[107]";
connectAttr "bindPose1.m[3]" "bindPose1.p[108]";
connectAttr "bindPose1.m[5]" "bindPose1.p[109]";
connectAttr "bindPose1.w" "bindPose1.p[112]";
connectAttr "bindPose1.m[33]" "bindPose1.p[132]";
connectAttr "bind_nose01.msg" "bindPose1.p[133]";
connectAttr "bindPose1.m[10]" "bindPose1.p[134]";
connectAttr "bindPose1.m[12]" "bindPose1.p[135]";
connectAttr "bindPose1.w" "bindPose1.p[138]";
connectAttr "bindPose1.m[33]" "bindPose1.p[142]";
connectAttr "bindPose1.m[33]" "bindPose1.p[155]";
connectAttr "bindPose1.m[33]" "bindPose1.p[158]";
connectAttr "bindPose1.m[33]" "bindPose1.p[159]";
connectAttr "bindPose1.m[33]" "bindPose1.p[160]";
connectAttr "bindPose1.m[33]" "bindPose1.p[161]";
connectAttr "bind_pelvis.bps" "bindPose1.wm[2]";
connectAttr "bind_l_thigh.bps" "bindPose1.wm[3]";
connectAttr "be_l_ankle01.bps" "bindPose1.wm[5]";
connectAttr "bind_r_thigh.bps" "bindPose1.wm[10]";
connectAttr "be_r_ankle01.bps" "bindPose1.wm[12]";
connectAttr "bind_neck_e01.bps" "bindPose1.wm[22]";
connectAttr "bind_head01.bps" "bindPose1.wm[33]";
connectAttr "bind_jaw01.bps" "bindPose1.wm[35]";
connectAttr "bind_tongue_a01.bps" "bindPose1.wm[39]";
connectAttr "bind_tongue_b01.bps" "bindPose1.wm[40]";
connectAttr "bind_tongue_c01.bps" "bindPose1.wm[41]";
connectAttr "bind_tongue_d01.bps" "bindPose1.wm[42]";
connectAttr "bind_tongue_e01.bps" "bindPose1.wm[43]";
connectAttr "bind_tongue_f01.bps" "bindPose1.wm[44]";
connectAttr "bind_tongue_g01.bps" "bindPose1.wm[45]";
connectAttr "bind_tongue_h01.bps" "bindPose1.wm[46]";
connectAttr "be_tongue_i01.bps" "bindPose1.wm[47]";
connectAttr "bind_l_shoulder01.bps" "bindPose1.wm[52]";
connectAttr "bind_l_elbow01.bps" "bindPose1.wm[53]";
connectAttr "bind_r_shoulder01.bps" "bindPose1.wm[55]";
connectAttr "bind_r_elbow01.bps" "bindPose1.wm[56]";
connectAttr "bind_l_eye01.bps" "bindPose1.wm[57]";
connectAttr "bind_l_hand01.bps" "bindPose1.wm[59]";
connectAttr "bind_r_eye01.bps" "bindPose1.wm[80]";
connectAttr "bind_r_hand01.bps" "bindPose1.wm[82]";
connectAttr "bind_root01.bps" "bindPose1.wm[101]";
connectAttr "bind_back01.bps" "bindPose1.wm[102]";
connectAttr "bind_chest01.bps" "bindPose1.wm[103]";
connectAttr "bind_neck_a01.bps" "bindPose1.wm[104]";
connectAttr "bind_neck_b01.bps" "bindPose1.wm[105]";
connectAttr "bind_neck_c01.bps" "bindPose1.wm[106]";
connectAttr "bind_neck_d01.bps" "bindPose1.wm[107]";
connectAttr "bind_l_shin01.bps" "bindPose1.wm[108]";
connectAttr "bind_l_ankle01.bps" "bindPose1.wm[109]";
connectAttr "|bind_l_wrist01.bps" "bindPose1.wm[112]";
connectAttr "bind_nose01.bps" "bindPose1.wm[132]";
connectAttr "bind_nose_a01.bps" "bindPose1.wm[133]";
connectAttr "bind_r_shin01.bps" "bindPose1.wm[134]";
connectAttr "bind_r_ankle01.bps" "bindPose1.wm[135]";
connectAttr "|bind_r_wrist01.bps" "bindPose1.wm[138]";
connectAttr "bind_r_lowerlid01.bps" "bindPose1.wm[142]";
connectAttr "bind_r_upperlid01.bps" "bindPose1.wm[155]";
connectAttr "bind_l_upperlid01.bps" "bindPose1.wm[158]";
connectAttr "bind_l_lowerlid01.bps" "bindPose1.wm[159]";
connectAttr "bind_r_ear01.bps" "bindPose1.wm[160]";
connectAttr "bind_l_ear01.bps" "bindPose1.wm[161]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose4.msg" "skinCluster2.bp";
connectAttr "bind_l_eye01.wm" "skinCluster2.ma[0]";
connectAttr "bind_l_eye01.liw" "skinCluster2.lw[0]";
connectAttr "bind_l_eye01.obcc" "skinCluster2.ifcl[0]";
connectAttr "groupParts20.og" "tweak3.ip[0].ig";
connectAttr "groupId20.id" "tweak3.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "DMe_Model_Stripped:LIris1ShapeDeformed.iog.og[2]" "skinCluster2Set.dsm"
		 -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId20.msg" "tweakSet3.gn" -na;
connectAttr "DMe_Model_Stripped:LIris1ShapeDeformed.iog.og[3]" "tweakSet3.dsm" -na
		;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "groupId20.id" "groupParts20.gi";
connectAttr "bind_l_eye01.msg" "bindPose4.m[0]";
connectAttr "bindPose4.w" "bindPose4.p[0]";
connectAttr "bind_l_eye01.bps" "bindPose4.wm[0]";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "bind_l_eye01.wm" "skinCluster3.ma[0]";
connectAttr "bind_l_eye01.liw" "skinCluster3.lw[0]";
connectAttr "bind_l_eye01.obcc" "skinCluster3.ifcl[0]";
connectAttr "bindPose4.msg" "skinCluster3.bp";
connectAttr "groupParts22.og" "tweak4.ip[0].ig";
connectAttr "groupId22.id" "tweak4.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "DMe_Model_Stripped:LPupilShapeDeformed.iog.og[0]" "skinCluster3Set.dsm"
		 -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak4.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId22.msg" "tweakSet4.gn" -na;
connectAttr "DMe_Model_Stripped:LPupilShapeDeformed.iog.og[1]" "tweakSet4.dsm" -na
		;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "groupId22.id" "groupParts22.gi";
connectAttr "skinCluster4GroupParts.og" "skinCluster4.ip[0].ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4.ip[0].gi";
connectAttr "bind_l_eye01.wm" "skinCluster4.ma[0]";
connectAttr "bind_l_eye01.liw" "skinCluster4.lw[0]";
connectAttr "bind_l_eye01.obcc" "skinCluster4.ifcl[0]";
connectAttr "bindPose4.msg" "skinCluster4.bp";
connectAttr "groupParts24.og" "tweak5.ip[0].ig";
connectAttr "groupId24.id" "tweak5.ip[0].gi";
connectAttr "skinCluster4GroupId.msg" "skinCluster4Set.gn" -na;
connectAttr "DMe_Model_Stripped:LCorneaShapeDeformed.iog.og[2]" "skinCluster4Set.dsm"
		 -na;
connectAttr "skinCluster4.msg" "skinCluster4Set.ub[0]";
connectAttr "tweak5.og[0]" "skinCluster4GroupParts.ig";
connectAttr "skinCluster4GroupId.id" "skinCluster4GroupParts.gi";
connectAttr "groupId24.msg" "tweakSet5.gn" -na;
connectAttr "DMe_Model_Stripped:LCorneaShapeDeformed.iog.og[3]" "tweakSet5.dsm" 
		-na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "groupId24.id" "groupParts24.gi";
connectAttr "skinCluster5GroupParts.og" "skinCluster5.ip[0].ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5.ip[0].gi";
connectAttr "bindPose3.msg" "skinCluster5.bp";
connectAttr "bind_r_eye01.wm" "skinCluster5.ma[0]";
connectAttr "bind_r_eye01.liw" "skinCluster5.lw[0]";
connectAttr "bind_r_eye01.obcc" "skinCluster5.ifcl[0]";
connectAttr "groupParts26.og" "tweak6.ip[0].ig";
connectAttr "groupId26.id" "tweak6.ip[0].gi";
connectAttr "skinCluster5GroupId.msg" "skinCluster5Set.gn" -na;
connectAttr "DMe_Model_Stripped:RCorneaShapeDeformed.iog.og[0]" "skinCluster5Set.dsm"
		 -na;
connectAttr "skinCluster5.msg" "skinCluster5Set.ub[0]";
connectAttr "tweak6.og[0]" "skinCluster5GroupParts.ig";
connectAttr "skinCluster5GroupId.id" "skinCluster5GroupParts.gi";
connectAttr "groupId26.msg" "tweakSet6.gn" -na;
connectAttr "DMe_Model_Stripped:RCorneaShapeDeformed.iog.og[1]" "tweakSet6.dsm" 
		-na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "groupId26.id" "groupParts26.gi";
connectAttr "bind_r_eye01.msg" "bindPose3.m[0]";
connectAttr "bindPose3.w" "bindPose3.p[0]";
connectAttr "bind_r_eye01.bps" "bindPose3.wm[0]";
connectAttr "skinCluster6GroupParts.og" "skinCluster6.ip[0].ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6.ip[0].gi";
connectAttr "bind_r_eye01.wm" "skinCluster6.ma[0]";
connectAttr "bind_r_eye01.liw" "skinCluster6.lw[0]";
connectAttr "bind_r_eye01.obcc" "skinCluster6.ifcl[0]";
connectAttr "bindPose3.msg" "skinCluster6.bp";
connectAttr "groupParts28.og" "tweak7.ip[0].ig";
connectAttr "groupId28.id" "tweak7.ip[0].gi";
connectAttr "skinCluster6GroupId.msg" "skinCluster6Set.gn" -na;
connectAttr "DMe_Model_Stripped:RIrisShapeDeformed.iog.og[0]" "skinCluster6Set.dsm"
		 -na;
connectAttr "skinCluster6.msg" "skinCluster6Set.ub[0]";
connectAttr "tweak7.og[0]" "skinCluster6GroupParts.ig";
connectAttr "skinCluster6GroupId.id" "skinCluster6GroupParts.gi";
connectAttr "groupId28.msg" "tweakSet7.gn" -na;
connectAttr "DMe_Model_Stripped:RIrisShapeDeformed.iog.og[1]" "tweakSet7.dsm" -na
		;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "groupId28.id" "groupParts28.gi";
connectAttr "skinCluster7GroupParts.og" "skinCluster7.ip[0].ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7.ip[0].gi";
connectAttr "bind_r_eye01.wm" "skinCluster7.ma[0]";
connectAttr "bind_r_eye01.liw" "skinCluster7.lw[0]";
connectAttr "bind_r_eye01.obcc" "skinCluster7.ifcl[0]";
connectAttr "bindPose3.msg" "skinCluster7.bp";
connectAttr "groupParts30.og" "tweak8.ip[0].ig";
connectAttr "groupId30.id" "tweak8.ip[0].gi";
connectAttr "skinCluster7GroupId.msg" "skinCluster7Set.gn" -na;
connectAttr "DMe_Model_Stripped:RPupilShapeDeformed.iog.og[0]" "skinCluster7Set.dsm"
		 -na;
connectAttr "skinCluster7.msg" "skinCluster7Set.ub[0]";
connectAttr "tweak8.og[0]" "skinCluster7GroupParts.ig";
connectAttr "skinCluster7GroupId.id" "skinCluster7GroupParts.gi";
connectAttr "groupId30.msg" "tweakSet8.gn" -na;
connectAttr "DMe_Model_Stripped:RPupilShapeDeformed.iog.og[1]" "tweakSet8.dsm" -na
		;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "groupId30.id" "groupParts30.gi";
connectAttr "groupParts32.og" "tweak9.ip[0].ig";
connectAttr "groupId32.id" "tweak9.ip[0].gi";
connectAttr "groupId32.msg" "tweakSet9.gn" -na;
connectAttr "MainBodyShapeDeformed.iog.og[1]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "groupId32.id" "groupParts32.gi";
connectAttr "tweak9.og[0]" "groupParts33.ig";
connectAttr "groupId33.id" "groupParts33.gi";
connectAttr "groupParts33.og" "groupParts34.ig";
connectAttr "groupId34.id" "groupParts34.gi";
connectAttr "groupParts34.og" "groupParts35.ig";
connectAttr "groupId35.id" "groupParts35.gi";
connectAttr "groupParts35.og" "groupParts36.ig";
connectAttr "groupId36.id" "groupParts36.gi";
connectAttr "groupParts36.og" "groupParts37.ig";
connectAttr "groupId37.id" "groupParts37.gi";
connectAttr "groupParts37.og" "groupParts38.ig";
connectAttr "groupId38.id" "groupParts38.gi";
connectAttr "skinCluster8GroupParts.og" "skinCluster8.ip[0].ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8.ip[0].gi";
connectAttr "bind_back01.wm" "skinCluster8.ma[0]";
connectAttr "bind_chest01.wm" "skinCluster8.ma[1]";
connectAttr "bind_head01.wm" "skinCluster8.ma[2]";
connectAttr "bind_jaw01.wm" "skinCluster8.ma[3]";
connectAttr "bind_l_ankle01.wm" "skinCluster8.ma[4]";
connectAttr "bind_l_shin01.wm" "skinCluster8.ma[23]";
connectAttr "bind_neck_a01.wm" "skinCluster8.ma[32]";
connectAttr "bind_neck_b01.wm" "skinCluster8.ma[33]";
connectAttr "bind_neck_c01.wm" "skinCluster8.ma[34]";
connectAttr "bind_neck_d01.wm" "skinCluster8.ma[35]";
connectAttr "bind_neck_e01.wm" "skinCluster8.ma[36]";
connectAttr "bind_nose01.wm" "skinCluster8.ma[37]";
connectAttr "bind_nose_a01.wm" "skinCluster8.ma[38]";
connectAttr "bind_r_ankle01.wm" "skinCluster8.ma[39]";
connectAttr "bind_r_lowerlid01.wm" "skinCluster8.ma[48]";
connectAttr "bind_r_shin01.wm" "skinCluster8.ma[58]";
connectAttr "bind_r_upperlid01.wm" "skinCluster8.ma[63]";
connectAttr "bind_root01.wm" "skinCluster8.ma[66]";
connectAttr "bind_l_upperlid01.wm" "skinCluster8.ma[76]";
connectAttr "bind_l_lowerlid01.wm" "skinCluster8.ma[77]";
connectAttr "bind_r_ear01.wm" "skinCluster8.ma[78]";
connectAttr "bind_l_ear01.wm" "skinCluster8.ma[79]";
connectAttr "bind_back01.liw" "skinCluster8.lw[0]";
connectAttr "bind_chest01.liw" "skinCluster8.lw[1]";
connectAttr "bind_head01.liw" "skinCluster8.lw[2]";
connectAttr "bind_jaw01.liw" "skinCluster8.lw[3]";
connectAttr "bind_l_ankle01.liw" "skinCluster8.lw[4]";
connectAttr "bind_l_shin01.liw" "skinCluster8.lw[23]";
connectAttr "bind_neck_a01.liw" "skinCluster8.lw[32]";
connectAttr "bind_neck_b01.liw" "skinCluster8.lw[33]";
connectAttr "bind_neck_c01.liw" "skinCluster8.lw[34]";
connectAttr "bind_neck_d01.liw" "skinCluster8.lw[35]";
connectAttr "bind_neck_e01.liw" "skinCluster8.lw[36]";
connectAttr "bind_nose01.liw" "skinCluster8.lw[37]";
connectAttr "bind_nose_a01.liw" "skinCluster8.lw[38]";
connectAttr "bind_r_ankle01.liw" "skinCluster8.lw[39]";
connectAttr "bind_r_lowerlid01.liw" "skinCluster8.lw[48]";
connectAttr "bind_r_shin01.liw" "skinCluster8.lw[58]";
connectAttr "bind_r_upperlid01.liw" "skinCluster8.lw[63]";
connectAttr "bind_root01.liw" "skinCluster8.lw[66]";
connectAttr "bind_l_upperlid01.liw" "skinCluster8.lw[76]";
connectAttr "bind_l_lowerlid01.liw" "skinCluster8.lw[77]";
connectAttr "bind_r_ear01.liw" "skinCluster8.lw[78]";
connectAttr "bind_l_ear01.liw" "skinCluster8.lw[79]";
connectAttr "bind_back01.obcc" "skinCluster8.ifcl[0]";
connectAttr "bind_chest01.obcc" "skinCluster8.ifcl[1]";
connectAttr "bind_head01.obcc" "skinCluster8.ifcl[2]";
connectAttr "bind_jaw01.obcc" "skinCluster8.ifcl[3]";
connectAttr "bind_l_ankle01.obcc" "skinCluster8.ifcl[4]";
connectAttr "bind_l_ear01.obcc" "skinCluster8.ifcl[5]";
connectAttr "bind_l_elbow01.obcc" "skinCluster8.ifcl[6]";
connectAttr "bind_l_eye01.obcc" "skinCluster8.ifcl[7]";
connectAttr "bind_l_foot01.obcc" "skinCluster8.ifcl[8]";
connectAttr "bind_l_hand01.obcc" "skinCluster8.ifcl[9]";
connectAttr "bind_l_index_a01.obcc" "skinCluster8.ifcl[10]";
connectAttr "bind_l_index_b01.obcc" "skinCluster8.ifcl[11]";
connectAttr "bind_l_indexknuckle01.obcc" "skinCluster8.ifcl[12]";
connectAttr "bind_l_lowerlid01.obcc" "skinCluster8.ifcl[13]";
connectAttr "bind_l_middle_a01.obcc" "skinCluster8.ifcl[14]";
connectAttr "bind_l_middle_b01.obcc" "skinCluster8.ifcl[15]";
connectAttr "bind_l_middleknuckle01.obcc" "skinCluster8.ifcl[16]";
connectAttr "bind_l_pinky_a01.obcc" "skinCluster8.ifcl[17]";
connectAttr "bind_l_pinky_b01.obcc" "skinCluster8.ifcl[18]";
connectAttr "bind_l_pinkyknuckle01.obcc" "skinCluster8.ifcl[19]";
connectAttr "bind_l_ring_a01.obcc" "skinCluster8.ifcl[20]";
connectAttr "bind_l_ring_b01.obcc" "skinCluster8.ifcl[21]";
connectAttr "bind_l_ringknuckle01.obcc" "skinCluster8.ifcl[22]";
connectAttr "bind_l_shin01.obcc" "skinCluster8.ifcl[23]";
connectAttr "bind_l_shoulder01.obcc" "skinCluster8.ifcl[24]";
connectAttr "bind_l_thumb_a01.obcc" "skinCluster8.ifcl[25]";
connectAttr "bind_l_thumb_b01.obcc" "skinCluster8.ifcl[26]";
connectAttr "bind_l_thumbknuckle01.obcc" "skinCluster8.ifcl[27]";
connectAttr "bind_l_upperlid01.obcc" "skinCluster8.ifcl[28]";
connectAttr "|bind_l_wrist01.obcc" "skinCluster8.ifcl[29]";
connectAttr "|Skeleton01|bind_root01|bind_back01|bind_chest01|bind_l_shoulder01|bind_l_elbow01|bind_l_wrist01.obcc" "skinCluster8.ifcl[30]"
		;
connectAttr "bind_lowerteeth01.obcc" "skinCluster8.ifcl[31]";
connectAttr "bind_neck_a01.obcc" "skinCluster8.ifcl[32]";
connectAttr "bind_neck_b01.obcc" "skinCluster8.ifcl[33]";
connectAttr "bind_neck_c01.obcc" "skinCluster8.ifcl[34]";
connectAttr "bind_neck_d01.obcc" "skinCluster8.ifcl[35]";
connectAttr "bind_neck_e01.obcc" "skinCluster8.ifcl[36]";
connectAttr "bind_nose01.obcc" "skinCluster8.ifcl[37]";
connectAttr "bind_nose_a01.obcc" "skinCluster8.ifcl[38]";
connectAttr "bind_r_ankle01.obcc" "skinCluster8.ifcl[39]";
connectAttr "bind_r_elbow01.obcc" "skinCluster8.ifcl[41]";
connectAttr "bind_r_eye01.obcc" "skinCluster8.ifcl[42]";
connectAttr "bind_r_foot01.obcc" "skinCluster8.ifcl[43]";
connectAttr "bind_r_hand01.obcc" "skinCluster8.ifcl[44]";
connectAttr "bind_r_index_a01.obcc" "skinCluster8.ifcl[45]";
connectAttr "bind_r_index_b01.obcc" "skinCluster8.ifcl[46]";
connectAttr "bind_r_indexknuckle01.obcc" "skinCluster8.ifcl[47]";
connectAttr "bind_r_lowerlid01.obcc" "skinCluster8.ifcl[48]";
connectAttr "bind_r_middle_a01.obcc" "skinCluster8.ifcl[49]";
connectAttr "bind_r_middle_b01.obcc" "skinCluster8.ifcl[50]";
connectAttr "bind_r_middleknuckle01.obcc" "skinCluster8.ifcl[51]";
connectAttr "bind_r_pinky_a01.obcc" "skinCluster8.ifcl[52]";
connectAttr "bind_r_pinky_b01.obcc" "skinCluster8.ifcl[53]";
connectAttr "bind_r_pinkyknuckle01.obcc" "skinCluster8.ifcl[54]";
connectAttr "bind_r_ring_a01.obcc" "skinCluster8.ifcl[55]";
connectAttr "bind_r_ring_b01.obcc" "skinCluster8.ifcl[56]";
connectAttr "bind_r_ringknuckle01.obcc" "skinCluster8.ifcl[57]";
connectAttr "bind_r_shin01.obcc" "skinCluster8.ifcl[58]";
connectAttr "bind_r_shoulder01.obcc" "skinCluster8.ifcl[59]";
connectAttr "bind_r_thumb_a01.obcc" "skinCluster8.ifcl[60]";
connectAttr "bind_r_thumb_b01.obcc" "skinCluster8.ifcl[61]";
connectAttr "bind_r_thumbknuckle01.obcc" "skinCluster8.ifcl[62]";
connectAttr "bind_r_upperlid01.obcc" "skinCluster8.ifcl[63]";
connectAttr "|bind_r_wrist01.obcc" "skinCluster8.ifcl[64]";
connectAttr "|Skeleton01|bind_root01|bind_back01|bind_chest01|bind_r_shoulder01|bind_r_elbow01|bind_r_wrist01.obcc" "skinCluster8.ifcl[65]"
		;
connectAttr "bind_root01.obcc" "skinCluster8.ifcl[66]";
connectAttr "bind_tongue_a01.obcc" "skinCluster8.ifcl[67]";
connectAttr "bind_tongue_b01.obcc" "skinCluster8.ifcl[68]";
connectAttr "bind_tongue_c01.obcc" "skinCluster8.ifcl[69]";
connectAttr "bind_tongue_d01.obcc" "skinCluster8.ifcl[70]";
connectAttr "bind_tongue_e01.obcc" "skinCluster8.ifcl[71]";
connectAttr "bind_tongue_f01.obcc" "skinCluster8.ifcl[72]";
connectAttr "bind_tongue_g01.obcc" "skinCluster8.ifcl[73]";
connectAttr "bind_tongue_h01.obcc" "skinCluster8.ifcl[74]";
connectAttr "bind_upperteeth01.obcc" "skinCluster8.ifcl[75]";
connectAttr "bind_l_upperlid01.obcc" "skinCluster8.ifcl[76]";
connectAttr "bind_l_lowerlid01.obcc" "skinCluster8.ifcl[77]";
connectAttr "bind_r_ear01.obcc" "skinCluster8.ifcl[78]";
connectAttr "bind_l_ear01.obcc" "skinCluster8.ifcl[79]";
connectAttr "bindPose1.msg" "skinCluster8.bp";
connectAttr "geomBind1.scs" "skinCluster8.gb";
connectAttr "bind_l_lowerlid01.msg" "skinCluster8.ptt";
connectAttr "skinCluster8GroupId.msg" "skinCluster8Set.gn" -na;
connectAttr "MainBodyShapeDeformed.iog.og[8]" "skinCluster8Set.dsm" -na;
connectAttr "skinCluster8.msg" "skinCluster8Set.ub[0]";
connectAttr "groupParts38.og" "skinCluster8GroupParts.ig";
connectAttr "skinCluster8GroupId.id" "skinCluster8GroupParts.gi";
connectAttr "bindPose1.msg" "geomBind1.bp";
connectAttr "Newman:Plane_001SG.pa" ":renderPartition.st" -na;
connectAttr "Newman:Plane_001SG1.pa" ":renderPartition.st" -na;
connectAttr "Newman:ArmguardSG.pa" ":renderPartition.st" -na;
connectAttr "Newman:ArmguardSG1.pa" ":renderPartition.st" -na;
connectAttr "Newman:CharSG.pa" ":renderPartition.st" -na;
connectAttr "Newman:CharSG1.pa" ":renderPartition.st" -na;
connectAttr "Newman:CharSG2.pa" ":renderPartition.st" -na;
connectAttr "Newman:CharSG3.pa" ":renderPartition.st" -na;
connectAttr "Newman:Material_001__ProtagonistUV3_png.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Newman:Material.msg" ":defaultShaderList1.s" -na;
connectAttr "Newman:Material_001.msg" ":defaultShaderList1.s" -na;
connectAttr "Newman:Material_001__ProtagonistUV3_png_ncl1_1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Newman:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Newman:place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Newman:place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Newman:place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "Newman:ProtagonistUV3_png.msg" ":defaultTextureList1.tx" -na;
connectAttr "Newman:file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "Newman:file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "Newman:file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "DMe_Model_Stripped:BodyMeshShapeDeformed.iog.og[4]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "MainBodyShapeDeformed.iog.og[7]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "Newman:file3.msg" ":initialMaterialInfo.t" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"DMe_Model_StrippedRN\" \"\" \"/Users/nathanwaters/Documents/3D Me/3DMe Model Stripped.ma\" 1771089994 \"/Users/nathanwaters/Documents/3D Me/3DMe Model Stripped.ma\" \"FileRef\"\n1\n\"|pointLight1|pointLightShape1\" \"dmapName\" \"depthmap\" 2097411553 \"\" \"sourceImages\"\n2\n\"Newman:ProtagonistUV3_png\" \"fileTextureName\" \"/Users/nathanwaters/Documents/The-Runners/Assets/Models/Characters/PlayerCharacter/Materials/PlayerCharacterUV6.jpg\" 2477155463 \"\" \"sourceImages\"\n3\n\"Newman:file1\" \"fileTextureName\" \"/Users/nathanwaters/Documents/The-Runners/Assets/Models/Characters/PlayerCharacter/Materials/PlayerCharacterUV6.jpg\" 2477155463 \"\" \"sourceImages\"\n4\n\"Newman:file2\" \"fileTextureName\" \"/Users/nathanwaters/Documents/The-Runners/Assets/Models/Characters/PlayerCharacter/Materials/PlayerCharacterUV6.jpg\" 2477155463 \"\" \"sourceImages\"\n5\n\"Newman:file3\" \"fileTextureName\" \"/Users/nathanwaters/Documents/The-Runners/Assets/Models/Characters/PlayerCharacter/Materials/PlayerCharacterUV6.jpg\" 2477155463 \"\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of 3D Me Rig.ma
