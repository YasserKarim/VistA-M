NURAR110 ;HIRMFO/MD-PRINT MODULE FOR FTEE COMPARISON BY LOCATION ;5/19/97
 ;;4.0;NURSING SERVICE;**2,33**;Apr 25, 1997
EN1 ;ENTRY POINT TO PRINT MODULE
 S NODET=0
 S NURFAC="" F  S NURFAC=$O(^TMP("NURA",$J,NURFAC)) Q:NURFAC=""!(NURQUIT)  S NURSW1(1)=$S(NURMDSW:0,1:1) D:NURMDSW WRITHDR D NEXT Q:NURQUIT 
 I $O(^TMP("NURA",$J,""))="" D
 .  I $D(NURSNLOC) S NURX=$O(NURSNLOC("")),NPWARD=$O(NURSNLOC(NURX,"")) D EN6^NURSAUTL S NL1=NPWARD S:$O(NURSNLOC(NURX))="" NURSW1(1)=1 I $G(NURPROG(1))'="" S NURPROG=NURPROG(1),NURSW1=1
 .  I $G(NURMDSW),$G(NURFAC(1))'="" S NURFAC=NURFAC(1)
 .  S NODET=1 D:NURMDSW WRITHDR Q:NURQUIT  W !,?15,"THERE IS NO DATA FOR THIS REPORT"
 .  S:$G(NUROUT) NURQUIT=+$G(NUROUT) Q:NURQUIT
 .  Q
 W:'NURQUIT !!!,?25,"*** REPORT FINISHED ***"
 Q
NEXT S NURPROG="" F  S NURPROG=$O(^TMP("NURA",$J,NURFAC,NURPROG)) Q:NURPROG=""!(NURQUIT)  S:'(NURSW1(1)) Z=$$PROD^NURSUT2(NURPROG),Y=$$CNTR^NURSUT2(Z) W:'(NURSW1(1)) !,?Y,$G(Z),!,?Y,$$REPEAT^XLFSTR("-",$L(Z)+1) D  Q:NURQUIT
 .  S NL1="" F  S NL1=$O(^TMP("NURA",$J,NURFAC,NURPROG,NL1)) Q:NL1=""!(NURQUIT)  D
 .  .  I $D(^TMP("NURA",$J,NURFAC,NURPROG,NL1))'=11 D NODETL S NODET=1 Q
 .  .  S NPRI="" W:NURMDSW&'(NURSW1(1))&'(NODET) !!,?15,"WARD: ",NL1 D:$G(NURSW1(1)) WRITHDR Q:NURQUIT  S NURSW1(1)=1 F  S NPRI=$O(^TMP("NURA",$J,NURFAC,NURPROG,NL1,NPRI)) Q:NPRI=""!NURQUIT  D PRTDETL
 .  .  D:'NURQUIT PRTSUM
 Q
WRITHDR ;
 I 'NODET I 'NURQUEUE,NURSW1,$E(IOST)="C" W ! D ENDPG^NURSUT1 S:NUROUT NURQUIT=+NUROUT Q:NURQUIT
 S NURPAGE=NURPAGE+1 W:$E(IOST)="C"!(NURPAGE>1) @IOF
 I $G(NURMDSW),$G(NURFAC)'="" W !,?$$CNTR^NURSUT2(NURFAC),$$FACL^NURSUT2(NURFAC)
 W !,"NURSING SERVICE BUDGETED/ACTUAL FTEE BY WARD",?70,"PAGE: ",NURPAGE
 W !!,?31,"BUDGETED",?44,"ACTUAL",!,"TITLE",?33,"FTEE    ",?45,"FTEE",?54,"VARIANCE" S Y=DT D:+Y D^DIQ W "  ",Y,!,$$REPEAT^XLFSTR("-",80)
 I 'NURMDSW S NURSW1=1
 I $G(NURSW1),$G(NURSW1(1)),$G(NURPLSW) N Z S Z=$$PROD^NURSUT2(NURPROG),Y=$$CNTR^NURSUT2(Z) W !?Y,$G(Z),!?Y,$$REPEAT^XLFSTR("-",$L(Z)+1)
 S:NODET NODET=0
 I $G(NURSW1(1)),'NODET W !!,?15,"WARD: ",NL1,!
 S NURSW1=1
 Q
