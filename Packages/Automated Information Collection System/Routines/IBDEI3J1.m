IBDEI3J1 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.4)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.4,2552,0)
 ;;=REASON FOR VISIT/HEALTH STATUS^6^233
 ;;^UTILITY(U,$J,358.4,2553,0)
 ;;=OTHER^7^234
 ;;^UTILITY(U,$J,358.4,2554,0)
 ;;=CASE MANAGEMENT SERVICES^1^234
 ;;^UTILITY(U,$J,358.4,2555,0)
 ;;=HOME HEALTH VISIT^5^234
 ;;^UTILITY(U,$J,358.4,2556,0)
 ;;=COMMUNITY RESIDENTIAL CARE^2^234
 ;;^UTILITY(U,$J,358.4,2557,0)
 ;;=SMOKING/TOBACCO USE CESSATION^8^234
 ;;^UTILITY(U,$J,358.4,2558,0)
 ;;=HEALTH AND BEHAVIOR ASSESSMENT^4^234
 ;;^UTILITY(U,$J,358.4,2559,0)
 ;;=EDUCATION/TRAINING^3^234
 ;;^UTILITY(U,$J,358.4,2560,0)
 ;;=ADMINISTRATIVE PURPOSES^1^235
 ;;^UTILITY(U,$J,358.4,2561,0)
 ;;=CONDITIONS INFLUENCING HEALTH^2^235
 ;;^UTILITY(U,$J,358.4,2562,0)
 ;;=FAMILY CIRCUMSTANCES^4^235
 ;;^UTILITY(U,$J,358.4,2563,0)
 ;;=HOUSING/ECONOMIC CIRCUMSTANCES^5^235
 ;;^UTILITY(U,$J,358.4,2564,0)
 ;;=MENTAL/BEHAVIORAL PROBLEMS^9^235
 ;;^UTILITY(U,$J,358.4,2565,0)
 ;;=ORGAN/TISSUE REPLACED^11^235
 ;;^UTILITY(U,$J,358.4,2566,0)
 ;;=POSTPROCEDURAL STATES^15^235
 ;;^UTILITY(U,$J,358.4,2567,0)
 ;;=PSYCHOSOCIAL CIRCUMSTANCES^16^235
 ;;^UTILITY(U,$J,358.4,2568,0)
 ;;=PERSONAL HX OF HAZARDS TO HEALTH^12^235
 ;;^UTILITY(U,$J,358.4,2569,0)
 ;;=PERSONS SEEKING CONSULT^14^235
 ;;^UTILITY(U,$J,358.4,2570,0)
 ;;=LIFESTYLE PROBLEMS^6^235
 ;;^UTILITY(U,$J,358.4,2571,0)
 ;;=MENTAL/DEVELOPMENTAL SCRN^10^235
 ;;^UTILITY(U,$J,358.4,2572,0)
 ;;=PERSONAL HX OF MENTAL DISORDER^13^235
 ;;^UTILITY(U,$J,358.4,2573,0)
 ;;=SENSES/FUNCTION PROBLEMS^17^235
 ;;^UTILITY(U,$J,358.4,2574,0)
 ;;=MACHINE/DEVICE DEPENDENCE^8^235
 ;;^UTILITY(U,$J,358.4,2575,0)
 ;;=UPPER LIMB AMPUTATION STATUS^19^235
 ;;^UTILITY(U,$J,358.4,2576,0)
 ;;=LOWER LIMB AMPUTATION STATUS^7^235
 ;;^UTILITY(U,$J,358.4,2577,0)
 ;;=UNAVAILABILITY OF MED FACILITY CARE^18^235
 ;;^UTILITY(U,$J,358.4,2578,0)
 ;;=CONVALENSCENCE/PALLIATIVE CARE^3^235
 ;;^UTILITY(U,$J,358.4,2579,0)
 ;;=PSYCHIATRIC THERAPY^8^236
 ;;^UTILITY(U,$J,358.4,2580,0)
 ;;=OTHER^7^236
 ;;^UTILITY(U,$J,358.4,2581,0)
 ;;=CASE MANAGEMENT SERVICES^1^236
 ;;^UTILITY(U,$J,358.4,2582,0)
 ;;=HOME HEALTH VISIT^5^236
 ;;^UTILITY(U,$J,358.4,2583,0)
 ;;=COMMUNITY RESIDENTIAL CARE^2^236
 ;;^UTILITY(U,$J,358.4,2584,0)
 ;;=SMOKING/TOBACCO USE CESSATION^9^236
 ;;^UTILITY(U,$J,358.4,2585,0)
 ;;=HEALTH AND BEHAVIOR ASSESSMENT^4^236
 ;;^UTILITY(U,$J,358.4,2586,0)
 ;;=EDUCATION/TRAINING^3^236
 ;;^UTILITY(U,$J,358.4,2587,0)
 ;;=TEAM CONFERENCE^10^236
 ;;^UTILITY(U,$J,358.4,2588,0)
 ;;=ABUSE AND NEGLECT^1^237
 ;;^UTILITY(U,$J,358.4,2589,0)
 ;;=ANXIETY DISORDERS^3^237
 ;;^UTILITY(U,$J,358.4,2590,0)
 ;;=BIPOLAR DISORDERS^4^237
 ;;^UTILITY(U,$J,358.4,2591,0)
 ;;=DELIRIUM^7^237
 ;;^UTILITY(U,$J,358.4,2592,0)
 ;;=DEMENTIA/NEUROCOGNITIVE DISORDERS^8^237
 ;;^UTILITY(U,$J,358.4,2593,0)
 ;;=DEPRESSIVE DISORDERS^9^237
 ;;^UTILITY(U,$J,358.4,2594,0)
 ;;=DISSOCIATIVE DISORDERS ^10^237
 ;;^UTILITY(U,$J,358.4,2595,0)
 ;;=EATING DISORDERS^11^237
 ;;^UTILITY(U,$J,358.4,2596,0)
 ;;=EDUCATIONAL/OCCUPATIONAL PROBLEMS^12^237
 ;;^UTILITY(U,$J,358.4,2597,0)
 ;;=GENDER DYSPHORIA^13^237
 ;;^UTILITY(U,$J,358.4,2598,0)
 ;;=HOUSING/ECONOMIC PROBLEMS^14^237
 ;;^UTILITY(U,$J,358.4,2599,0)
 ;;=MEDICATION-INDUCED MOVEMENT DISORDERS^16^237
 ;;^UTILITY(U,$J,358.4,2600,0)
 ;;=OBSESSIVE-COMPULSIVE & RELATED DISORDERS^17^237
 ;;^UTILITY(U,$J,358.4,2601,0)
 ;;=ORGANIC DISORDERS^18^237
 ;;^UTILITY(U,$J,358.4,2602,0)
 ;;=PERSONAL HX & CURRENT CIRCUMSTANCES^20^237
 ;;^UTILITY(U,$J,358.4,2603,0)
 ;;=ADHD^2^237
 ;;^UTILITY(U,$J,358.4,2604,0)
 ;;=COUNSELING/MED ADVICE^5^237
 ;;^UTILITY(U,$J,358.4,2605,0)
 ;;=SOCIAL ENVIRONMENT PROBLEMS^28^237
