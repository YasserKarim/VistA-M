IBDEI29B ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,37907,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37907,1,3,0)
 ;;=3^Mononeuropathy Right Lower Limb,Unspec
 ;;^UTILITY(U,$J,358.3,37907,1,4,0)
 ;;=4^G57.91
 ;;^UTILITY(U,$J,358.3,37907,2)
 ;;=^5133369
 ;;^UTILITY(U,$J,358.3,37908,0)
 ;;=G57.92^^175^1906^25
 ;;^UTILITY(U,$J,358.3,37908,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37908,1,3,0)
 ;;=3^Mononeuropathy Left Lower Limb,Unspec
 ;;^UTILITY(U,$J,358.3,37908,1,4,0)
 ;;=4^G57.92
 ;;^UTILITY(U,$J,358.3,37908,2)
 ;;=^5133370
 ;;^UTILITY(U,$J,358.3,37909,0)
 ;;=G58.9^^175^1906^29
 ;;^UTILITY(U,$J,358.3,37909,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37909,1,3,0)
 ;;=3^Mononeuropathy,Unspec
 ;;^UTILITY(U,$J,358.3,37909,1,4,0)
 ;;=4^G58.9
 ;;^UTILITY(U,$J,358.3,37909,2)
 ;;=^5004065
 ;;^UTILITY(U,$J,358.3,37910,0)
 ;;=G60.9^^175^1906^19
 ;;^UTILITY(U,$J,358.3,37910,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37910,1,3,0)
 ;;=3^Hereditary & Idiopathic Neuropathy,Unspec
 ;;^UTILITY(U,$J,358.3,37910,1,4,0)
 ;;=4^G60.9
 ;;^UTILITY(U,$J,358.3,37910,2)
 ;;=^5004071
 ;;^UTILITY(U,$J,358.3,37911,0)
 ;;=H92.01^^175^1906^45
 ;;^UTILITY(U,$J,358.3,37911,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37911,1,3,0)
 ;;=3^Otalgia,Right Ear
 ;;^UTILITY(U,$J,358.3,37911,1,4,0)
 ;;=4^H92.01
 ;;^UTILITY(U,$J,358.3,37911,2)
 ;;=^5006945
 ;;^UTILITY(U,$J,358.3,37912,0)
 ;;=H92.02^^175^1906^44
 ;;^UTILITY(U,$J,358.3,37912,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37912,1,3,0)
 ;;=3^Otalgia,Left Ear
 ;;^UTILITY(U,$J,358.3,37912,1,4,0)
 ;;=4^H92.02
 ;;^UTILITY(U,$J,358.3,37912,2)
 ;;=^5006946
 ;;^UTILITY(U,$J,358.3,37913,0)
 ;;=H92.03^^175^1906^43
 ;;^UTILITY(U,$J,358.3,37913,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37913,1,3,0)
 ;;=3^Otalgia,Bilateral
 ;;^UTILITY(U,$J,358.3,37913,1,4,0)
 ;;=4^H92.03
 ;;^UTILITY(U,$J,358.3,37913,2)
 ;;=^5006947
 ;;^UTILITY(U,$J,358.3,37914,0)
 ;;=M54.12^^175^1906^46
 ;;^UTILITY(U,$J,358.3,37914,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37914,1,3,0)
 ;;=3^Radiculopathy,Cervical Region
 ;;^UTILITY(U,$J,358.3,37914,1,4,0)
 ;;=4^M54.12
 ;;^UTILITY(U,$J,358.3,37914,2)
 ;;=^5012297
 ;;^UTILITY(U,$J,358.3,37915,0)
 ;;=M54.13^^175^1906^47
 ;;^UTILITY(U,$J,358.3,37915,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37915,1,3,0)
 ;;=3^Radiculopathy,Cervicothoracic Region
 ;;^UTILITY(U,$J,358.3,37915,1,4,0)
 ;;=4^M54.13
 ;;^UTILITY(U,$J,358.3,37915,2)
 ;;=^5012298
 ;;^UTILITY(U,$J,358.3,37916,0)
 ;;=M60.9^^175^1906^32
 ;;^UTILITY(U,$J,358.3,37916,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37916,1,3,0)
 ;;=3^Myositis,Unspec
 ;;^UTILITY(U,$J,358.3,37916,1,4,0)
 ;;=4^M60.9
 ;;^UTILITY(U,$J,358.3,37916,2)
 ;;=^5012409
 ;;^UTILITY(U,$J,358.3,37917,0)
 ;;=M79.1^^175^1906^30
 ;;^UTILITY(U,$J,358.3,37917,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37917,1,3,0)
 ;;=3^Myalgia
 ;;^UTILITY(U,$J,358.3,37917,1,4,0)
 ;;=4^M79.1
 ;;^UTILITY(U,$J,358.3,37917,2)
 ;;=^5013321
 ;;^UTILITY(U,$J,358.3,37918,0)
 ;;=M79.7^^175^1906^18
 ;;^UTILITY(U,$J,358.3,37918,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37918,1,3,0)
 ;;=3^Fibromyalgia
 ;;^UTILITY(U,$J,358.3,37918,1,4,0)
 ;;=4^M79.7
 ;;^UTILITY(U,$J,358.3,37918,2)
 ;;=^46261
 ;;^UTILITY(U,$J,358.3,37919,0)
 ;;=M79.2^^175^1906^42
 ;;^UTILITY(U,$J,358.3,37919,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37919,1,3,0)
 ;;=3^Neuralgia & Neuritis,Unspec
 ;;^UTILITY(U,$J,358.3,37919,1,4,0)
 ;;=4^M79.2
 ;;^UTILITY(U,$J,358.3,37919,2)
 ;;=^5013322
 ;;^UTILITY(U,$J,358.3,37920,0)
 ;;=M54.10^^175^1906^48
 ;;^UTILITY(U,$J,358.3,37920,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,37920,1,3,0)
 ;;=3^Radiculopathy,Unspec Site