IBDEI12T ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,17954,0)
 ;;=99342^^92^890^2
 ;;^UTILITY(U,$J,358.3,17954,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17954,1,1,0)
 ;;=1^EXP PROBLEM FOCUSED VISIT
 ;;^UTILITY(U,$J,358.3,17954,1,2,0)
 ;;=2^99342
 ;;^UTILITY(U,$J,358.3,17955,0)
 ;;=99343^^92^890^3
 ;;^UTILITY(U,$J,358.3,17955,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17955,1,1,0)
 ;;=1^DETAILED VISIT
 ;;^UTILITY(U,$J,358.3,17955,1,2,0)
 ;;=2^99343
 ;;^UTILITY(U,$J,358.3,17956,0)
 ;;=99344^^92^890^4
 ;;^UTILITY(U,$J,358.3,17956,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17956,1,1,0)
 ;;=1^COMPREHENSIVE, MOD COMPLEX
 ;;^UTILITY(U,$J,358.3,17956,1,2,0)
 ;;=2^99344
 ;;^UTILITY(U,$J,358.3,17957,0)
 ;;=99345^^92^890^5
 ;;^UTILITY(U,$J,358.3,17957,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17957,1,1,0)
 ;;=1^COMPREHENSIVE, HIGH COMPLEX
 ;;^UTILITY(U,$J,358.3,17957,1,2,0)
 ;;=2^99345
 ;;^UTILITY(U,$J,358.3,17958,0)
 ;;=99347^^92^891^1
 ;;^UTILITY(U,$J,358.3,17958,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17958,1,1,0)
 ;;=1^PROBLEM FOCUSED VISIT
 ;;^UTILITY(U,$J,358.3,17958,1,2,0)
 ;;=2^99347
 ;;^UTILITY(U,$J,358.3,17959,0)
 ;;=99348^^92^891^2
 ;;^UTILITY(U,$J,358.3,17959,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17959,1,1,0)
 ;;=1^EXPANDED PROBLEM FOCUSED 
 ;;^UTILITY(U,$J,358.3,17959,1,2,0)
 ;;=2^99348
 ;;^UTILITY(U,$J,358.3,17960,0)
 ;;=99349^^92^891^3
 ;;^UTILITY(U,$J,358.3,17960,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17960,1,1,0)
 ;;=1^DETAILED VISIT
 ;;^UTILITY(U,$J,358.3,17960,1,2,0)
 ;;=2^99349
 ;;^UTILITY(U,$J,358.3,17961,0)
 ;;=99350^^92^891^4
 ;;^UTILITY(U,$J,358.3,17961,1,0)
 ;;=^358.31IA^2^2
 ;;^UTILITY(U,$J,358.3,17961,1,1,0)
 ;;=1^COMPREHENSIVE VISIT
 ;;^UTILITY(U,$J,358.3,17961,1,2,0)
 ;;=2^99350
 ;;^UTILITY(U,$J,358.3,17962,0)
 ;;=99367^^93^892^2^^^^1
 ;;^UTILITY(U,$J,358.3,17962,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,17962,1,2,0)
 ;;=2^TEAM CONF W/O PAT BY PHYS
 ;;^UTILITY(U,$J,358.3,17962,1,3,0)
 ;;=3^99367
 ;;^UTILITY(U,$J,358.3,17963,0)
 ;;=99507^^93^893^18^^^^1
 ;;^UTILITY(U,$J,358.3,17963,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,17963,1,2,0)
 ;;=2^HOME VISIT CATH MAINTAIN
 ;;^UTILITY(U,$J,358.3,17963,1,3,0)
 ;;=3^99507
 ;;^UTILITY(U,$J,358.3,17964,0)
 ;;=99509^^93^893^17^^^^1
 ;;^UTILITY(U,$J,358.3,17964,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,17964,1,2,0)
 ;;=2^HOME VISIT ADL TRAINING
 ;;^UTILITY(U,$J,358.3,17964,1,3,0)
 ;;=3^99509
 ;;^UTILITY(U,$J,358.3,17965,0)
 ;;=99510^^93^893^20^^^^1
 ;;^UTILITY(U,$J,358.3,17965,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,17965,1,2,0)
 ;;=2^HOME VISIT SING/M/FAM COUNS
 ;;^UTILITY(U,$J,358.3,17965,1,3,0)
 ;;=3^99510
 ;;^UTILITY(U,$J,358.3,17966,0)
 ;;=99511^^93^893^19^^^^1
 ;;^UTILITY(U,$J,358.3,17966,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,17966,1,2,0)
 ;;=2^HOME VISIT FECAL/ENEMA MGMT
 ;;^UTILITY(U,$J,358.3,17966,1,3,0)
 ;;=3^99511
 ;;^UTILITY(U,$J,358.3,17967,0)
 ;;=99601^^93^893^16^^^^1
 ;;^UTILITY(U,$J,358.3,17967,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,17967,1,2,0)
 ;;=2^HOME INFUSION/VISIT 2 HRS
 ;;^UTILITY(U,$J,358.3,17967,1,3,0)
 ;;=3^99601
 ;;^UTILITY(U,$J,358.3,17968,0)
 ;;=99602^^93^893^15^^^^1
 ;;^UTILITY(U,$J,358.3,17968,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,17968,1,2,0)
 ;;=2^HOME INFUSION,EA ADDL HR
 ;;^UTILITY(U,$J,358.3,17968,1,3,0)
 ;;=3^99602
 ;;^UTILITY(U,$J,358.3,17969,0)
 ;;=10061^^93^893^21^^^^1
 ;;^UTILITY(U,$J,358.3,17969,1,0)
 ;;=^358.31IA^3^2
 ;;^UTILITY(U,$J,358.3,17969,1,2,0)
 ;;=2^I&D ABSCESS,COMPLICATED
 ;;^UTILITY(U,$J,358.3,17969,1,3,0)
 ;;=3^10061
 ;;^UTILITY(U,$J,358.3,17970,0)
 ;;=10060^^93^893^22^^^^1
