IBDEI1P3 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,28362,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28362,1,3,0)
 ;;=3^Bronchiectasis w/ Acute Exacerbation
 ;;^UTILITY(U,$J,358.3,28362,1,4,0)
 ;;=4^J47.1
 ;;^UTILITY(U,$J,358.3,28362,2)
 ;;=^5008259
 ;;^UTILITY(U,$J,358.3,28363,0)
 ;;=J47.0^^132^1330^8
 ;;^UTILITY(U,$J,358.3,28363,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28363,1,3,0)
 ;;=3^Bronchiectasis w/ Acute Lower Respiratory Infection
 ;;^UTILITY(U,$J,358.3,28363,1,4,0)
 ;;=4^J47.0
 ;;^UTILITY(U,$J,358.3,28363,2)
 ;;=^5008258
 ;;^UTILITY(U,$J,358.3,28364,0)
 ;;=R09.1^^132^1330^37
 ;;^UTILITY(U,$J,358.3,28364,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28364,1,3,0)
 ;;=3^Pleurisy
 ;;^UTILITY(U,$J,358.3,28364,1,4,0)
 ;;=4^R09.1
 ;;^UTILITY(U,$J,358.3,28364,2)
 ;;=^95428
 ;;^UTILITY(U,$J,358.3,28365,0)
 ;;=J94.9^^132^1330^33
 ;;^UTILITY(U,$J,358.3,28365,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28365,1,3,0)
 ;;=3^Pleural Condition,Unspec
 ;;^UTILITY(U,$J,358.3,28365,1,4,0)
 ;;=4^J94.9
 ;;^UTILITY(U,$J,358.3,28365,2)
 ;;=^5008320
 ;;^UTILITY(U,$J,358.3,28366,0)
 ;;=J92.9^^132^1330^36
 ;;^UTILITY(U,$J,358.3,28366,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28366,1,3,0)
 ;;=3^Pleural Plaque w/o Asbestos
 ;;^UTILITY(U,$J,358.3,28366,1,4,0)
 ;;=4^J92.9
 ;;^UTILITY(U,$J,358.3,28366,2)
 ;;=^5008313
 ;;^UTILITY(U,$J,358.3,28367,0)
 ;;=J94.8^^132^1330^34
 ;;^UTILITY(U,$J,358.3,28367,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28367,1,3,0)
 ;;=3^Pleural Conditions,Other Spec
 ;;^UTILITY(U,$J,358.3,28367,1,4,0)
 ;;=4^J94.8
 ;;^UTILITY(U,$J,358.3,28367,2)
 ;;=^5008319
 ;;^UTILITY(U,$J,358.3,28368,0)
 ;;=J86.9^^132^1330^38
 ;;^UTILITY(U,$J,358.3,28368,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28368,1,3,0)
 ;;=3^Pyothorax w/o Fistula
 ;;^UTILITY(U,$J,358.3,28368,1,4,0)
 ;;=4^J86.9
 ;;^UTILITY(U,$J,358.3,28368,2)
 ;;=^5008309
 ;;^UTILITY(U,$J,358.3,28369,0)
 ;;=J91.8^^132^1330^35
 ;;^UTILITY(U,$J,358.3,28369,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28369,1,3,0)
 ;;=3^Pleural Effusion in Other Conditions
 ;;^UTILITY(U,$J,358.3,28369,1,4,0)
 ;;=4^J91.8
 ;;^UTILITY(U,$J,358.3,28369,2)
 ;;=^5008311
 ;;^UTILITY(U,$J,358.3,28370,0)
 ;;=J84.9^^132^1330^29
 ;;^UTILITY(U,$J,358.3,28370,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28370,1,3,0)
 ;;=3^Interstitial Pulmonary Disease/Pneumonia,Unspec
 ;;^UTILITY(U,$J,358.3,28370,1,4,0)
 ;;=4^J84.9
 ;;^UTILITY(U,$J,358.3,28370,2)
 ;;=^5008304
 ;;^UTILITY(U,$J,358.3,28371,0)
 ;;=J98.01^^132^1330^11
 ;;^UTILITY(U,$J,358.3,28371,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28371,1,3,0)
 ;;=3^Bronchospasm,Acute
 ;;^UTILITY(U,$J,358.3,28371,1,4,0)
 ;;=4^J98.01
 ;;^UTILITY(U,$J,358.3,28371,2)
 ;;=^334092
 ;;^UTILITY(U,$J,358.3,28372,0)
 ;;=G47.30^^132^1330^53
 ;;^UTILITY(U,$J,358.3,28372,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28372,1,3,0)
 ;;=3^Sleep Apnea,Unspec
 ;;^UTILITY(U,$J,358.3,28372,1,4,0)
 ;;=4^G47.30
 ;;^UTILITY(U,$J,358.3,28372,2)
 ;;=^5003977
 ;;^UTILITY(U,$J,358.3,28373,0)
 ;;=R06.02^^132^1330^52
 ;;^UTILITY(U,$J,358.3,28373,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28373,1,3,0)
 ;;=3^Shortness of Breath
 ;;^UTILITY(U,$J,358.3,28373,1,4,0)
 ;;=4^R06.02
 ;;^UTILITY(U,$J,358.3,28373,2)
 ;;=^5019181
 ;;^UTILITY(U,$J,358.3,28374,0)
 ;;=R06.09^^132^1330^17
 ;;^UTILITY(U,$J,358.3,28374,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,28374,1,3,0)
 ;;=3^Dyspnea,Other Forms
 ;;^UTILITY(U,$J,358.3,28374,1,4,0)
 ;;=4^R06.09
 ;;^UTILITY(U,$J,358.3,28374,2)
 ;;=^5019182
 ;;^UTILITY(U,$J,358.3,28375,0)
 ;;=R06.00^^132^1330^18
 ;;^UTILITY(U,$J,358.3,28375,1,0)
 ;;=^358.31IA^4^2