IBDEI1MA ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,27058,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27058,1,3,0)
 ;;=3^Local Infection of Skin/Subcutaneous Tissue,Unspec
 ;;^UTILITY(U,$J,358.3,27058,1,4,0)
 ;;=4^L08.9
 ;;^UTILITY(U,$J,358.3,27058,2)
 ;;=^5009082
 ;;^UTILITY(U,$J,358.3,27059,0)
 ;;=L11.0^^132^1309^9
 ;;^UTILITY(U,$J,358.3,27059,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27059,1,3,0)
 ;;=3^Acquired Keratosis Follicularis
 ;;^UTILITY(U,$J,358.3,27059,1,4,0)
 ;;=4^L11.0
 ;;^UTILITY(U,$J,358.3,27059,2)
 ;;=^5009091
 ;;^UTILITY(U,$J,358.3,27060,0)
 ;;=L20.0^^132^1309^90
 ;;^UTILITY(U,$J,358.3,27060,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27060,1,3,0)
 ;;=3^Besnier's Prurigo
 ;;^UTILITY(U,$J,358.3,27060,1,4,0)
 ;;=4^L20.0
 ;;^UTILITY(U,$J,358.3,27060,2)
 ;;=^5009107
 ;;^UTILITY(U,$J,358.3,27061,0)
 ;;=L20.81^^132^1309^87
 ;;^UTILITY(U,$J,358.3,27061,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27061,1,3,0)
 ;;=3^Atopic Neurodermatitis
 ;;^UTILITY(U,$J,358.3,27061,1,4,0)
 ;;=4^L20.81
 ;;^UTILITY(U,$J,358.3,27061,2)
 ;;=^5009108
 ;;^UTILITY(U,$J,358.3,27062,0)
 ;;=L20.82^^132^1309^150
 ;;^UTILITY(U,$J,358.3,27062,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27062,1,3,0)
 ;;=3^Flexural Eczema
 ;;^UTILITY(U,$J,358.3,27062,1,4,0)
 ;;=4^L20.82
 ;;^UTILITY(U,$J,358.3,27062,2)
 ;;=^5009109
 ;;^UTILITY(U,$J,358.3,27063,0)
 ;;=L20.84^^132^1309^162
 ;;^UTILITY(U,$J,358.3,27063,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27063,1,3,0)
 ;;=3^Intrinsic Eczema
 ;;^UTILITY(U,$J,358.3,27063,1,4,0)
 ;;=4^L20.84
 ;;^UTILITY(U,$J,358.3,27063,2)
 ;;=^5009111
 ;;^UTILITY(U,$J,358.3,27064,0)
 ;;=L20.89^^132^1309^85
 ;;^UTILITY(U,$J,358.3,27064,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27064,1,3,0)
 ;;=3^Atopic Dermatitis NEC
 ;;^UTILITY(U,$J,358.3,27064,1,4,0)
 ;;=4^L20.89
 ;;^UTILITY(U,$J,358.3,27064,2)
 ;;=^5009112
 ;;^UTILITY(U,$J,358.3,27065,0)
 ;;=L20.9^^132^1309^86
 ;;^UTILITY(U,$J,358.3,27065,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27065,1,3,0)
 ;;=3^Atopic Dermatitis,Unspec
 ;;^UTILITY(U,$J,358.3,27065,1,4,0)
 ;;=4^L20.9
 ;;^UTILITY(U,$J,358.3,27065,2)
 ;;=^5009113
 ;;^UTILITY(U,$J,358.3,27066,0)
 ;;=L21.8^^132^1309^262
 ;;^UTILITY(U,$J,358.3,27066,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27066,1,3,0)
 ;;=3^Seborrheic Dermatitis NEC
 ;;^UTILITY(U,$J,358.3,27066,1,4,0)
 ;;=4^L21.8
 ;;^UTILITY(U,$J,358.3,27066,2)
 ;;=^303310
 ;;^UTILITY(U,$J,358.3,27067,0)
 ;;=L21.9^^132^1309^263
 ;;^UTILITY(U,$J,358.3,27067,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27067,1,3,0)
 ;;=3^Seborrheic Dermatitis,Unspec
 ;;^UTILITY(U,$J,358.3,27067,1,4,0)
 ;;=4^L21.9
 ;;^UTILITY(U,$J,358.3,27067,2)
 ;;=^188703
 ;;^UTILITY(U,$J,358.3,27068,0)
 ;;=L23.7^^132^1309^30
 ;;^UTILITY(U,$J,358.3,27068,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27068,1,3,0)
 ;;=3^Allergic Contact Dermatitis d/t Plants
 ;;^UTILITY(U,$J,358.3,27068,1,4,0)
 ;;=4^L23.7
 ;;^UTILITY(U,$J,358.3,27068,2)
 ;;=^5009122
 ;;^UTILITY(U,$J,358.3,27069,0)
 ;;=L23.9^^132^1309^31
 ;;^UTILITY(U,$J,358.3,27069,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27069,1,3,0)
 ;;=3^Allergic Contact Dermatitis,Unspec
 ;;^UTILITY(U,$J,358.3,27069,1,4,0)
 ;;=4^L23.9
 ;;^UTILITY(U,$J,358.3,27069,2)
 ;;=^5009125
 ;;^UTILITY(U,$J,358.3,27070,0)
 ;;=L24.9^^132^1309^163
 ;;^UTILITY(U,$J,358.3,27070,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,27070,1,3,0)
 ;;=3^Irritant Contact Dermatitis,Unspec
 ;;^UTILITY(U,$J,358.3,27070,1,4,0)
 ;;=4^L24.9
 ;;^UTILITY(U,$J,358.3,27070,2)
 ;;=^5009136
 ;;^UTILITY(U,$J,358.3,27071,0)
 ;;=L25.9^^132^1309^115
 ;;^UTILITY(U,$J,358.3,27071,1,0)
 ;;=^358.31IA^4^2