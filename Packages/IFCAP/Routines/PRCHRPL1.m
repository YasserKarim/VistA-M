PRCHRPL1 ;SF/TKW,WISC/CLH-PUBLIC LAW 100-322 LOCAL PROC--CONTINUED ;11-4-92/16:41
V ;;5.1;IFCAP;;Oct 20, 2000
 ;Per VHA Directive 10-93-142, this routine should not be modified.
EN S (PRCHTOT,PRCHRC)=0 F I=1:1 S PRCHRC=$O(^TMP($J,"RC",PRCHRC)) Q:'PRCHRC  S PRCHTOT=PRCHTOT+^(PRCHRC)
 D HDR,RD1 W ?132,"___________",!!,?120,"**TOTAL**",?132,$J(PRCHTOT,11,2),!,$C(13) Q  ;,@IOF  ;REMOVE IF PROBLEM WITH KERNEL V6.5
RD1 ;PRINT DETAILED REPORT
 S PRCHRC=0 F ZZJ=1:1 D:PRCHRC RC S PRCHRC=$O(^TMP($J,"R",PRCHRC)) Q:'PRCHRC  D:PRCHDY>55 HDR W !!,?3,"REASON: (",PRCHRC,") ",$P(^PRC(443.8,PRCHRC,0),"^",2),!! S PRCHDY=PRCHDY+8 D RD2
 Q
RD2 S PRCHFSC=0 F ZZI=0:0 D:PRCHFSC FSC S PRCHFSC=$O(^TMP($J,"R",PRCHRC,PRCHFSC)) Q:'PRCHFSC  S PRCHDESC="" F J=0:0 S PRCHDESC=$O(^TMP($J,"R",PRCHRC,PRCHFSC,PRCHDESC)) Q:PRCHDESC=""  D RD3
 Q
RD3 S PRCHV="" F K=0:0 S PRCHV=$O(^TMP($J,"R",PRCHRC,PRCHFSC,PRCHDESC,PRCHV)) Q:PRCHV=""  F L=0:0 S L=$O(^TMP($J,"R",PRCHRC,PRCHFSC,PRCHDESC,PRCHV,L)) Q:'L  S X=^(L) I "2B"[$P(X,U,9) D PRT
 Q
RC W ?90,"SUB TOTAL FOR REASON CODE: ",PRCHRC,?132,$J(^TMP($J,"RC",PRCHRC),11,2),! S PRCHDY=PRCHDY+1
 Q
FSC W !,?132,"___________",!,?90,"SUB TOTAL FOR FSC:",?132,$J(^TMP($J,"RC","FSC",PRCHRC,PRCHFSC),11,2),! S PRCHDY=PRCHDY+3
 Q
PRT D:PRCHDY>60 HDR W !,PRCHDESC,?31,PRCHFSC,?37,$P(X,U,2),?52,$P(X,U,9),?56,$P(X,U,3),?72,PRCHV,?104,$P(X,U,1),?113,$J($P(X,U,4),6)
 W ?121,$J($P(X,U,5),9,2),?132,$J($P(X,U,6),11,2),?145,$P(X,U,7)
 S PRCHDY=PRCHDY+1 Q
HDR S PRCHPAGE=PRCHPAGE+1 W @IOF W "P.L. 100-322 LOCAL PROCUREMENT REASON REPORT",?123,PRCHPDAT,?146,"PAGE ",PRCHPAGE,!
 W ?4,"STATION: "_PRC("SITE")_"-"_PRCHSITE,!,"Dates Received: "_PRCHFT_"    FSC CODES: " F I=0:0 S I=$O(^TMP($J,"FSCG",I)) Q:'I  W I_" "
 W "    Non-Expendable Purchases NOT Included",!!
 W "DESCRIPTION",?31,"FSC",?37,"N.I.I.N",?49,"SOURCE",?57,"NDC",?72,"VENDOR",?104,"P.O.NO.",?112,"QTY.REC.",?121,"UNIT COST",?133,"TOTAL COST",?145,"FCP",!
 F I=0:1:(IOM-2) W "-"
 W !! S PRCHDY=7 Q
