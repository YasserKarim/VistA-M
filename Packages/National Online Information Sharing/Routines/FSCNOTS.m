FSCNOTS ;SLC/STAFF-NOIS Notification Send ;1/13/98  13:58
 ;;1.1;NOIS;;Sep 06, 1998
 ;
NOTIFY(CALL) ; from FSCTASKU
 N ADDRESS,ARRAY,DA,DIK,EVENT,MAILMSG,METHOD,MSG,NOTIFY,NUM,OK,USER K ARRAY
 S NUM=0 F  S NUM=$O(^FSCD("NOTIFY","B",CALL,NUM)) Q:NUM<1  D
 .S NOTIFY=^FSCD("NOTIFY",NUM,0)
 .D GET(NOTIFY,.USER,.METHOD,.EVENT,.ADDRESS)
 .D SEND(NOTIFY,CALL,EVENT,USER,.OK,.MSG) I OK D
 ..I METHOD="MAIL" D  Q
 ...S MAILMSG=$S('$D(MAILMSG):MSG,1:$S(MSG["Status":MSG,1:MAILMSG))
 ...I $L(ADDRESS) S ARRAY(ADDRESS)="",ARRAY(ADDRESS,1)="I" Q
 ...S ARRAY(USER)="",ARRAY(USER,1)="I"
 ..I METHOD="ALERT" D ALERT(CALL,USER,MSG) Q
 .I EVENT="ADDED" S DA=NUM,DIK="^FSCD(""NOTIFY""," D ^DIK
 .I EVENT="CLOSED" S DA=NUM,DIK="^FSCD(""NOTIFY""," D ^DIK
 I $L($O(ARRAY(0))) D MAIL(CALL,.ARRAY,MAILMSG)
 Q
 ;
GET(NOTIFY,USER,METHOD,EVENT,ADDRESS) ; from FSCTASKN
 N CALL,LIST,LOC S ADDRESS=""
 S CALL=$P(NOTIFY,U),LIST=$P(NOTIFY,U,2),LOC=$P(NOTIFY,U,3),USER=$P(NOTIFY,U,4),METHOD=$P(NOTIFY,U,5),EVENT=$P(NOTIFY,U,6)
 I USER S ADDRESS=$P($G(^FSC("SPEC",USER,0)),U,6) S:'$L(ADDRESS) ADDRESS=USER Q
 I LIST S USER=$P(^FSC("LIST",LIST,0),U,2),METHOD=$P(^(0),U,6),EVENT=$P(^(0),U,7),ADDRESS=$P($G(^FSC("SPEC",USER,0)),U,6) S:'$L(ADDRESS) ADDRESS=USER Q
 I LOC S USER=$P(^FSC("SITE",LOC,0),U,6),METHOD=$P(^(0),U,4),EVENT=$P(^(0),U,5),ADDRESS=$P(^(0),U,10) S:'$L(ADDRESS) ADDRESS=USER
 Q
 ;
SEND(NOTIFY,CALL,EVENT,USER,OK,MSG) ; (notify zero node,call,event,user for notification,ok,msg) returns ok to send notification and msg
 N EDITTIME,EDITUSER,FROM,LOG,STATTIME,TO,USERFLAG S OK=0,MSG=""
 S EDITTIME=$P(^FSCD("CALL",CALL,120),U,4),EDITUSER=$P(^(120),U,5),STATTIME=$P(^(120),U,2),FROM=$P(^(120),U,8),TO=$P(^(0),U,24)
 I EDITUSER=USER Q
 I 'USER Q
 S USERFLAG=$S($$ACCESS^FSCU(EDITUSER,"SPEC"):"",1:"<non Specialist> ")
 I EVENT="EDITED" D  Q
 .S OK=1,MSG="Edited by "_USERFLAG_$$VALUE^FSCGET(EDITUSER,7100,124)_" on "_$P($$FMTE^XLFDT(EDITTIME),":",1,2)_"."
 I EVENT="STATUS CHANGED",EDITTIME=STATTIME D  Q
 .S FROM=$$VALUE^FSCGET(FROM,7100,4.6),TO=$$VALUE^FSCGET(TO,7100,4.5)
 .S OK=1,MSG="Status changed "_$S($L(FROM):"from "_FROM_" ",1:"")_"to "_TO_" by "_USERFLAG_$$VALUE^FSCGET(EDITUSER,7100,124)_" on "_$P($$FMTE^XLFDT(EDITTIME),":",1,2)_"."
 I EVENT="ADDED" D  Q
 .S OK=1,MSG="Call added to "_$P($G(^FSC("LIST",+$P(NOTIFY,U,2),0)),U)_" "_$$FMTE^XLFDT(DT)_"."
 I EVENT="CLOSED" D  Q
 .S OK=1,MSG="Call Closed by "_USERFLAG_$$VALUE^FSCGET(EDITUSER,7100,124)_" on "_$$FMTE^XLFDT(DT)_"."
 Q
 ;
MAIL(CALL,XMY,MAILMSG) ; from FSCTASKN
 N XMDUZ,XMSUB,XMTEXT K ^TMP("FSC MAIL DETAIL",$J)
 S XMDUZ="NOIS Notification",XMSUB=$$SHORT^FSCGETS(CALL,"NOIS:")
 I XMSUB[U S XMSUB=$$REPLACE^FSCRU(XMSUB,U,"~U~")
 D
 .I $D(^XTMP("FSC CALL DETAIL",CALL)) S XMTEXT="^XTMP(""FSC CALL DETAIL"","_CALL_"," Q
 .S ^TMP("FSC MAIL DETAIL",$J,0,1,0)=MAILMSG
 .S ^TMP("FSC MAIL DETAIL",$J,0,2,0)=" "
 .D BUILD^FSCFORM(0,CALL,"DETAIL",2,"FSC MAIL ") S XMTEXT="^TMP(""FSC MAIL DETAIL"",$J,0,"
 D ^XMD
 K ^TMP("FSC MAIL DETAIL",$J)
 Q
 ;
ALERT(CALL,USER,MSG) ; from FSCTASKN
 I '$L(USER) Q
 N NUM,ON,XQA,XQADATA,XQAID,XQAMSG,XAQROU K XQA S ON=1
 I '$G(^FSCD("ALERT","ALERT",USER)) S ON=0
 S NUM=$G(^FSCD("ALERT","AUC",USER,CALL))
 D
 .I NUM S $P(^FSCD("ALERT",NUM,0),U,3)=MSG Q
 .D NEWALERT(USER,CALL,MSG)
 I ON Q
 S XQA(USER)="",XQADATA="",XQAMSG="NOIS Calls",XQAROU="USER^FSCNAR",XQAID="FSC-A"
 D SETUP^XQALERT
 Q
 ;
NEWALERT(USER,CALL,MSG,NUM,DELIVERY) ; from FSCNAS, FSCRPCN
 N DA,DIK
 S CALL=$G(CALL),MSG=$G(MSG),DELIVERY=$G(DELIVERY)
 S NUM=1+$P(^FSCD("ALERT",0),U,3)
 L +^FSCD("ALERT",0):30 I '$T Q  ; *** needs ok
 F  Q:'$D(^FSCD("ALERT",NUM,0))  S NUM=NUM+1
 I DELIVERY S ^FSCD("ALERT",NUM,0)=USER_U_CALL_U_MSG_"^^"_DELIVERY
 E  S ^FSCD("ALERT",NUM,0)=USER_U_CALL_U_MSG_U_$$NOW^XLFDT
 S $P(^FSCD("ALERT",0),U,3)=NUM,$P(^(0),U,4)=$P(^(0),U,4)+1
 L -^FSCD("ALERT",0)
 S DIK="^FSCD(""ALERT"",",DA=NUM D IX1^DIK
 Q
