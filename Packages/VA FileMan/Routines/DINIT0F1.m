DINIT0F1 ;SFISC/MKO-DATA FOR FORM AND BLOCK FILES ;2:11 PM  11 Jan 2000
 ;;22.2;VA FileMan;;Jan 05, 2016;Build 42
 ;;Per VA Directive 6402, this routine should not be modified.
 ;;Submitted to OSEHRA 5 January 2015 by the VISTA Expertise Network.
 ;;Based on Medsphere Systems Corporation's MSC FileMan 1051.
 ;;Licensed under the terms of the Apache License, Version 2.0.
 ;
 F I=1:2 S X=$T(ENTRY+I) G:X="" ^DINIT0F2 S Y=$E($T(ENTRY+I+1),5,999),X=$E(X,4,999),@X=Y
 Q
ENTRY ;
 ;;^DIST(.403,.001,40,18,0)
 ;;=8^^10,3^^^1^17,77
 ;;^DIST(.403,.001,40,18,1)
 ;;=Page 8
 ;;^DIST(.403,.001,40,18,11)
 ;;=D PRE8^DICATTD8
 ;;^DIST(.403,.001,40,18,12)
 ;;=D POST8^DICATTD8
 ;;^DIST(.403,.001,40,18,40,0)
 ;;=^.4032IP^.00115^1
 ;;^DIST(.403,.001,40,18,40,.00115,0)
 ;;=.00115^1^2,3^e
 ;;^DIST(.403,.001,40,19,0)
 ;;=10^^1,1
 ;;^DIST(.403,.001,40,19,1)
 ;;=Page 10
 ;;^DIST(.403,.001,40,19,40,0)
 ;;=^.4032IP^.00116^1
 ;;^DIST(.403,.001,40,19,40,.00116,0)
 ;;=.00116^1^1,1^e
 ;;^DIST(.403,.001,40,20,0)
 ;;=5^^14,1^^^1^17,78
 ;;^DIST(.403,.001,40,20,1)
 ;;=Page 5
 ;;^DIST(.403,.001,40,20,12)
 ;;=I DICATT4="",DUZ(0)="@" S DDSSTACK=4
 ;;^DIST(.403,.001,40,20,40,0)
 ;;=^.4032IP^.00117^1
 ;;^DIST(.403,.001,40,20,40,.00117,0)
 ;;=.00117^1^1,1^e
 ;;^DIST(.403,.001,40,21,0)
 ;;=6^^7,3^^^1^13,77
 ;;^DIST(.403,.001,40,21,1)
 ;;=Page 6
 ;;^DIST(.403,.001,40,21,40,0)
 ;;=^.4032IP^.00118^1
 ;;^DIST(.403,.001,40,21,40,.00118,0)
 ;;=.00118^1^1,1^e
 ;;^DIST(.403,.1001,0)
 ;;=DIPTED^@^^^2980611.1708^2990303.0831^^.4^0^0^1
 ;;^DIST(.403,.1001,14)
 ;;=D SAVEFLDS^DIPTED(DA)
 ;;^DIST(.403,.1001,40,0)
 ;;=^.4031I^2^2
 ;;^DIST(.403,.1001,40,1,0)
 ;;=1^^1,1^2
 ;;^DIST(.403,.1001,40,1,1)
 ;;=Page 1
 ;;^DIST(.403,.1001,40,1,40,0)
 ;;=^.4032IP^.10011^1
 ;;^DIST(.403,.1001,40,1,40,.10011,0)
 ;;=.10011^1^1,1^e
 ;;^DIST(.403,.1001,40,2,0)
 ;;=2^^1,1^^1
 ;;^DIST(.403,.1001,40,2,1)
 ;;=Page 2
 ;;^DIST(.403,.1001,40,2,40,0)
 ;;=^.4032IP^.10012^1
 ;;^DIST(.403,.1001,40,2,40,.10012,0)
 ;;=.10012^1^1,1^e
 ;;^DIST(.403,.1101,0)
 ;;=DIKC EDIT^^^^2970612.1058^3000110.1335^^.11^0^0^1
 ;;^DIST(.403,.1101,14)
 ;;=D POSTSV^DIKCFORM
 ;;^DIST(.403,.1101,20)
 ;;=D FORMDV^DIKCFORM
 ;;^DIST(.403,.1101,40,0)
 ;;=^.4031I^2^4
 ;;^DIST(.403,.1101,40,1,0)
 ;;=1^^1,1^2^2
 ;;^DIST(.403,.1101,40,1,1)
 ;;=Page 1
 ;;^DIST(.403,.1101,40,1,40,0)
 ;;=^.4032IP^.110101^2
 ;;^DIST(.403,.1101,40,1,40,.110101,0)
 ;;=.110101^2^4,1^e
 ;;^DIST(.403,.1101,40,1,40,.110102,0)
 ;;=.110102^1^1,1^d
 ;;^DIST(.403,.1101,40,2,0)
 ;;=2^^1,1^1^1
 ;;^DIST(.403,.1101,40,2,1)
 ;;=Page 2
 ;;^DIST(.403,.1101,40,2,40,0)
 ;;=^.4032IP^.110103^4
 ;;^DIST(.403,.1101,40,2,40,.110103,0)
 ;;=.110103^4^10,1^e
 ;;^DIST(.403,.1101,40,2,40,.110104,0)
 ;;=.110104^3^6,2^e
 ;;^DIST(.403,.1101,40,2,40,.110104,2)
 ;;=5^^f
 ;;^DIST(.403,.1101,40,2,40,.110105,0)
 ;;=.110105^2^3,1^d
 ;;^DIST(.403,.1101,40,2,40,.110106,0)
 ;;=.110106^1^1,1^d
 ;;^DIST(.403,.1101,40,3,0)
 ;;=2.1^^6,1^^^1^17,79
 ;;^DIST(.403,.1101,40,3,1)
 ;;=Page 2.1
 ;;^DIST(.403,.1101,40,3,11)
 ;;=S DIKCPG21=1
 ;;^DIST(.403,.1101,40,3,12)
 ;;=K DIKCPG21
 ;;^DIST(.403,.1101,40,3,40,0)
 ;;=^.4032IP^.110107^1
 ;;^DIST(.403,.1101,40,3,40,.110107,0)
 ;;=.110107^1^1,1^e
 ;;^DIST(.403,.1101,40,3,40,.110107,11)
 ;;=K DIKCCRV D BKPRE21^DIKCFORM
 ;;^DIST(.403,.1101,40,3,40,.110107,12)
 ;;=I $D(DIKCCRV)#2 D BLDLOG^DIKCFORM(DA(1)) K DIKCCRV
 ;;^DIST(.403,.1101,40,4,0)
 ;;=2.2^^10,1^^^1^17,79
 ;;^DIST(.403,.1101,40,4,1)
 ;;=Page 2.2
 ;;^DIST(.403,.1101,40,4,40,0)
 ;;=^.4032IP^.110108^1
 ;;^DIST(.403,.1101,40,4,40,.110108,0)
 ;;=.110108^1^1,1^e
 ;;^DIST(.403,.1101,40,4,40,.110108,11)
 ;;=K DIKCCRV
 ;;^DIST(.403,.1101,40,4,40,.110108,12)
 ;;=I $D(DIKCCRV)#2 D BLDLOG^DIKCFORM(DA(1)) K DIKCCRV
 ;;^DIST(.403,.1102,0)
 ;;=DIKC EDIT UI^^^^2970612.1058^2981229.1134^^.11^0^0^1
 ;;^DIST(.403,.1102,14)
 ;;=D POSTSV^DIKCFORM
 ;;^DIST(.403,.1102,40,0)
 ;;=^.4031I^2^2
 ;;^DIST(.403,.1102,40,1,0)
 ;;=1^^1,1
 ;;^DIST(.403,.1102,40,1,1)
 ;;=Page 1
 ;;^DIST(.403,.1102,40,1,40,0)
 ;;=^.4032IP^.11021^2
 ;;^DIST(.403,.1102,40,1,40,.11021,0)
 ;;=.11021^2^3,1^e
 ;;^DIST(.403,.1102,40,1,40,.11022,0)
 ;;=.11022^1^1,1^d
 ;;^DIST(.403,.1102,40,1,40,.11023,0)
 ;;=.11023^4^11,3^e
 ;;^DIST(.403,.1102,40,1,40,.11023,2)
 ;;=4^^f^1
 ;;^DIST(.403,.1102,40,1,40,.11024,0)
 ;;=.11024^3^9,2^e
 ;;^DIST(.403,.1102,40,2,0)
 ;;=1.1^^7,1^^^1^15,79
 ;;^DIST(.403,.1102,40,2,1)
 ;;=Page 1.1^ORDER,4,1
 ;;^DIST(.403,.1102,40,2,40,0)
 ;;=^.4032IP^.11025^1
 ;;^DIST(.403,.1102,40,2,40,.11025,0)
 ;;=.11025^1^1,1^e
 ;;^DIST(.403,.3101,0)
 ;;=DIKK EDIT^^^^2970721.144^2990311.1203^^.31^0^0^1
 ;;^DIST(.403,.3101,20)
 ;;=D FORMDV^DIKKFORM
 ;;^DIST(.403,.3101,40,0)
 ;;=^.4031I^3^3
 ;;^DIST(.403,.3101,40,1,0)
 ;;=1^^1,1^2
 ;;^DIST(.403,.3101,40,1,1)
 ;;=Page 1
 ;;^DIST(.403,.3101,40,1,40,0)
 ;;=^.4032IP^.310101^6
 ;;^DIST(.403,.3101,40,1,40,.310101,0)
 ;;=.310101^1^1,1^d
 ;;^DIST(.403,.3101,40,1,40,.310102,0)
 ;;=.310102^2^3,1^e
 ;;^DIST(.403,.3101,40,1,40,.310103,0)
 ;;=.310103^3^5,3^d
 ;;^DIST(.403,.3101,40,1,40,.310104,0)
 ;;=.310104^4^9,3^e
 ;;^DIST(.403,.3101,40,1,40,.310104,2)
 ;;=5
 ;;^DIST(.403,.3101,40,1,40,.310105,0)
 ;;=.310105^5^15,1^d
 ;;^DIST(.403,.3101,40,1,40,.310105,1)
 ;;=UNIQUENESS INDEX
 ;;^DIST(.403,.3101,40,1,40,.310106,0)
 ;;=.310106^6^15,1^e
 ;;^DIST(.403,.3101,40,2,0)
 ;;=1.1^^1,1^^^1^17,79
 ;;^DIST(.403,.3101,40,2,1)
 ;;=Page 1.1^DETAILS,DIKK EDIT UNIQUENESS INDEX,1
 ;;^DIST(.403,.3101,40,2,40,0)
 ;;=^.4032IP^.310107^4
 ;;^DIST(.403,.3101,40,2,40,.310107,0)
 ;;=.310107^1^1,1^d
 ;;^DIST(.403,.3101,40,2,40,.310107,1)
 ;;=UNIQUENESS INDEX
 ;;^DIST(.403,.3101,40,2,40,.310108,0)
 ;;=.310108^2^2,3^e
 ;;^DIST(.403,.3101,40,2,40,.310108,1)
 ;;=UNIQUENESS INDEX
 ;;^DIST(.403,.3101,40,2,40,.310109,0)
 ;;=.310109^3^8,3^d
 ;;^DIST(.403,.3101,40,2,40,.31011,0)
 ;;=.31011^4^10,3^e
 ;;^DIST(.403,.3101,40,2,40,.31011,1)
 ;;=UNIQUENESS INDEX
 ;;^DIST(.403,.3101,40,2,40,.31011,2)
 ;;=4^^f^1
 ;;^DIST(.403,.3101,40,3,0)
 ;;=1.2^^8,2^^^1^16,78
 ;;^DIST(.403,.3101,40,3,1)
 ;;=Page 1.2^ORDER,DIKK EDIT UI FIELD REP,1.1
 ;;^DIST(.403,.3101,40,3,40,0)
 ;;=^.4032IP^.310111^1
 ;;^DIST(.403,.3101,40,3,40,.310111,0)
 ;;=.310111^1^1,1^e
 ;;^DIST(.403,.3101,40,3,40,.310111,11)
 ;;=K DIKKCRV
 ;;^DIST(.403,.3101,40,3,40,.310111,12)
 ;;=I $D(DIKKCRV) D BLDLOG^DIKCFORM(DA(1)) K DIKKCRV
 ;;^DIST(.403,.40001,0)
 ;;=DIBTED^@^^^2980904.1357^2990130.0900^^.401^0^0^1
 ;;^DIST(.403,.40001,12)
 ;;=D SAVEFLDS^DIBTED(DA)
 ;;^DIST(.403,.40001,40,0)
 ;;=^.4031I^2^2
 ;;^DIST(.403,.40001,40,1,0)
 ;;=1^^1,1^2
 ;;^DIST(.403,.40001,40,1,1)
 ;;=Page 1
 ;;^DIST(.403,.40001,40,1,40,0)
 ;;=^.4032IP^.400011^1
 ;;^DIST(.403,.40001,40,1,40,.400011,0)
 ;;=.400011^1^1,1^e
 ;;^DIST(.403,.40001,40,2,0)
 ;;=2^^1,1^^1
 ;;^DIST(.403,.40001,40,2,1)
 ;;=Page 2
 ;;^DIST(.403,.40001,40,2,40,0)
 ;;=^.4032IP^.400012^1
 ;;^DIST(.403,.40001,40,2,40,.400012,0)
 ;;=.400012^1^1,1^e
 ;;^DIST(.403,.40101,0)
 ;;=DIETED^@^^^2980801.074^2990303.0830^^.402^0^0^1
 ;;^DIST(.403,.40101,14)
 ;;=D SAVEFLDS^DIETED(DA)
 ;;^DIST(.403,.40101,40,0)
 ;;=^.4031I^2^2
