IBDEI1HK ; ; 19-NOV-2015
 ;;3.0;IB ENCOUNTER FORM IMP/EXP;;JUN 29, 2015
 Q:'DIFQR(358.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,358.3,24853,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24853,1,3,0)
 ;;=3^Upper Abdominal Pain,Unspec
 ;;^UTILITY(U,$J,358.3,24853,1,4,0)
 ;;=4^R10.10
 ;;^UTILITY(U,$J,358.3,24853,2)
 ;;=^5019205
 ;;^UTILITY(U,$J,358.3,24854,0)
 ;;=R10.30^^124^1236^41
 ;;^UTILITY(U,$J,358.3,24854,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24854,1,3,0)
 ;;=3^Lower Abdominal Pain,Unspec
 ;;^UTILITY(U,$J,358.3,24854,1,4,0)
 ;;=4^R10.30
 ;;^UTILITY(U,$J,358.3,24854,2)
 ;;=^5019210
 ;;^UTILITY(U,$J,358.3,24855,0)
 ;;=R16.0^^124^1236^31
 ;;^UTILITY(U,$J,358.3,24855,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24855,1,3,0)
 ;;=3^Hepatomegaly NEC
 ;;^UTILITY(U,$J,358.3,24855,1,4,0)
 ;;=4^R16.0
 ;;^UTILITY(U,$J,358.3,24855,2)
 ;;=^5019248
 ;;^UTILITY(U,$J,358.3,24856,0)
 ;;=R16.1^^124^1236^62
 ;;^UTILITY(U,$J,358.3,24856,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24856,1,3,0)
 ;;=3^Splenomegaly NEC
 ;;^UTILITY(U,$J,358.3,24856,1,4,0)
 ;;=4^R16.1
 ;;^UTILITY(U,$J,358.3,24856,2)
 ;;=^5019249
 ;;^UTILITY(U,$J,358.3,24857,0)
 ;;=R19.01^^124^1236^58
 ;;^UTILITY(U,$J,358.3,24857,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24857,1,3,0)
 ;;=3^RUQ Abdominal Swelling/Mass/Lump
 ;;^UTILITY(U,$J,358.3,24857,1,4,0)
 ;;=4^R19.01
 ;;^UTILITY(U,$J,358.3,24857,2)
 ;;=^5019255
 ;;^UTILITY(U,$J,358.3,24858,0)
 ;;=R19.02^^124^1236^36
 ;;^UTILITY(U,$J,358.3,24858,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24858,1,3,0)
 ;;=3^LUQ Abdominal Swelling/Mass/Lump
 ;;^UTILITY(U,$J,358.3,24858,1,4,0)
 ;;=4^R19.02
 ;;^UTILITY(U,$J,358.3,24858,2)
 ;;=^5019256
 ;;^UTILITY(U,$J,358.3,24859,0)
 ;;=R19.03^^124^1236^56
 ;;^UTILITY(U,$J,358.3,24859,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24859,1,3,0)
 ;;=3^RLQ Abdominal Swelling/Mass/Lump
 ;;^UTILITY(U,$J,358.3,24859,1,4,0)
 ;;=4^R19.03
 ;;^UTILITY(U,$J,358.3,24859,2)
 ;;=^5019257
 ;;^UTILITY(U,$J,358.3,24860,0)
 ;;=R19.04^^124^1236^34
 ;;^UTILITY(U,$J,358.3,24860,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24860,1,3,0)
 ;;=3^LLQ Abdominal Swelling/Mass/Lump
 ;;^UTILITY(U,$J,358.3,24860,1,4,0)
 ;;=4^R19.04
 ;;^UTILITY(U,$J,358.3,24860,2)
 ;;=^5134175
 ;;^UTILITY(U,$J,358.3,24861,0)
 ;;=R19.05^^124^1236^50
 ;;^UTILITY(U,$J,358.3,24861,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24861,1,3,0)
 ;;=3^Periumbilic Swelling/Mass/Lump
 ;;^UTILITY(U,$J,358.3,24861,1,4,0)
 ;;=4^R19.05
 ;;^UTILITY(U,$J,358.3,24861,2)
 ;;=^5019258
 ;;^UTILITY(U,$J,358.3,24862,0)
 ;;=R19.06^^124^1236^25
 ;;^UTILITY(U,$J,358.3,24862,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24862,1,3,0)
 ;;=3^Epigastric Swelling/Mass/Lump
 ;;^UTILITY(U,$J,358.3,24862,1,4,0)
 ;;=4^R19.06
 ;;^UTILITY(U,$J,358.3,24862,2)
 ;;=^5019259
 ;;^UTILITY(U,$J,358.3,24863,0)
 ;;=R19.07^^124^1236^3
 ;;^UTILITY(U,$J,358.3,24863,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24863,1,3,0)
 ;;=3^Abdominal/Pelvic Swelling/Mass/Lump,Generalized
 ;;^UTILITY(U,$J,358.3,24863,1,4,0)
 ;;=4^R19.07
 ;;^UTILITY(U,$J,358.3,24863,2)
 ;;=^5019260
 ;;^UTILITY(U,$J,358.3,24864,0)
 ;;=R19.31^^124^1236^57
 ;;^UTILITY(U,$J,358.3,24864,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24864,1,3,0)
 ;;=3^RUQ Abdominal Rigidity
 ;;^UTILITY(U,$J,358.3,24864,1,4,0)
 ;;=4^R19.31
 ;;^UTILITY(U,$J,358.3,24864,2)
 ;;=^5019267
 ;;^UTILITY(U,$J,358.3,24865,0)
 ;;=R19.32^^124^1236^35
 ;;^UTILITY(U,$J,358.3,24865,1,0)
 ;;=^358.31IA^4^2
 ;;^UTILITY(U,$J,358.3,24865,1,3,0)
 ;;=3^LUQ Abdominal Rigidity
 ;;^UTILITY(U,$J,358.3,24865,1,4,0)
 ;;=4^R19.32
 ;;^UTILITY(U,$J,358.3,24865,2)
 ;;=^5019268
 ;;^UTILITY(U,$J,358.3,24866,0)
 ;;=R19.33^^124^1236^55
 ;;^UTILITY(U,$J,358.3,24866,1,0)
 ;;=^358.31IA^4^2
