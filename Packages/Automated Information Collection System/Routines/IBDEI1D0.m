IBDEI1D0 ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,22659,1,4,0)
 ;;=4^D64.0
 ;;^UTILITY(U,$J,358.3,22659,2)
 ;;=^5002344
 ;;^UTILITY(U,$J,358.3,22660,0)
 ;;=D64.1^^104^1054^23
 ;;^UTILITY(U,$J,358.3,22660,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22660,1,3,0)
 ;;=3^Anemia,Sideroblastic,Secondary d/t Disease
 ;;^UTILITY(U,$J,358.3,22660,1,4,0)
 ;;=4^D64.1
 ;;^UTILITY(U,$J,358.3,22660,2)
 ;;=^5002345
 ;;^UTILITY(U,$J,358.3,22661,0)
 ;;=D64.2^^104^1054^24
 ;;^UTILITY(U,$J,358.3,22661,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22661,1,3,0)
 ;;=3^Anemia,Sideroblastic,Secondary d/t Drugs/Toxins
 ;;^UTILITY(U,$J,358.3,22661,1,4,0)
 ;;=4^D64.2
 ;;^UTILITY(U,$J,358.3,22661,2)
 ;;=^5002346
 ;;^UTILITY(U,$J,358.3,22662,0)
 ;;=D64.9^^104^1054^25
 ;;^UTILITY(U,$J,358.3,22662,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22662,1,3,0)
 ;;=3^Anemia,Unspec
 ;;^UTILITY(U,$J,358.3,22662,1,4,0)
 ;;=4^D64.9
 ;;^UTILITY(U,$J,358.3,22662,2)
 ;;=^5002351
 ;;^UTILITY(U,$J,358.3,22663,0)
 ;;=C50.912^^104^1055^11
 ;;^UTILITY(U,$J,358.3,22663,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22663,1,3,0)
 ;;=3^Malig Neop Breast,Left,Unspec Site
 ;;^UTILITY(U,$J,358.3,22663,1,4,0)
 ;;=4^C50.912
 ;;^UTILITY(U,$J,358.3,22663,2)
 ;;=^5001196
 ;;^UTILITY(U,$J,358.3,22664,0)
 ;;=C50.911^^104^1055^12
 ;;^UTILITY(U,$J,358.3,22664,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22664,1,3,0)
 ;;=3^Malig Neop Breast,Right,Unspec Site
 ;;^UTILITY(U,$J,358.3,22664,1,4,0)
 ;;=4^C50.911
 ;;^UTILITY(U,$J,358.3,22664,2)
 ;;=^5001195
 ;;^UTILITY(U,$J,358.3,22665,0)
 ;;=D05.01^^104^1055^10
 ;;^UTILITY(U,$J,358.3,22665,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22665,1,3,0)
 ;;=3^Lobular Carcinoma in Situ,Right Breast
 ;;^UTILITY(U,$J,358.3,22665,1,4,0)
 ;;=4^D05.01
 ;;^UTILITY(U,$J,358.3,22665,2)
 ;;=^5001927
 ;;^UTILITY(U,$J,358.3,22666,0)
 ;;=D05.02^^104^1055^9
 ;;^UTILITY(U,$J,358.3,22666,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22666,1,3,0)
 ;;=3^Lobular Carcinoma in Situ,Left Breast
 ;;^UTILITY(U,$J,358.3,22666,1,4,0)
 ;;=4^D05.02
 ;;^UTILITY(U,$J,358.3,22666,2)
 ;;=^5001928
 ;;^UTILITY(U,$J,358.3,22667,0)
 ;;=D05.92^^104^1055^5
 ;;^UTILITY(U,$J,358.3,22667,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22667,1,3,0)
 ;;=3^Carcinoma in Situ,Left Breast,Unspec Type
 ;;^UTILITY(U,$J,358.3,22667,1,4,0)
 ;;=4^D05.92
 ;;^UTILITY(U,$J,358.3,22667,2)
 ;;=^5001937
 ;;^UTILITY(U,$J,358.3,22668,0)
 ;;=D05.91^^104^1055^6
 ;;^UTILITY(U,$J,358.3,22668,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22668,1,3,0)
 ;;=3^Carcinoma in Situ,Right Breast,Unspec Type
 ;;^UTILITY(U,$J,358.3,22668,1,4,0)
 ;;=4^D05.91
 ;;^UTILITY(U,$J,358.3,22668,2)
 ;;=^5001936
 ;;^UTILITY(U,$J,358.3,22669,0)
 ;;=D05.11^^104^1055^8
 ;;^UTILITY(U,$J,358.3,22669,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22669,1,3,0)
 ;;=3^Intraductal Carcinoma in Situ,Right Breast
 ;;^UTILITY(U,$J,358.3,22669,1,4,0)
 ;;=4^D05.11
 ;;^UTILITY(U,$J,358.3,22669,2)
 ;;=^5001930
 ;;^UTILITY(U,$J,358.3,22670,0)
 ;;=D05.12^^104^1055^7
 ;;^UTILITY(U,$J,358.3,22670,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22670,1,3,0)
 ;;=3^Intraductal Carcinoma in Situ,Left Breast
 ;;^UTILITY(U,$J,358.3,22670,1,4,0)
 ;;=4^D05.12
 ;;^UTILITY(U,$J,358.3,22670,2)
 ;;=^5001931
 ;;^UTILITY(U,$J,358.3,22671,0)
 ;;=D06.9^^104^1055^2
 ;;^UTILITY(U,$J,358.3,22671,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,22671,1,3,0)
 ;;=3^Carcinoma in Situ,Cervix,Unspec
 ;;^UTILITY(U,$J,358.3,22671,1,4,0)
 ;;=4^D06.9
 ;;^UTILITY(U,$J,358.3,22671,2)
 ;;=^5001941
 ;;^UTILITY(U,$J,358.3,22672,0)
 ;;=D06.0^^104^1055^3
 ;;^UTILITY(U,$J,358.3,22672,1,0)
 ;;=^358.31IA^4^2