IBDEI0KK ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,9295,1,4,0)
 ;;=4^F44.5
 ;;^UTILITY(U,$J,358.3,9295,2)
 ;;=^5003580
 ;;^UTILITY(U,$J,358.3,9296,0)
 ;;=R40.4^^61^588^30
 ;;^UTILITY(U,$J,358.3,9296,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9296,1,3,0)
 ;;=3^Transient Alteration of Awareness
 ;;^UTILITY(U,$J,358.3,9296,1,4,0)
 ;;=4^R40.4
 ;;^UTILITY(U,$J,358.3,9296,2)
 ;;=^5019435
 ;;^UTILITY(U,$J,358.3,9297,0)
 ;;=R40.1^^61^588^29
 ;;^UTILITY(U,$J,358.3,9297,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9297,1,3,0)
 ;;=3^Stupor
 ;;^UTILITY(U,$J,358.3,9297,1,4,0)
 ;;=4^R40.1
 ;;^UTILITY(U,$J,358.3,9297,2)
 ;;=^5019353
 ;;^UTILITY(U,$J,358.3,9298,0)
 ;;=R40.0^^61^588^28
 ;;^UTILITY(U,$J,358.3,9298,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9298,1,3,0)
 ;;=3^Somnolence
 ;;^UTILITY(U,$J,358.3,9298,1,4,0)
 ;;=4^R40.0
 ;;^UTILITY(U,$J,358.3,9298,2)
 ;;=^5019352
 ;;^UTILITY(U,$J,358.3,9299,0)
 ;;=R56.9^^61^588^9
 ;;^UTILITY(U,$J,358.3,9299,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9299,1,3,0)
 ;;=3^Convulsions,Unspec
 ;;^UTILITY(U,$J,358.3,9299,1,4,0)
 ;;=4^R56.9
 ;;^UTILITY(U,$J,358.3,9299,2)
 ;;=^5019524
 ;;^UTILITY(U,$J,358.3,9300,0)
 ;;=R56.1^^61^588^24
 ;;^UTILITY(U,$J,358.3,9300,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9300,1,3,0)
 ;;=3^Post Traumatic Seizures
 ;;^UTILITY(U,$J,358.3,9300,1,4,0)
 ;;=4^R56.1
 ;;^UTILITY(U,$J,358.3,9300,2)
 ;;=^5019523
 ;;^UTILITY(U,$J,358.3,9301,0)
 ;;=G45.0^^61^589^15
 ;;^UTILITY(U,$J,358.3,9301,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9301,1,3,0)
 ;;=3^Vertebro-Basilar Artery Syndrome
 ;;^UTILITY(U,$J,358.3,9301,1,4,0)
 ;;=4^G45.0
 ;;^UTILITY(U,$J,358.3,9301,2)
 ;;=^5003955
 ;;^UTILITY(U,$J,358.3,9302,0)
 ;;=G45.1^^61^589^4
 ;;^UTILITY(U,$J,358.3,9302,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9302,1,3,0)
 ;;=3^Carotid Artery Syndrome
 ;;^UTILITY(U,$J,358.3,9302,1,4,0)
 ;;=4^G45.1
 ;;^UTILITY(U,$J,358.3,9302,2)
 ;;=^5003956
 ;;^UTILITY(U,$J,358.3,9303,0)
 ;;=G45.3^^61^589^1
 ;;^UTILITY(U,$J,358.3,9303,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9303,1,3,0)
 ;;=3^Amaurosis Fugax
 ;;^UTILITY(U,$J,358.3,9303,1,4,0)
 ;;=4^G45.3
 ;;^UTILITY(U,$J,358.3,9303,2)
 ;;=^304129
 ;;^UTILITY(U,$J,358.3,9304,0)
 ;;=G45.4^^61^589^13
 ;;^UTILITY(U,$J,358.3,9304,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9304,1,3,0)
 ;;=3^Transient Global Amnesia
 ;;^UTILITY(U,$J,358.3,9304,1,4,0)
 ;;=4^G45.4
 ;;^UTILITY(U,$J,358.3,9304,2)
 ;;=^293883
 ;;^UTILITY(U,$J,358.3,9305,0)
 ;;=G45.8^^61^589^11
 ;;^UTILITY(U,$J,358.3,9305,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9305,1,3,0)
 ;;=3^Transient Cerebral Ischemic Attacks,Other
 ;;^UTILITY(U,$J,358.3,9305,1,4,0)
 ;;=4^G45.8
 ;;^UTILITY(U,$J,358.3,9305,2)
 ;;=^5003958
 ;;^UTILITY(U,$J,358.3,9306,0)
 ;;=G45.9^^61^589^12
 ;;^UTILITY(U,$J,358.3,9306,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9306,1,3,0)
 ;;=3^Transient Cerebral Ischemic Attacks,Unspec
 ;;^UTILITY(U,$J,358.3,9306,1,4,0)
 ;;=4^G45.9
 ;;^UTILITY(U,$J,358.3,9306,2)
 ;;=^5003959
 ;;^UTILITY(U,$J,358.3,9307,0)
 ;;=G46.0^^61^589^8
 ;;^UTILITY(U,$J,358.3,9307,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9307,1,3,0)
 ;;=3^Middle Cerebral Artery Syndrome
 ;;^UTILITY(U,$J,358.3,9307,1,4,0)
 ;;=4^G46.0
 ;;^UTILITY(U,$J,358.3,9307,2)
 ;;=^5003960
 ;;^UTILITY(U,$J,358.3,9308,0)
 ;;=G46.1^^61^589^2
 ;;^UTILITY(U,$J,358.3,9308,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,9308,1,3,0)
 ;;=3^Anterior Cerebral Artery Syndrome
 ;;^UTILITY(U,$J,358.3,9308,1,4,0)
 ;;=4^G46.1
 ;;^UTILITY(U,$J,358.3,9308,2)
 ;;=^5003961
 ;;^UTILITY(U,$J,358.3,9309,0)
 ;;=G46.2^^61^589^10
 ;;^UTILITY(U,$J,358.3,9309,1,0)
 ;;=^358.31IA^4^2