IBDEI32O ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,51522,1,2,0)
 ;;=2^97140
 ;;^UTILITY(U,$J,358.3,51522,1,3,0)
 ;;=3^Traction, Manual, 15 Mins each
 ;;^UTILITY(U,$J,358.3,51523,0)
 ;;=97035^^223^2489^19^^^^1
 ;;^UTILITY(U,$J,358.3,51523,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51523,1,2,0)
 ;;=2^97035
 ;;^UTILITY(U,$J,358.3,51523,1,3,0)
 ;;=3^Ultrasound, 15 Mins each
 ;;^UTILITY(U,$J,358.3,51524,0)
 ;;=97016^^223^2489^20^^^^1
 ;;^UTILITY(U,$J,358.3,51524,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51524,1,2,0)
 ;;=2^97016
 ;;^UTILITY(U,$J,358.3,51524,1,3,0)
 ;;=3^Vasopneumatic device
 ;;^UTILITY(U,$J,358.3,51525,0)
 ;;=97022^^223^2489^22^^^^1
 ;;^UTILITY(U,$J,358.3,51525,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51525,1,2,0)
 ;;=2^97022
 ;;^UTILITY(U,$J,358.3,51525,1,3,0)
 ;;=3^Whirlpool
 ;;^UTILITY(U,$J,358.3,51526,0)
 ;;=97532^^223^2489^21^^^^1
 ;;^UTILITY(U,$J,358.3,51526,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51526,1,2,0)
 ;;=2^97532
 ;;^UTILITY(U,$J,358.3,51526,1,3,0)
 ;;=3^Wheelchair Mgmnt Training
 ;;^UTILITY(U,$J,358.3,51527,0)
 ;;=95970^^223^2489^2^^^^1
 ;;^UTILITY(U,$J,358.3,51527,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51527,1,2,0)
 ;;=2^95970
 ;;^UTILITY(U,$J,358.3,51527,1,3,0)
 ;;=3^Analysis Spinal Cord Stim w/o Prog
 ;;^UTILITY(U,$J,358.3,51528,0)
 ;;=95971^^223^2489^1^^^^1
 ;;^UTILITY(U,$J,358.3,51528,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51528,1,2,0)
 ;;=2^95971
 ;;^UTILITY(U,$J,358.3,51528,1,3,0)
 ;;=3^Analysis Spinal Cord Stim w/ Prog
 ;;^UTILITY(U,$J,358.3,51529,0)
 ;;=95990^^223^2489^15^^^^1
 ;;^UTILITY(U,$J,358.3,51529,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51529,1,2,0)
 ;;=2^95990
 ;;^UTILITY(U,$J,358.3,51529,1,3,0)
 ;;=3^Refill of Intrathecal Pain Pump
 ;;^UTILITY(U,$J,358.3,51530,0)
 ;;=95991^^223^2489^14^^^^1
 ;;^UTILITY(U,$J,358.3,51530,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51530,1,2,0)
 ;;=2^95991
 ;;^UTILITY(U,$J,358.3,51530,1,3,0)
 ;;=3^Refill Intrathecal Pain Pump by MD
 ;;^UTILITY(U,$J,358.3,51531,0)
 ;;=20552^^223^2490^6^^^^1
 ;;^UTILITY(U,$J,358.3,51531,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51531,1,2,0)
 ;;=2^20552
 ;;^UTILITY(U,$J,358.3,51531,1,3,0)
 ;;=3^Trigger point INJ, 1 or 2 muscles
 ;;^UTILITY(U,$J,358.3,51532,0)
 ;;=20553^^223^2490^7^^^^1
 ;;^UTILITY(U,$J,358.3,51532,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51532,1,2,0)
 ;;=2^20553
 ;;^UTILITY(U,$J,358.3,51532,1,3,0)
 ;;=3^Trigger point INJ, 3 or more muscles
 ;;^UTILITY(U,$J,358.3,51533,0)
 ;;=20550^^223^2490^5^^^^1
 ;;^UTILITY(U,$J,358.3,51533,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51533,1,2,0)
 ;;=2^20550
 ;;^UTILITY(U,$J,358.3,51533,1,3,0)
 ;;=3^INJ tendon sheath/ligament
 ;;^UTILITY(U,$J,358.3,51534,0)
 ;;=20551^^223^2490^4^^^^1
 ;;^UTILITY(U,$J,358.3,51534,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51534,1,2,0)
 ;;=2^20551
 ;;^UTILITY(U,$J,358.3,51534,1,3,0)
 ;;=3^INJ tendon insertion/origin
 ;;^UTILITY(U,$J,358.3,51535,0)
 ;;=J0585^^223^2490^1^^^^1
 ;;^UTILITY(U,$J,358.3,51535,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51535,1,2,0)
 ;;=2^J0585
 ;;^UTILITY(U,$J,358.3,51535,1,3,0)
 ;;=3^Botulinum Toxin A, per unit
 ;;^UTILITY(U,$J,358.3,51536,0)
 ;;=J0587^^223^2490^2^^^^1
 ;;^UTILITY(U,$J,358.3,51536,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51536,1,2,0)
 ;;=2^J0587
 ;;^UTILITY(U,$J,358.3,51536,1,3,0)
 ;;=3^Botulinum Toxin B, 100 Units
 ;;^UTILITY(U,$J,358.3,51537,0)
 ;;=64615^^223^2490^3^^^^1
 ;;^UTILITY(U,$J,358.3,51537,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,51537,1,2,0)
 ;;=2^64615
 ;;^UTILITY(U,$J,358.3,51537,1,3,0)
 ;;=3^Chemodenervation Muscle for Migraine
