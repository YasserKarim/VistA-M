IBDEI3F6 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,57523,1,4,0)
 ;;=4^I25.811
 ;;^UTILITY(U,$J,358.3,57523,2)
 ;;=^5007142
 ;;^UTILITY(U,$J,358.3,57524,0)
 ;;=I25.812^^267^2879^2
 ;;^UTILITY(U,$J,358.3,57524,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57524,1,3,0)
 ;;=3^Athscl Bypass Cor Art of Transplanted Hrt w/o Ang Pctrs
 ;;^UTILITY(U,$J,358.3,57524,1,4,0)
 ;;=4^I25.812
 ;;^UTILITY(U,$J,358.3,57524,2)
 ;;=^5007143
 ;;^UTILITY(U,$J,358.3,57525,0)
 ;;=I35.0^^267^2879^10
 ;;^UTILITY(U,$J,358.3,57525,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57525,1,3,0)
 ;;=3^Nonrhematic Aortic Valve Stenosis
 ;;^UTILITY(U,$J,358.3,57525,1,4,0)
 ;;=4^I35.0
 ;;^UTILITY(U,$J,358.3,57525,2)
 ;;=^5007174
 ;;^UTILITY(U,$J,358.3,57526,0)
 ;;=I35.1^^267^2879^13
 ;;^UTILITY(U,$J,358.3,57526,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57526,1,3,0)
 ;;=3^Nonrheumatic Aortic Valve Insufficiency
 ;;^UTILITY(U,$J,358.3,57526,1,4,0)
 ;;=4^I35.1
 ;;^UTILITY(U,$J,358.3,57526,2)
 ;;=^5007175
 ;;^UTILITY(U,$J,358.3,57527,0)
 ;;=I35.2^^267^2879^14
 ;;^UTILITY(U,$J,358.3,57527,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57527,1,3,0)
 ;;=3^Nonrheumatic Aortic Valve Stenosis w/ Insufficiency
 ;;^UTILITY(U,$J,358.3,57527,1,4,0)
 ;;=4^I35.2
 ;;^UTILITY(U,$J,358.3,57527,2)
 ;;=^5007176
 ;;^UTILITY(U,$J,358.3,57528,0)
 ;;=I35.8^^267^2879^11
 ;;^UTILITY(U,$J,358.3,57528,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57528,1,3,0)
 ;;=3^Nonrheumatic Aortic Valve Disorders NEC
 ;;^UTILITY(U,$J,358.3,57528,1,4,0)
 ;;=4^I35.8
 ;;^UTILITY(U,$J,358.3,57528,2)
 ;;=^5007177
 ;;^UTILITY(U,$J,358.3,57529,0)
 ;;=I35.9^^267^2879^12
 ;;^UTILITY(U,$J,358.3,57529,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57529,1,3,0)
 ;;=3^Nonrheumatic Aortic Valve Disorders,Unspec
 ;;^UTILITY(U,$J,358.3,57529,1,4,0)
 ;;=4^I35.9
 ;;^UTILITY(U,$J,358.3,57529,2)
 ;;=^5007178
 ;;^UTILITY(U,$J,358.3,57530,0)
 ;;=I48.91^^267^2879^5
 ;;^UTILITY(U,$J,358.3,57530,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57530,1,3,0)
 ;;=3^Atrial Fibrillation,Unspec
 ;;^UTILITY(U,$J,358.3,57530,1,4,0)
 ;;=4^I48.91
 ;;^UTILITY(U,$J,358.3,57530,2)
 ;;=^5007229
 ;;^UTILITY(U,$J,358.3,57531,0)
 ;;=I49.9^^267^2879^6
 ;;^UTILITY(U,$J,358.3,57531,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57531,1,3,0)
 ;;=3^Cardiac Arrhythmia,Unspec
 ;;^UTILITY(U,$J,358.3,57531,1,4,0)
 ;;=4^I49.9
 ;;^UTILITY(U,$J,358.3,57531,2)
 ;;=^5007237
 ;;^UTILITY(U,$J,358.3,57532,0)
 ;;=I50.9^^267^2879^8
 ;;^UTILITY(U,$J,358.3,57532,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57532,1,3,0)
 ;;=3^Heart Failure,Unspec
 ;;^UTILITY(U,$J,358.3,57532,1,4,0)
 ;;=4^I50.9
 ;;^UTILITY(U,$J,358.3,57532,2)
 ;;=^5007251
 ;;^UTILITY(U,$J,358.3,57533,0)
 ;;=I73.9^^267^2879^16
 ;;^UTILITY(U,$J,358.3,57533,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57533,1,3,0)
 ;;=3^Peripheral Vascular Disease,Unspec
 ;;^UTILITY(U,$J,358.3,57533,1,4,0)
 ;;=4^I73.9
 ;;^UTILITY(U,$J,358.3,57533,2)
 ;;=^184182
 ;;^UTILITY(U,$J,358.3,57534,0)
 ;;=I87.2^^267^2879^18
 ;;^UTILITY(U,$J,358.3,57534,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57534,1,3,0)
 ;;=3^Venous Insufficiency,Chronic,Peripheral
 ;;^UTILITY(U,$J,358.3,57534,1,4,0)
 ;;=4^I87.2
 ;;^UTILITY(U,$J,358.3,57534,2)
 ;;=^5008047
 ;;^UTILITY(U,$J,358.3,57535,0)
 ;;=R07.9^^267^2879^7
 ;;^UTILITY(U,$J,358.3,57535,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57535,1,3,0)
 ;;=3^Chest Pain,Unspec
 ;;^UTILITY(U,$J,358.3,57535,1,4,0)
 ;;=4^R07.9
 ;;^UTILITY(U,$J,358.3,57535,2)
 ;;=^5019201
 ;;^UTILITY(U,$J,358.3,57536,0)
 ;;=E03.9^^267^2880^18
 ;;^UTILITY(U,$J,358.3,57536,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,57536,1,3,0)
 ;;=3^Hypothyroidism,Unspec