OCXOCMPZ ;SLC/RJS,CLA - ORDER CHECK CODE COMPILER (Convert Link Data) ;8/04/98  16:10
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**32**;Dec 17,1997
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
EN ;
 ;
 N D0,LINK
 S D0=0 F  S D0=$O(^OCXS(863.3,D0)) Q:'D0  D
 .K LINK M LINK=^OCXS(863.3,D0)
 .S OCXPVN=$$GETPVAL("OCXO VARIABLE NAME")
 .S OCXPVP=$$GETPVAL("OCXO VT-BAR PIECE NUMBER")
 .S OCXPSI=$$GETPVAL("OCXO HL7 SEGMENT ID")
 .;
 .I $L(OCXPVN),'$L(OCXPVP),'$L(OCXPSI) D  Q
 ..W !!,$P(LINK(0),U,1)
 ..W !,"         OCXO VARIABLE NAME: ",OCXPVN
 .;
 .I $L(OCXPVN),$L(OCXPVP),$L(OCXPSI)
 .E  Q
 .W !!
 .W !,$P(LINK(0),U,1)
 .W !,"         OCXO VARIABLE NAME: ",OCXPVN
 .W !,"   OCXO VT-BAR PIECE NUMBER: ",OCXPVP
 .W !,"        OCXO HL7 SEGMENT ID: ",OCXPSI
 .S OCXPVN="OCXODATA("""_OCXPSI_""","_OCXPVP_")",OCXPVP="",OCXPSI=""
 .W !
 .W !,"         OCXO VARIABLE NAME: ",OCXPVN
 .W !,"   OCXO VT-BAR PIECE NUMBER: ",OCXPVP
 .W !,"        OCXO HL7 SEGMENT ID: ",OCXPSI
 .D PUTPVAL(D0,"OCXO VARIABLE NAME",OCXPVN)
 .D PUTPVAL(D0,"OCXO VT-BAR PIECE NUMBER",OCXPVP)
 .D PUTPVAL(D0,"OCXO HL7 SEGMENT ID",OCXPSI)
 ;
 Q
 ;
PUTPVAL(LD0,PAR,VAL) ;
 ;
 N D0,D1
 S D0=$O(^OCXS(863.8,"B",PAR,0)) Q:'D0
 S D1=$O(LINK("PAR","B",D0,0)) Q:'D1
 S ^OCXS(863.3,LD0,"PAR",D1,"VAL")=VAL
 Q
 ;
GETPVAL(PNAME) ;
 ;
 N D0,D1
 S D0=$O(^OCXS(863.8,"B",PNAME,0)) Q:'D0 ""
 S D1=$O(LINK("PAR","B",D0,0)) Q:'D1 ""
 Q $G(LINK("PAR",D1,"VAL"))
 ;