PRTDETL ;
 S NDATA=$G(^TMP("NURA",$J,NURFAC,NURPROG,NL1,NPRI))
 S NPO=$P(NDATA,";"),NPOS=$P($P(NDATA,"^"),";",2),NAFTE=$P(NDATA,"^",3),NBFTE=$P(NDATA,"^",2),NVAR=NAFTE-NBFTE
 S NURCAT=$O(^NURSF(211.3,"C",$E(NPOS,1,30),"")),NURCAT=$S(NURCAT="":"",'$D(^NURSF(211.3,NURCAT,0)):"",1:$P(^(0),"^",5))
 I 'NURMDSW,'NURSW1 D WRITHDR
 I $Y>(IOSL-6) D WRITHDR Q:NURQUIT
 W !!,NPOS,?30,$J(+NBFTE,8,3),?41,$J(NAFTE,8,3),?52,$J(NVAR,8,3)
 S:NURCAT="R" NTRA=NTRA+NAFTE S:NURCAT="L" NTLA=NTLA+NAFTE S:NURCAT="N" NTNB=NTNB+NBFTE,NTNA=NTNA+NAFTE
 S:NURCAT="C" NTCA=NTCA+NAFTE S:NURCAT="A" NTAA=NTAA+NAFTE S:NURCAT="O" NTOB=NTOB+NBFTE,NTOA=NTOA+NAFTE
 S NTOTB=NTOTB+NBFTE,NTOTA=NTOTA+NAFTE,NAFTE=0
 Q
NODETL ;
 S (NTOTB,NTOTA,NAFTE,NTRA,NTLA,NTNA,NTCA,NTAA,NTOA)=0
 D WRITHDR Q:NURQUIT  W !,?15,"THERE IS NO DATA FOR WARD: ",NL1 S NODET=1
 D ENDPG^NURSUT1 S:$G(NUROUT) NURQUIT=+$G(NUROUT) Q:NURQUIT
 Q
PRTSUM ;
 S NL1(0)=1
NEXTP G:$P(^TMP("NURA",$J,NURFAC,NURPROG,NL1),"^",NL1(0))="" NEXTL S NTOOT($P(^(NL1),"^",NL1(0)))=$P(^(NL1),"^",NL1(0)+1),NL1(0)=NL1(0)+2 G NEXTP
NEXTL S:$D(NTOOT("R")) NTRB=NTOOT("R") S:$D(NTOOT("L")) NTLB=NTOOT("L") S:$D(NTOOT("N")) NTNB=NTOOT("N") S:$D(NTOOT("C")) NTCB=NTOOT("C") S:$D(NTOOT("A")) NTAB=NTOOT("A") S:$D(NTOOT("O")) NTOB=NTOOT("O")
 S NTOTV=NTOTA-NTOTB,NTRV=NTRA-NTRB,NTLV=NTLA-NTLB,NTNV=NTNA-NTNB,NTCV=NTCA-NTCB,NTAV=NTAA-NTAB,NTOV=NTOA-NTOB
 W !,?31,"--------",?42,"--------",?53,"--------"
 D:$Y>(IOSL-6) WRITHDR Q:NURQUIT  W !,?17,"WARD TOTAL =",?30,$J(+NTOTB,8,3),?41,$J(NTOTA,8,3),?52,$J(NTOTV,8,3)
 D:$Y>(IOSL-6) WRITHDR Q:NURQUIT  W !!!,?19,"RN TOTAL =" I +NTRB'=0!(+NTRA'=0)!(+NTRV'=0) W ?30,$J(+NTRB,8,3),?41,$J(NTRA,8,3),?52,$J(NTRV,8,3)
 D:$Y>(IOSL-6) WRITHDR Q:NURQUIT  W !,?18,"LPN TOTAL =" I +NTLB'=0!(+NTLA'=0)!(+NTLV'=0) W ?30,$J(+NTLB,8,3),?41,$J(NTLA,8,3),?52,$J(NTLV,8,3)
 D:$Y>(IOSL-6) WRITHDR Q:NURQUIT  W !,?19,"NA TOTAL = " I +NTNB'=0!(+NTNA'=0)!(+NTNV'=0) W ?30,$J(+NTNB,8,3),?41,$J(NTNA,8,3),?52,$J(NTNV,8,3)
 D:$Y>(IOSL-6) WRITHDR Q:NURQUIT  W !,?16,"ADMIN TOTAL = " I +NTAB'=0!(+NTAA'=0)!(+NTAV'=0) W ?30,$J(+NTAB,8,3),?41,$J(NTAA,8,3),?52,$J(NTAV,8,3)
 D:$Y>(IOSL-6) WRITHDR Q:NURQUIT  W !,?13,"CLERICAL TOTAL =" I +NTCB'=0!(+NTCA'=0)!(+NTCV'=0) W ?30,$J(+NTCB,8,3),?41,$J(NTCA,8,3),?52,$J(NTCV,8,3)
 D:$Y>(IOSL-6) WRITHDR Q:NURQUIT  W !,?16,"OTHER TOTAL =" I +NTOB'=0!(+NTOA'=0)!(+NTOV'=0) W ?30,$J(+NTOB,8,3),?41,$J(NTOA,8,3),?52,$J(NTOV,8,3)
 S NTNAT=NTNAT+NTNA,NTRAT=NTRAT+NTRA,NTLAT=NTLAT+NTLA,NTCAT=NTCAT+NTCA,NTAAT=NTAAT+NTAA,NTOAT=NTOAT+NTOA
 S (NTOTA,NTOTB,NTRA,NTLA,NTNA,NTCA,NTAA,NTOA,NTRB,NTLB,NTNB,NTCB,NTAB,NTOB)=0,X="" F Y=0:0 S X=$O(NTOOT(X)) Q:X=""  S NTOOT(X)=""
 Q