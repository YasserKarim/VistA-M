IBDEI1OW ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,28270,0)
 ;;=G30.1^^132^1327^2
 ;;^UTILITY(U,$J,358.3,28270,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28270,1,3,0)
 ;;=3^Alzheimer's Disease w/ Late Onset
 ;;^UTILITY(U,$J,358.3,28270,1,4,0)
 ;;=4^G30.1
 ;;^UTILITY(U,$J,358.3,28270,2)
 ;;=^5003806
 ;;^UTILITY(U,$J,358.3,28271,0)
 ;;=G30.9^^132^1327^4
 ;;^UTILITY(U,$J,358.3,28271,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28271,1,3,0)
 ;;=3^Alzheimer's Disease,Unspec
 ;;^UTILITY(U,$J,358.3,28271,1,4,0)
 ;;=4^G30.9
 ;;^UTILITY(U,$J,358.3,28271,2)
 ;;=^5003808
 ;;^UTILITY(U,$J,358.3,28272,0)
 ;;=G21.4^^132^1327^40
 ;;^UTILITY(U,$J,358.3,28272,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28272,1,3,0)
 ;;=3^Vascular Parkinsonism
 ;;^UTILITY(U,$J,358.3,28272,1,4,0)
 ;;=4^G21.4
 ;;^UTILITY(U,$J,358.3,28272,2)
 ;;=^5003776
 ;;^UTILITY(U,$J,358.3,28273,0)
 ;;=G20.^^132^1327^32
 ;;^UTILITY(U,$J,358.3,28273,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28273,1,3,0)
 ;;=3^Parkinson's Disease
 ;;^UTILITY(U,$J,358.3,28273,1,4,0)
 ;;=4^G20.
 ;;^UTILITY(U,$J,358.3,28273,2)
 ;;=^5003770
 ;;^UTILITY(U,$J,358.3,28274,0)
 ;;=G25.0^^132^1327^15
 ;;^UTILITY(U,$J,358.3,28274,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28274,1,3,0)
 ;;=3^Essential Tremor
 ;;^UTILITY(U,$J,358.3,28274,1,4,0)
 ;;=4^G25.0
 ;;^UTILITY(U,$J,358.3,28274,2)
 ;;=^5003791
 ;;^UTILITY(U,$J,358.3,28275,0)
 ;;=G25.2^^132^1327^39
 ;;^UTILITY(U,$J,358.3,28275,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28275,1,3,0)
 ;;=3^Tremor,Other Spec Forms
 ;;^UTILITY(U,$J,358.3,28275,1,4,0)
 ;;=4^G25.2
 ;;^UTILITY(U,$J,358.3,28275,2)
 ;;=^5003793
 ;;^UTILITY(U,$J,358.3,28276,0)
 ;;=G25.1^^132^1327^38
 ;;^UTILITY(U,$J,358.3,28276,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28276,1,3,0)
 ;;=3^Tremor,Drug-Induced
 ;;^UTILITY(U,$J,358.3,28276,1,4,0)
 ;;=4^G25.1
 ;;^UTILITY(U,$J,358.3,28276,2)
 ;;=^5003792
 ;;^UTILITY(U,$J,358.3,28277,0)
 ;;=G25.81^^132^1327^36
 ;;^UTILITY(U,$J,358.3,28277,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28277,1,3,0)
 ;;=3^Restless Legs Syndrome
 ;;^UTILITY(U,$J,358.3,28277,1,4,0)
 ;;=4^G25.81
 ;;^UTILITY(U,$J,358.3,28277,2)
 ;;=^5003801
 ;;^UTILITY(U,$J,358.3,28278,0)
 ;;=G35.^^132^1327^29
 ;;^UTILITY(U,$J,358.3,28278,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28278,1,3,0)
 ;;=3^Multiple Sclerosis
 ;;^UTILITY(U,$J,358.3,28278,1,4,0)
 ;;=4^G35.
 ;;^UTILITY(U,$J,358.3,28278,2)
 ;;=^79761
 ;;^UTILITY(U,$J,358.3,28279,0)
 ;;=G40.901^^132^1327^13
 ;;^UTILITY(U,$J,358.3,28279,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28279,1,3,0)
 ;;=3^Epilepsy,Not Intractable w/ Status Epilepticus,Unspec
 ;;^UTILITY(U,$J,358.3,28279,1,4,0)
 ;;=4^G40.901
 ;;^UTILITY(U,$J,358.3,28279,2)
 ;;=^5003864
 ;;^UTILITY(U,$J,358.3,28280,0)
 ;;=G40.909^^132^1327^14
 ;;^UTILITY(U,$J,358.3,28280,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28280,1,3,0)
 ;;=3^Epilepsy,Not Intractable w/o Status Epilepticus,Unspec
 ;;^UTILITY(U,$J,358.3,28280,1,4,0)
 ;;=4^G40.909
 ;;^UTILITY(U,$J,358.3,28280,2)
 ;;=^5003865
 ;;^UTILITY(U,$J,358.3,28281,0)
 ;;=G43.809^^132^1327^26
 ;;^UTILITY(U,$J,358.3,28281,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28281,1,3,0)
 ;;=3^Migraine,Not Intractable w/o Status Migrainosus,Other
 ;;^UTILITY(U,$J,358.3,28281,1,4,0)
 ;;=4^G43.809
 ;;^UTILITY(U,$J,358.3,28281,2)
 ;;=^5003901
 ;;^UTILITY(U,$J,358.3,28282,0)
 ;;=G43.B0^^132^1327^28
 ;;^UTILITY(U,$J,358.3,28282,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28282,1,3,0)
 ;;=3^Migraine,Ophthalmoplegic Not Intractable
 ;;^UTILITY(U,$J,358.3,28282,1,4,0)
 ;;=4^G43.B0
 ;;^UTILITY(U,$J,358.3,28282,2)
 ;;=^5003914
 ;;^UTILITY(U,$J,358.3,28283,0)
 ;;=G43.C0^^132^1327^17