IBDEI3IN ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.4)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.4,1694,0)
 ;;=SUBSEQUENT OBSERVATION CARE^10^152
 ;;^UTILITY(U,$J,358.4,1695,0)
 ;;=OBSERVATION CARE D/C SERVICES^11^152
 ;;^UTILITY(U,$J,358.4,1696,0)
 ;;=PROLONGED SERVICES^5^153
 ;;^UTILITY(U,$J,358.4,1697,0)
 ;;=VENOUS^6^153
 ;;^UTILITY(U,$J,358.4,1698,0)
 ;;=BP MONITORING^1^153
 ;;^UTILITY(U,$J,358.4,1699,0)
 ;;=MEDICATION^4^153
 ;;^UTILITY(U,$J,358.4,1700,0)
 ;;=CARDIOVASCULAR^2^153
 ;;^UTILITY(U,$J,358.4,1701,0)
 ;;=CATHETER^3^153
 ;;^UTILITY(U,$J,358.4,1702,0)
 ;;=HEMODIALYSIS-ESRD^13^154
 ;;^UTILITY(U,$J,358.4,1703,0)
 ;;=PERITONEAL DIALYSIS ENCOUNTER^22^154
 ;;^UTILITY(U,$J,358.4,1704,0)
 ;;=CARDIOLOGY/CARDIORENAL SYNDROME^2^154
 ;;^UTILITY(U,$J,358.4,1705,0)
 ;;=COMPLICATIONS/OTHER^4^154
 ;;^UTILITY(U,$J,358.4,1706,0)
 ;;=CYSTIC KIDNEY DISEASE^5^154
 ;;^UTILITY(U,$J,358.4,1707,0)
 ;;=DIABETES/DIABETIC RENAL DISEASE^6^154
 ;;^UTILITY(U,$J,358.4,1708,0)
 ;;=FLUID/ELECTROLYTE DISORDER^7^154
 ;;^UTILITY(U,$J,358.4,1709,0)
 ;;=GENERAL SYMPTOMS^8^154
 ;;^UTILITY(U,$J,358.4,1710,0)
 ;;=GENITAL/URINARY^9^154
 ;;^UTILITY(U,$J,358.4,1711,0)
 ;;=HEMATOLOGY^11^154
 ;;^UTILITY(U,$J,358.4,1712,0)
 ;;=HYPERTENSION^14^154
 ;;^UTILITY(U,$J,358.4,1713,0)
 ;;=INFECTIOUS DISEASE^15^154
 ;;^UTILITY(U,$J,358.4,1714,0)
 ;;=NEPHRITIS GLUMERULONEPHRITIS^17^154
 ;;^UTILITY(U,$J,358.4,1715,0)
 ;;=NEPHRITIS INTERSTITIAL^18^154
 ;;^UTILITY(U,$J,358.4,1716,0)
 ;;=NEPHROTIC SYNDROME^20^154
 ;;^UTILITY(U,$J,358.4,1717,0)
 ;;=OBSTRUCTIVE UROPATHY^21^154
 ;;^UTILITY(U,$J,358.4,1718,0)
 ;;=TRANSPLANT^24^154
 ;;^UTILITY(U,$J,358.4,1719,0)
 ;;=CKD/KIDNEY DISEASE^3^154
 ;;^UTILITY(U,$J,358.4,1720,0)
 ;;=HEMODIALYSIS-AKI^12^154
 ;;^UTILITY(U,$J,358.4,1721,0)
 ;;=ACUTE KIDNEY INJURY^1^154
 ;;^UTILITY(U,$J,358.4,1722,0)
 ;;=GLOMERULAR DISEASE^10^154
 ;;^UTILITY(U,$J,358.4,1723,0)
 ;;=KIDNEY INVOLVMNT IN SYSTEMIC DISEASE^16^154
 ;;^UTILITY(U,$J,358.4,1724,0)
 ;;=NEPHROLITHASIS^19^154
 ;;^UTILITY(U,$J,358.4,1725,0)
 ;;=POISONING & INTOXICATIONS^23^154
 ;;^UTILITY(U,$J,358.4,1726,0)
 ;;=ESTABLISHED PATIENT^1^155
 ;;^UTILITY(U,$J,358.4,1727,0)
 ;;=CONSULTATIONS/OPINIONS^2^155
 ;;^UTILITY(U,$J,358.4,1728,0)
 ;;=NEW PATIENTS^3^155
 ;;^UTILITY(U,$J,358.4,1729,0)
 ;;=NEUROLOGY/SEIZURE^7^156
 ;;^UTILITY(U,$J,358.4,1730,0)
 ;;=EEG^4^156
 ;;^UTILITY(U,$J,358.4,1731,0)
 ;;=SLEEP TESTING^9^156
 ;;^UTILITY(U,$J,358.4,1732,0)
 ;;=MUSCLE TESTING/EMG^6^156
 ;;^UTILITY(U,$J,358.4,1733,0)
 ;;=EVOKED POTENTIAL^5^156
 ;;^UTILITY(U,$J,358.4,1734,0)
 ;;=BIOPSY^2^156
 ;;^UTILITY(U,$J,358.4,1735,0)
 ;;=AUTONOMIC FUNCTION TESTS^1^156
 ;;^UTILITY(U,$J,358.4,1736,0)
 ;;=STEREOTACTIC^10^156
 ;;^UTILITY(U,$J,358.4,1737,0)
 ;;=EDUCATION^3^156
 ;;^UTILITY(U,$J,358.4,1738,0)
 ;;=NEUROSTIMULATORS^8^156
 ;;^UTILITY(U,$J,358.4,1739,0)
 ;;=SEIZURES/EPILEPSY/SPELLS^14^157
 ;;^UTILITY(U,$J,358.4,1740,0)
 ;;=CEREBROVASCULAR DISEASE^2^157
 ;;^UTILITY(U,$J,358.4,1741,0)
 ;;=DIZZINESS^3^157
 ;;^UTILITY(U,$J,358.4,1742,0)
 ;;=ENCEPHALOPATHY^5^157
 ;;^UTILITY(U,$J,358.4,1743,0)
 ;;=HEADACHE^6^157
 ;;^UTILITY(U,$J,358.4,1744,0)
 ;;=MOVEMENT DISORDERS^8^157
 ;;^UTILITY(U,$J,358.4,1745,0)
 ;;=NEOPLASMS^9^157
 ;;^UTILITY(U,$J,358.4,1746,0)
 ;;=NEURODEGENERATIVE DISEASE^10^157
 ;;^UTILITY(U,$J,358.4,1747,0)
 ;;=OTHER^12^157
 ;;^UTILITY(U,$J,358.4,1748,0)
 ;;=CARDIAC DISORDERS^1^157
 ;;^UTILITY(U,$J,358.4,1749,0)
 ;;=INFLAMMATORY & DEMYELINATING DISEASES^7^157
 ;;^UTILITY(U,$J,358.4,1750,0)
 ;;=NEUROMUSCULAR DISORDERS^11^157
 ;;^UTILITY(U,$J,358.4,1751,0)
 ;;=PAIN^13^157
 ;;^UTILITY(U,$J,358.4,1752,0)
 ;;=SPINAL CONDITIONS^15^157
 ;;^UTILITY(U,$J,358.4,1753,0)
 ;;=SYMPTOMS^16^157