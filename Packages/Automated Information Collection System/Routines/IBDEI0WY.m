IBDEI0WY ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,15193,1,4,0)
 ;;=4^N92.0
 ;;^UTILITY(U,$J,358.3,15193,2)
 ;;=^5015908
 ;;^UTILITY(U,$J,358.3,15194,0)
 ;;=N92.5^^85^810^10
 ;;^UTILITY(U,$J,358.3,15194,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15194,1,3,0)
 ;;=3^Irregular Menstruation NEC
 ;;^UTILITY(U,$J,358.3,15194,1,4,0)
 ;;=4^N92.5
 ;;^UTILITY(U,$J,358.3,15194,2)
 ;;=^5015912
 ;;^UTILITY(U,$J,358.3,15195,0)
 ;;=N93.8^^85^810^2
 ;;^UTILITY(U,$J,358.3,15195,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15195,1,3,0)
 ;;=3^Abnormal Uterine/Vaginal Bleeding NEC
 ;;^UTILITY(U,$J,358.3,15195,1,4,0)
 ;;=4^N93.8
 ;;^UTILITY(U,$J,358.3,15195,2)
 ;;=^5015915
 ;;^UTILITY(U,$J,358.3,15196,0)
 ;;=N94.4^^85^810^17
 ;;^UTILITY(U,$J,358.3,15196,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15196,1,3,0)
 ;;=3^Primary Dysmenorrhea
 ;;^UTILITY(U,$J,358.3,15196,1,4,0)
 ;;=4^N94.4
 ;;^UTILITY(U,$J,358.3,15196,2)
 ;;=^5015920
 ;;^UTILITY(U,$J,358.3,15197,0)
 ;;=N94.5^^85^810^19
 ;;^UTILITY(U,$J,358.3,15197,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15197,1,3,0)
 ;;=3^Secondary Dysmenorrhea
 ;;^UTILITY(U,$J,358.3,15197,1,4,0)
 ;;=4^N94.5
 ;;^UTILITY(U,$J,358.3,15197,2)
 ;;=^5015921
 ;;^UTILITY(U,$J,358.3,15198,0)
 ;;=N94.6^^85^810^5
 ;;^UTILITY(U,$J,358.3,15198,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15198,1,3,0)
 ;;=3^Dysmenorrhea,Unspec
 ;;^UTILITY(U,$J,358.3,15198,1,4,0)
 ;;=4^N94.6
 ;;^UTILITY(U,$J,358.3,15198,2)
 ;;=^5015922
 ;;^UTILITY(U,$J,358.3,15199,0)
 ;;=N95.0^^85^810^16
 ;;^UTILITY(U,$J,358.3,15199,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15199,1,3,0)
 ;;=3^Postmenopausal Bleeding
 ;;^UTILITY(U,$J,358.3,15199,1,4,0)
 ;;=4^N95.0
 ;;^UTILITY(U,$J,358.3,15199,2)
 ;;=^97040
 ;;^UTILITY(U,$J,358.3,15200,0)
 ;;=R87.619^^85^810^1
 ;;^UTILITY(U,$J,358.3,15200,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15200,1,3,0)
 ;;=3^Abnormal Cytology Findings in Cervix Uteri Specimen,Unspec
 ;;^UTILITY(U,$J,358.3,15200,1,4,0)
 ;;=4^R87.619
 ;;^UTILITY(U,$J,358.3,15200,2)
 ;;=^5019676
 ;;^UTILITY(U,$J,358.3,15201,0)
 ;;=Z12.39^^85^810^18
 ;;^UTILITY(U,$J,358.3,15201,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15201,1,3,0)
 ;;=3^Screening for Malig Neop of Breast
 ;;^UTILITY(U,$J,358.3,15201,1,4,0)
 ;;=4^Z12.39
 ;;^UTILITY(U,$J,358.3,15201,2)
 ;;=^5062686
 ;;^UTILITY(U,$J,358.3,15202,0)
 ;;=C53.9^^85^810^13
 ;;^UTILITY(U,$J,358.3,15202,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15202,1,3,0)
 ;;=3^Malig Neop Cervix Uteri
 ;;^UTILITY(U,$J,358.3,15202,1,4,0)
 ;;=4^C53.9
 ;;^UTILITY(U,$J,358.3,15202,2)
 ;;=^5001204
 ;;^UTILITY(U,$J,358.3,15203,0)
 ;;=C56.9^^85^810^14
 ;;^UTILITY(U,$J,358.3,15203,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15203,1,3,0)
 ;;=3^Malig Neop Ovary,Unspec
 ;;^UTILITY(U,$J,358.3,15203,1,4,0)
 ;;=4^C56.9
 ;;^UTILITY(U,$J,358.3,15203,2)
 ;;=^5001214
 ;;^UTILITY(U,$J,358.3,15204,0)
 ;;=K64.8^^85^811^6
 ;;^UTILITY(U,$J,358.3,15204,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15204,1,3,0)
 ;;=3^Hemorrhoids,Internal
 ;;^UTILITY(U,$J,358.3,15204,1,4,0)
 ;;=4^K64.8
 ;;^UTILITY(U,$J,358.3,15204,2)
 ;;=^5008774
 ;;^UTILITY(U,$J,358.3,15205,0)
 ;;=K64.9^^85^811^7
 ;;^UTILITY(U,$J,358.3,15205,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15205,1,3,0)
 ;;=3^Hemorrhoids,Unspec
 ;;^UTILITY(U,$J,358.3,15205,1,4,0)
 ;;=4^K64.9
 ;;^UTILITY(U,$J,358.3,15205,2)
 ;;=^5008775
 ;;^UTILITY(U,$J,358.3,15206,0)
 ;;=K64.0^^85^811^1
 ;;^UTILITY(U,$J,358.3,15206,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,15206,1,3,0)
 ;;=3^First Degree Hemorrhoids
 ;;^UTILITY(U,$J,358.3,15206,1,4,0)
 ;;=4^K64.0
 ;;^UTILITY(U,$J,358.3,15206,2)
 ;;=^5008769