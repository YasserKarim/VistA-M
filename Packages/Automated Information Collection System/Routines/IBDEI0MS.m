IBDEI0MS ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,10403,2)
 ;;=^5002654
 ;;^UTILITY(U,$J,358.3,10404,0)
 ;;=E11.621^^68^667^16
 ;;^UTILITY(U,$J,358.3,10404,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10404,1,3,0)
 ;;=3^DM Type 2 w/ Diabetic Foot Ulcer
 ;;^UTILITY(U,$J,358.3,10404,1,4,0)
 ;;=4^E11.621
 ;;^UTILITY(U,$J,358.3,10404,2)
 ;;=^5002656
 ;;^UTILITY(U,$J,358.3,10405,0)
 ;;=E11.622^^68^667^20
 ;;^UTILITY(U,$J,358.3,10405,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10405,1,3,0)
 ;;=3^DM Type 2 w/ Skin Ulcer NEC
 ;;^UTILITY(U,$J,358.3,10405,1,4,0)
 ;;=4^E11.622
 ;;^UTILITY(U,$J,358.3,10405,2)
 ;;=^5002657
 ;;^UTILITY(U,$J,358.3,10406,0)
 ;;=E11.65^^68^667^19
 ;;^UTILITY(U,$J,358.3,10406,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10406,1,3,0)
 ;;=3^DM Type 2 w/ Hyperglycemia
 ;;^UTILITY(U,$J,358.3,10406,1,4,0)
 ;;=4^E11.65
 ;;^UTILITY(U,$J,358.3,10406,2)
 ;;=^5002663
 ;;^UTILITY(U,$J,358.3,10407,0)
 ;;=E11.9^^68^667^21
 ;;^UTILITY(U,$J,358.3,10407,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10407,1,3,0)
 ;;=3^DM Type 2 w/o Complications
 ;;^UTILITY(U,$J,358.3,10407,1,4,0)
 ;;=4^E11.9
 ;;^UTILITY(U,$J,358.3,10407,2)
 ;;=^5002666
 ;;^UTILITY(U,$J,358.3,10408,0)
 ;;=E13.9^^68^667^22
 ;;^UTILITY(U,$J,358.3,10408,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10408,1,3,0)
 ;;=3^Diabetes Mellitus (Secondary) w/o Complications NEC
 ;;^UTILITY(U,$J,358.3,10408,1,4,0)
 ;;=4^E13.9
 ;;^UTILITY(U,$J,358.3,10408,2)
 ;;=^5002704
 ;;^UTILITY(U,$J,358.3,10409,0)
 ;;=E16.2^^68^667^29
 ;;^UTILITY(U,$J,358.3,10409,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10409,1,3,0)
 ;;=3^Hypoglycemia,Unspec
 ;;^UTILITY(U,$J,358.3,10409,1,4,0)
 ;;=4^E16.2
 ;;^UTILITY(U,$J,358.3,10409,2)
 ;;=^5002708
 ;;^UTILITY(U,$J,358.3,10410,0)
 ;;=E20.0^^68^667^34
 ;;^UTILITY(U,$J,358.3,10410,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10410,1,3,0)
 ;;=3^Idiopathic Hypoparathyroidism
 ;;^UTILITY(U,$J,358.3,10410,1,4,0)
 ;;=4^E20.0
 ;;^UTILITY(U,$J,358.3,10410,2)
 ;;=^5002712
 ;;^UTILITY(U,$J,358.3,10411,0)
 ;;=E20.9^^68^667^30
 ;;^UTILITY(U,$J,358.3,10411,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10411,1,3,0)
 ;;=3^Hypoparathyroidism,Unspec
 ;;^UTILITY(U,$J,358.3,10411,1,4,0)
 ;;=4^E20.9
 ;;^UTILITY(U,$J,358.3,10411,2)
 ;;=^5002714
 ;;^UTILITY(U,$J,358.3,10412,0)
 ;;=E23.0^^68^667^31
 ;;^UTILITY(U,$J,358.3,10412,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10412,1,3,0)
 ;;=3^Hypopituitarism
 ;;^UTILITY(U,$J,358.3,10412,1,4,0)
 ;;=4^E23.0
 ;;^UTILITY(U,$J,358.3,10412,2)
 ;;=^60685
 ;;^UTILITY(U,$J,358.3,10413,0)
 ;;=E27.1^^68^667^51
 ;;^UTILITY(U,$J,358.3,10413,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10413,1,3,0)
 ;;=3^Primary Adrenocortical Insufficiency
 ;;^UTILITY(U,$J,358.3,10413,1,4,0)
 ;;=4^E27.1
 ;;^UTILITY(U,$J,358.3,10413,2)
 ;;=^5002740
 ;;^UTILITY(U,$J,358.3,10414,0)
 ;;=E27.2^^68^667^1
 ;;^UTILITY(U,$J,358.3,10414,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10414,1,3,0)
 ;;=3^Addisonian Crisis
 ;;^UTILITY(U,$J,358.3,10414,1,4,0)
 ;;=4^E27.2
 ;;^UTILITY(U,$J,358.3,10414,2)
 ;;=^263725
 ;;^UTILITY(U,$J,358.3,10415,0)
 ;;=E27.3^^68^667^23
 ;;^UTILITY(U,$J,358.3,10415,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10415,1,3,0)
 ;;=3^Drug-induced Adrenocortical Insufficiency
 ;;^UTILITY(U,$J,358.3,10415,1,4,0)
 ;;=4^E27.3
 ;;^UTILITY(U,$J,358.3,10415,2)
 ;;=^5002741
 ;;^UTILITY(U,$J,358.3,10416,0)
 ;;=E29.1^^68^667^52
 ;;^UTILITY(U,$J,358.3,10416,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,10416,1,3,0)
 ;;=3^Testicular Hypofunction
 ;;^UTILITY(U,$J,358.3,10416,1,4,0)
 ;;=4^E29.1
 ;;^UTILITY(U,$J,358.3,10416,2)
 ;;=^5002754
 ;;^UTILITY(U,$J,358.3,10417,0)
 ;;=E55.9^^68^667^59
