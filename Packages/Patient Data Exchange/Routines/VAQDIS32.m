VAQDIS32 ;ALB/JFP,JRP - BUILDS DISPLAY ARRAY FOR (MAS DATA);3JUL91
 ;;1.5;PATIENT DATA EXCHANGE;**13**;NOV 17, 1993
SCR10 ;SCREEN 10 of MAS
R0 ; -- HEADER
 D BLANK^VAQDIS20
 S VAQLN=$$REPEAT^VAQUTL1(" ",79)
 S VAQCTR=" -- INELIGIBLE/MISSING DATA -- "
 S X=$$CENTER^VAQDIS20(VAQLN,VAQCTR)
 D TMP,BLANK^VAQDIS20
 K VAQLN,VAQCTR
R1 ;
 S VAQINF=$G(@XTRCT@("VALUE",2,.152,0))
 S VAQDTE=$S(VAQINF="":0,1:1)
 S:(VAQINF="") VAQINF="NOT APPLICABLE"
 S X=$$SETSTR^VALM1("Ineligible Date: "_VAQINF,"",6,41)
 S VAQTMP=$G(@XTRCT@("VALUE",2,.1651,0)) D SCR
 S X=$$SETSTR^VALM1("TWX Source: "_VAQINF,X,48,31)
 D TMP
R2 ;
 S VAQTMP=$G(@XTRCT@("VALUE",2,.1653,0)) D SCR
 S X=$$SETSTR^VALM1("TWX City: "_VAQINF,"",13,35)
 S VAQTMP=$G(@XTRCT@("VALUE",2,.1654,0)) D SCR
 S X=$$SETSTR^VALM1("TWX State: "_VAQINF,X,49,30)
 D TMP
R3 ;
 S VAQINF=$G(@XTRCT@("VALUE",2,.307,0))
 S:('VAQDTE) VAQINF="NOT APPLICABLE"
 S:((VAQDTE)&(VAQINF="")) VAQINF="UNSPECIFIED"
 S X=$$SETSTR^VALM1("Reason: "_VAQINF,"",15,64)
 D TMP
R4 ;
 S VAQTMP=$G(@XTRCT@("VALUE",2,.1656,0)) D SCR
 S X=$$SETSTR^VALM1("VARO Decision: "_VAQINF,"",8,71)
 D TMP
R5 ;
 S VAQINF=$G(@XTRCT@("VALUE",2,.153,0))
 S VAQDTE=$S(VAQINF="":0,1:1)
 S:(VAQINF="") VAQINF="NOT APPLICABLE"
 S X=$$SETSTR^VALM1("Missing Date: "_VAQINF,"",9,38)
 S VAQTMP=$G(@XTRCT@("VALUE",2,.1657,0)) D SCR
 S X=$$SETSTR^VALM1("TWX Source: "_VAQINF,X,48,31)
 D TMP
R6 ;
 S VAQTMP=$G(@XTRCT@("VALUE",2,.1658,0)) D SCR
 S X=$$SETSTR^VALM1("TWX City: "_VAQINF,"",13,35)
 S VAQTMP=$G(@XTRCT@("VALUE",2,.1659,0)) D SCR
 S X=$$SETSTR^VALM1("TWX State: "_VAQINF,X,49,30)
 D TMP
R7 ;
 I ('VAQDTE) S X=$$SETSTR^VALM1("Reason: NOT APPLICABLE","",15,64) D TMP G EXIT
 S SEQ=""
 I ($O(@XTRCT@("VALUE",2.16,.01,SEQ))="") S X=$$SETSTR^VALM1("Reason: UNSPECIFIED","",15,64) D TMP G EXIT
 K ^UTILITY($J,"W")
 S SEQ=""
 F  S SEQ=$O(@XTRCT@("VALUE",2.16,.01,SEQ)) Q:(SEQ="")  D
 .S X=$G(@XTRCT@("VALUE",2.16,.01,SEQ))
 .S DIWL=23
 .S DIWR=79
 .S DIWF=""
 .D ^DIWP
 S SEQ=0
 F  S SEQ=$O(^UTILITY($J,"W",23,SEQ)) Q:(SEQ="")  D
 .S X=$G(^UTILITY($J,"W",23,SEQ,0))
 .S X=$$SETSTR^VALM1(X,"",23,56)
 .I (SEQ=1) S X=$$SETSTR^VALM1("Reason: ",X,15,8)
 .D TMP
 ;
EXIT K VAQLN,VAQCTR,VAQINF,VAQTMP,X,SEQ,VAQDTE
 K ^UTILITY($J,"W"),DIWL,DIWR,DIWF
 QUIT
 ;
TMP ; -- Sets up line
 S VALMCNT=VALMCNT+1
 S @ROOT@(VALMCNT,0)=$E(X,1,79)
 QUIT
 ;
SCR I ('VAQDTE) S VAQINF="NOT APPLICABLE" Q
 S VAQINF=$S(VAQTMP="":"UNANSWERED",1:VAQTMP)
 QUIT
 ;
END ;End of code
 QUIT