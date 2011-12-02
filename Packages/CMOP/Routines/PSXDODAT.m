PSXDODAT ;BRM/PDW-DOD PROCESS/FILE AUTO-SCHEDULING INFORMATION ;09/09/02 11:15 AM
 ;;2.0;CMOP;**38,45**;11 Apr 97
 Q
EN(PATH,FNAME) ; needs directory & file name
 I $L(PATH),$L(FNAME) I 1
 E  S PSXERR="0^BAD PATH OR FILENAME" G ERRMSG
 K ^TMP($J,"PSXDOD")
 S FNAME1=FNAME
 S GBL="^TMP("_$J_",""PSXDOD"",1)"
 S Y=$$FTG^%ZISH(PATH,FNAME,$NA(^TMP($J,"PSXDOD",1)),3)
 I Y'>0 S PSXERR="9^"_PATH_U_FNAME_U_" DID NOT LOAD" G ERRMSG
 I $D(^TMP($J,"PSXDOD"))'>1 S PSXERR="9^"_PATH_U_FNAME_U_" DID NOT LOAD" G ERRMSG
EN1 ;
 K PSXERR
 S (MSH,MSH1)=^TMP($J,"PSXDOD",1),ARQ=^TMP($J,"PSXDOD",2)
 I $E(MSH,1,3)="MSH",$E(ARQ,1,3)="ARQ" I 1
 E  S PSXERR="1^ BAD SEGMENT SEQUENCE ^ Auto Scheduling Information ^ "_PATH_U_FNAME G ERRMSG
 ; variables are being set to call DOD^PSXMISC
 F YY="SENDAPP^3","MSGTYPID^9","MSGID^10","HLDATETM^7" D PIECE(MSH,"|",YY)
 I $E(IOST)="C" W !,"MSGTYPID ",MSGTYPID
 S SITE="1"_$P(MSGID,"-") ;****Institution File
 S XX=$O(^PSX(552,"D",SITE,0)),SITENM=$$GET1^DIQ(552,XX,.01)
 S ARQ=$P(ARQ,"ARQ|",2)
 F YY="STAT^6","DATE^11","HOUR^13","ROFF^15" D PIECE(ARQ,"|",YY)
 S HOUR=$E(HOUR,2,99),HOUR=+HOUR,DATE=$$FMDATE^HLFNC(DATE)
 I "SIU^S07,SIU^S20"'[MSGTYPID I $E(IOST)="C" W !,"STOPPING ",MSGTYPID Q  ; Not a scheduling message.
 S ROFF=$$FMNAME^HLFNC(ROFF,"^") ; remote official name
 ;S STDATE=$$FMDATE^HLFNC(DATE)
 S:STAT=1 STAT=1,PSXCS=0
 S:STAT=2 STAT=1,PSXCS=1
 S:STAT=3 STAT=0,PSXCS=0
 S:STAT=4 STAT=0,PSXCS=1
 D DOD^PSXMISC
 K ^TMP($J,"PSXDOD1")
 D NOW^%DTC S DATETM=$$HLDATE^HLFNC(%),DATETM=+DATETM
 S RESP=$S(MSGTYPID["SIU":"SRR^S07",1:"SRR^S20")
 S MSH="MSH|^~\&|VistA||CHCS||2001121401100||SRR^SO7|10111-011214|P|2.3.1|NE|NE"
 F YY="SENDAPP^5","MSGID^10","DATETM^7","RESP^9" D PUT(.MSH,"|",YY)
 S ^TMP($J,"PSXDOD1",1)=MSH
 S MSA="MSA|CA|"_MSGID_"|"
 S ^TMP($J,"PSXDOD1",2)=MSA
 S FNAME2=$P(FNAME1,"."),FNAME2=FNAME2_".HAC",PATH=$$GET1^DIQ(554,1,21)
 F XX=1:1:5 S Y=$$GTF^%ZISH($NA(^TMP($J,"PSXDOD1",1)),3,PATH,FNAME2) Q:Y=1  H 4
 I Y'=1 S GBL=$NA(^TMP($J,"PSXDOD")) D FALERT^PSXDODNT(FNAME2,PATH,GBL)
 ;I $E(IOST)="C" W !," FILING RESPONSE ",PATH," ",FNAME2," ",Y
 S PATH=$$GET1^DIQ(554,1,22)
 F XX=1:1:5 S Y=$$GTF^%ZISH($NA(^TMP($J,"PSXDOD1",1)),3,PATH,FNAME2) Q:Y=1  H 4
 I Y'=1 S GBL=$NA(^TMP($J,"PSXDOD")) D FALERT^PSXDODNT(FNAME2,PATH,GBL)
 Q
PIECE(REC,DLM,XX) ;
 ; Set variable V = piece P of REC using delimiter DLM
 N V,P S V=$P(XX,U),P=$P(XX,U,2),@V=$P(REC,DLM,P)
 Q
PUT(REC,DLM,XX) ;
 ; Set Variable V into piece P of REC using delimiter DLM
 N V,P S V=$P(XX,U),P=$P(XX,U,2)
 S $P(REC,DLM,P)=$G(@V)
 Q
AUTO ; AUTO SCAN IN DIRECTORY AND FIRE UP JOBS
 S PATH=$$GET1^DIQ(554,1,20)
 Q:'$L(PATH)
 K PSXF,PSXL
 S PSXF("*.SCH")="",Y=$$LIST^%ZISH(PATH,"PSXF","PSXL")
 I $E(IOST)="C" I 'Y W !,"NO FILES FOUND" Q
 S FNAME="" F  S FNAME=$O(PSXL(FNAME)) Q:FNAME=""  D
 . I $E(IOST)="C" W !," processing ",PATH," ",FNAME
 . D EN(PATH,FNAME)
 Q
ERRMSG ;
MSGSEQER ;send error message to folks & DOD
 ;W !,"error ",PSXERR
 S XMSUB="DOD to CMOP Auto Scheduling Error"
 ;S XMY(DUZ)="" ;***TESTING
 S XMY("G.CMOP MANAGERS")=""
 S XMTEXT="PSXTXT("
 S PSXTXT(1,0)="DOD to VA CMOP Auto Scheduling experienced an error"
 S PSXTXT(2,0)=$G(PSXERR)
 D ^XMD
 Q