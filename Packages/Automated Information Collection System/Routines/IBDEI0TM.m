IBDEI0TM ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,13623,2)
 ;;=^5002122
 ;;^UTILITY(U,$J,358.3,13624,0)
 ;;=H35.81^^80^763^82
 ;;^UTILITY(U,$J,358.3,13624,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13624,1,3,0)
 ;;=3^Retinal Edema
 ;;^UTILITY(U,$J,358.3,13624,1,4,0)
 ;;=4^H35.81
 ;;^UTILITY(U,$J,358.3,13624,2)
 ;;=^5005715
 ;;^UTILITY(U,$J,358.3,13625,0)
 ;;=H44.21^^80^763^38
 ;;^UTILITY(U,$J,358.3,13625,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13625,1,3,0)
 ;;=3^Degenerative Myopia,Right Eye
 ;;^UTILITY(U,$J,358.3,13625,1,4,0)
 ;;=4^H44.21
 ;;^UTILITY(U,$J,358.3,13625,2)
 ;;=^5005987
 ;;^UTILITY(U,$J,358.3,13626,0)
 ;;=H44.22^^80^763^37
 ;;^UTILITY(U,$J,358.3,13626,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13626,1,3,0)
 ;;=3^Degenerative Myopia,Left Eye
 ;;^UTILITY(U,$J,358.3,13626,1,4,0)
 ;;=4^H44.22
 ;;^UTILITY(U,$J,358.3,13626,2)
 ;;=^5005988
 ;;^UTILITY(U,$J,358.3,13627,0)
 ;;=H33.001^^80^763^78
 ;;^UTILITY(U,$J,358.3,13627,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13627,1,3,0)
 ;;=3^Retinal Detachment w/ Retinal Break,Right Eye
 ;;^UTILITY(U,$J,358.3,13627,1,4,0)
 ;;=4^H33.001
 ;;^UTILITY(U,$J,358.3,13627,2)
 ;;=^5005490
 ;;^UTILITY(U,$J,358.3,13628,0)
 ;;=H33.002^^80^763^77
 ;;^UTILITY(U,$J,358.3,13628,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13628,1,3,0)
 ;;=3^Retinal Detachment w/ Retinal Break,Left Eye
 ;;^UTILITY(U,$J,358.3,13628,1,4,0)
 ;;=4^H33.002
 ;;^UTILITY(U,$J,358.3,13628,2)
 ;;=^5005491
 ;;^UTILITY(U,$J,358.3,13629,0)
 ;;=H33.011^^80^763^80
 ;;^UTILITY(U,$J,358.3,13629,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13629,1,3,0)
 ;;=3^Retinal Detachment w/ Single Break,Right Eye
 ;;^UTILITY(U,$J,358.3,13629,1,4,0)
 ;;=4^H33.011
 ;;^UTILITY(U,$J,358.3,13629,2)
 ;;=^5005493
 ;;^UTILITY(U,$J,358.3,13630,0)
 ;;=H33.012^^80^763^79
 ;;^UTILITY(U,$J,358.3,13630,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13630,1,3,0)
 ;;=3^Retinal Detachment w/ Single Break,Left Eye
 ;;^UTILITY(U,$J,358.3,13630,1,4,0)
 ;;=4^H33.012
 ;;^UTILITY(U,$J,358.3,13630,2)
 ;;=^5005494
 ;;^UTILITY(U,$J,358.3,13631,0)
 ;;=H33.051^^80^763^106
 ;;^UTILITY(U,$J,358.3,13631,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13631,1,3,0)
 ;;=3^Total Retinal Detachment,Right Eye
 ;;^UTILITY(U,$J,358.3,13631,1,4,0)
 ;;=4^H33.051
 ;;^UTILITY(U,$J,358.3,13631,2)
 ;;=^5005509
 ;;^UTILITY(U,$J,358.3,13632,0)
 ;;=H33.052^^80^763^105
 ;;^UTILITY(U,$J,358.3,13632,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13632,1,3,0)
 ;;=3^Total Retinal Detachment,Left Eye
 ;;^UTILITY(U,$J,358.3,13632,1,4,0)
 ;;=4^H33.052
 ;;^UTILITY(U,$J,358.3,13632,2)
 ;;=^5005510
 ;;^UTILITY(U,$J,358.3,13633,0)
 ;;=H33.8^^80^763^81
 ;;^UTILITY(U,$J,358.3,13633,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13633,1,3,0)
 ;;=3^Retinal Detachments NEC
 ;;^UTILITY(U,$J,358.3,13633,1,4,0)
 ;;=4^H33.8
 ;;^UTILITY(U,$J,358.3,13633,2)
 ;;=^5005551
 ;;^UTILITY(U,$J,358.3,13634,0)
 ;;=H33.101^^80^763^97
 ;;^UTILITY(U,$J,358.3,13634,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13634,1,3,0)
 ;;=3^Retinoschisis,Right Eye,Unspec
 ;;^UTILITY(U,$J,358.3,13634,1,4,0)
 ;;=4^H33.101
 ;;^UTILITY(U,$J,358.3,13634,2)
 ;;=^5005513
 ;;^UTILITY(U,$J,358.3,13635,0)
 ;;=H33.102^^80^763^96
 ;;^UTILITY(U,$J,358.3,13635,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13635,1,3,0)
 ;;=3^Retinoschisis,Left Eye,Unspec
 ;;^UTILITY(U,$J,358.3,13635,1,4,0)
 ;;=4^H33.102
 ;;^UTILITY(U,$J,358.3,13635,2)
 ;;=^5005514
 ;;^UTILITY(U,$J,358.3,13636,0)
 ;;=H33.321^^80^763^99
 ;;^UTILITY(U,$J,358.3,13636,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,13636,1,3,0)
 ;;=3^Round Hole,Right Eye
 ;;^UTILITY(U,$J,358.3,13636,1,4,0)
 ;;=4^H33.321