IBDEI0P5 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,11513,1,3,0)
 ;;=3^Inhalant Abuse w/ Intoxication,Uncomplicated
 ;;^UTILITY(U,$J,358.3,11513,1,4,0)
 ;;=4^F18.120
 ;;^UTILITY(U,$J,358.3,11513,2)
 ;;=^5003381
 ;;^UTILITY(U,$J,358.3,11514,0)
 ;;=G44.1^^68^687^157
 ;;^UTILITY(U,$J,358.3,11514,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11514,1,3,0)
 ;;=3^Vascular Headache NEC
 ;;^UTILITY(U,$J,358.3,11514,1,4,0)
 ;;=4^G44.1
 ;;^UTILITY(U,$J,358.3,11514,2)
 ;;=^5003934
 ;;^UTILITY(U,$J,358.3,11515,0)
 ;;=G93.3^^68^687^144
 ;;^UTILITY(U,$J,358.3,11515,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11515,1,3,0)
 ;;=3^Postviral Fatigue Syndrome
 ;;^UTILITY(U,$J,358.3,11515,1,4,0)
 ;;=4^G93.3
 ;;^UTILITY(U,$J,358.3,11515,2)
 ;;=^5004181
 ;;^UTILITY(U,$J,358.3,11516,0)
 ;;=K08.101^^68^687^52
 ;;^UTILITY(U,$J,358.3,11516,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11516,1,3,0)
 ;;=3^Complete Loss of Teeth,Unspec,Class I
 ;;^UTILITY(U,$J,358.3,11516,1,4,0)
 ;;=4^K08.101
 ;;^UTILITY(U,$J,358.3,11516,2)
 ;;=^5008406
 ;;^UTILITY(U,$J,358.3,11517,0)
 ;;=K08.102^^68^687^53
 ;;^UTILITY(U,$J,358.3,11517,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11517,1,3,0)
 ;;=3^Complete Loss of Teeth,Unspec,Class II
 ;;^UTILITY(U,$J,358.3,11517,1,4,0)
 ;;=4^K08.102
 ;;^UTILITY(U,$J,358.3,11517,2)
 ;;=^5008407
 ;;^UTILITY(U,$J,358.3,11518,0)
 ;;=K08.103^^68^687^54
 ;;^UTILITY(U,$J,358.3,11518,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11518,1,3,0)
 ;;=3^Complete Loss of Teeth,Unspec,Class III
 ;;^UTILITY(U,$J,358.3,11518,1,4,0)
 ;;=4^K08.103
 ;;^UTILITY(U,$J,358.3,11518,2)
 ;;=^5008408
 ;;^UTILITY(U,$J,358.3,11519,0)
 ;;=K08.104^^68^687^55
 ;;^UTILITY(U,$J,358.3,11519,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11519,1,3,0)
 ;;=3^Complete Loss of Teeth,Unspec,Class IV
 ;;^UTILITY(U,$J,358.3,11519,1,4,0)
 ;;=4^K08.104
 ;;^UTILITY(U,$J,358.3,11519,2)
 ;;=^5008409
 ;;^UTILITY(U,$J,358.3,11520,0)
 ;;=K08.109^^68^687^56
 ;;^UTILITY(U,$J,358.3,11520,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11520,1,3,0)
 ;;=3^Complete Loss of Teeth,Unspec,Class Unspec
 ;;^UTILITY(U,$J,358.3,11520,1,4,0)
 ;;=4^K08.109
 ;;^UTILITY(U,$J,358.3,11520,2)
 ;;=^5008410
 ;;^UTILITY(U,$J,358.3,11521,0)
 ;;=K08.401^^68^687^133
 ;;^UTILITY(U,$J,358.3,11521,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11521,1,3,0)
 ;;=3^Partial Loss of Teeth,Unspec,Class I
 ;;^UTILITY(U,$J,358.3,11521,1,4,0)
 ;;=4^K08.401
 ;;^UTILITY(U,$J,358.3,11521,2)
 ;;=^5008432
 ;;^UTILITY(U,$J,358.3,11522,0)
 ;;=K08.402^^68^687^134
 ;;^UTILITY(U,$J,358.3,11522,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11522,1,3,0)
 ;;=3^Partial Loss of Teeth,Unspec,Class II
 ;;^UTILITY(U,$J,358.3,11522,1,4,0)
 ;;=4^K08.402
 ;;^UTILITY(U,$J,358.3,11522,2)
 ;;=^5008433
 ;;^UTILITY(U,$J,358.3,11523,0)
 ;;=K08.403^^68^687^135
 ;;^UTILITY(U,$J,358.3,11523,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11523,1,3,0)
 ;;=3^Partial Loss of Teeth,Unspec,Class III
 ;;^UTILITY(U,$J,358.3,11523,1,4,0)
 ;;=4^K08.403
 ;;^UTILITY(U,$J,358.3,11523,2)
 ;;=^5008434
 ;;^UTILITY(U,$J,358.3,11524,0)
 ;;=K08.404^^68^687^136
 ;;^UTILITY(U,$J,358.3,11524,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11524,1,3,0)
 ;;=3^Partial Loss of Teeth,Unspec,Class IV
 ;;^UTILITY(U,$J,358.3,11524,1,4,0)
 ;;=4^K08.404
 ;;^UTILITY(U,$J,358.3,11524,2)
 ;;=^5008435
 ;;^UTILITY(U,$J,358.3,11525,0)
 ;;=K08.409^^68^687^137
 ;;^UTILITY(U,$J,358.3,11525,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,11525,1,3,0)
 ;;=3^Partial Loss of Teeth,Unspec,Class Unspec
 ;;^UTILITY(U,$J,358.3,11525,1,4,0)
 ;;=4^K08.409
 ;;^UTILITY(U,$J,358.3,11525,2)
 ;;=^5008436
 ;;^UTILITY(U,$J,358.3,11526,0)
 ;;=N39.42^^68^687^93