IBDEI009 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358,79,2,1,0)
 ;;=1^1
 ;;^UTILITY(U,$J,358,79,2,2,0)
 ;;=4^1
 ;;^UTILITY(U,$J,358,79,2,3,0)
 ;;=3^1
 ;;^UTILITY(U,$J,358,80,0)
 ;;=NATIONAL SCI FY16-Q1^1^National Spinal Cord Injury November 2015^1^0^1^1^^133^80^4^1^^1^p^1^2.1
 ;;^UTILITY(U,$J,358,80,2,0)
 ;;=^358.02I^6^6
 ;;^UTILITY(U,$J,358,80,2,1,0)
 ;;=1^1
 ;;^UTILITY(U,$J,358,80,2,2,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,80,2,3,0)
 ;;=3^1
 ;;^UTILITY(U,$J,358,80,2,4,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,80,2,5,0)
 ;;=4^1
 ;;^UTILITY(U,$J,358,80,2,6,0)
 ;;=5^1
 ;;^UTILITY(U,$J,358,81,0)
 ;;=NATL SECURE MESSAGES FY16-Q1^2^NATIONAL SECURE MESSAGES October 2015^1^0^^1^^133^80^1^0^^1^p^1^3
 ;;^UTILITY(U,$J,358,82,0)
 ;;=NATIONAL SLEEP MED FY16-Q1^0^NATIONAL SLEEP MEDICINE April 2015^1^0^1^1^^133^80^2^0^^1^p^1^2.1
 ;;^UTILITY(U,$J,358,82,2,0)
 ;;=^358.02I^2^2
 ;;^UTILITY(U,$J,358,82,2,1,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,82,2,2,0)
 ;;=1^1
 ;;^UTILITY(U,$J,358,83,0)
 ;;=NATIONAL SPEECH FY16-Q1^1^National Speech October 2015^1^0^1^1^^133^80^3^1^^1^p^1
 ;;^UTILITY(U,$J,358,83,2,0)
 ;;=^358.02I^3^3
 ;;^UTILITY(U,$J,358,83,2,1,0)
 ;;=1^1
 ;;^UTILITY(U,$J,358,83,2,2,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,83,2,3,0)
 ;;=3^1
 ;;^UTILITY(U,$J,358,84,0)
 ;;=NATIONAL SOCIAL WORK FY16-Q1^1^National Social Work Service (other than MH) Form October 2015^1^0^1^1^^133^80^3^1^^1^p^1^2.1
 ;;^UTILITY(U,$J,358,84,2,0)
 ;;=^358.02I^6^6
 ;;^UTILITY(U,$J,358,84,2,1,0)
 ;;=1^1
 ;;^UTILITY(U,$J,358,84,2,2,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,84,2,3,0)
 ;;=3^1
 ;;^UTILITY(U,$J,358,84,2,4,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,84,2,5,0)
 ;;=4^1
 ;;^UTILITY(U,$J,358,84,2,6,0)
 ;;=5^1
 ;;^UTILITY(U,$J,358,85,0)
 ;;=NATIONAL SWS MH FY16-Q1^0^National Social Work Service Mental Health October 2015^1^0^1^1^^133^80^6^1^^1^p^1^3
 ;;^UTILITY(U,$J,358,85,2,0)
 ;;=^358.02I^2^2
 ;;^UTILITY(U,$J,358,85,2,1,0)
 ;;=1^1
 ;;^UTILITY(U,$J,358,85,2,2,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,86,0)
 ;;=NATIONAL TBI FY16-Q1^1^National Traumatic Brain Injury November 2015^1^0^1^1^^133^80^2^1^^1^p^1^2.1
 ;;^UTILITY(U,$J,358,86,2,0)
 ;;=^358.02I^6^6
 ;;^UTILITY(U,$J,358,86,2,1,0)
 ;;=1^1
 ;;^UTILITY(U,$J,358,86,2,2,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,86,2,3,0)
 ;;=3^1
 ;;^UTILITY(U,$J,358,86,2,4,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,86,2,5,0)
 ;;=4^1
 ;;^UTILITY(U,$J,358,86,2,6,0)
 ;;=5^1
 ;;^UTILITY(U,$J,358,87,0)
 ;;=NATIONAL TELEDERM FY16-Q1^0^National Telederm October 2015^1^0^^1^^133^80^6^1^^1^p^1^3
 ;;^UTILITY(U,$J,358,88,0)
 ;;=NATL TELEHLTH-PT SITE FY16-Q1^0^National Telehealth-Patient Site November 2015^1^0^^1^^133^80^5^1^^1^p^1^3
 ;;^UTILITY(U,$J,358,89,0)
 ;;=NATIONAL TELEPHONE FY16-Q1^2^NATIONAL TELEPHONE CLINICS-November 2015^1^0^1^1^^133^80^1^1^^1^p^1^2.1
 ;;^UTILITY(U,$J,358,89,2,0)
 ;;=^358.02I^2^2
 ;;^UTILITY(U,$J,358,89,2,1,0)
 ;;=1^1
 ;;^UTILITY(U,$J,358,89,2,2,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,90,0)
 ;;=NATIONAL THORACIC SURG FY16-Q1^1^National Thoracic Surgery November 2015^1^0^1^1^^133^80^2^1^^1^p^1^2.1
 ;;^UTILITY(U,$J,358,90,2,0)
 ;;=^358.02I^6^6
 ;;^UTILITY(U,$J,358,90,2,1,0)
 ;;=1^1
 ;;^UTILITY(U,$J,358,90,2,2,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,90,2,3,0)
 ;;=3^1
 ;;^UTILITY(U,$J,358,90,2,4,0)
 ;;=2^1
 ;;^UTILITY(U,$J,358,90,2,5,0)
 ;;=4^1
 ;;^UTILITY(U,$J,358,90,2,6,0)
 ;;=5^1
 ;;^UTILITY(U,$J,358,91,0)
 ;;=NATIONAL TRANSPLANT FY16-Q1^0^National Transplant November 2015^1^0^1^1^^133^80^4^1^^1^p^1^2.1
 ;;^UTILITY(U,$J,358,92,0)
 ;;=NATIONAL URGENT CARE FY16-Q1^2^NATIONAL URGENT CARE October 2015^1^0^0^1^^133^80^29^1^^1^p^1^2.1
 ;;^UTILITY(U,$J,358,92,2,0)
 ;;=^358.02I^3^3
 ;;^UTILITY(U,$J,358,92,2,1,0)
 ;;=1^1
