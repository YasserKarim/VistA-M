NURARWL7 ;HIRMFO/MD,FT-DAILY TOTAL ROUTINE FOR AMIS WORKLOAD STATISTICS REPORT ;9/20/96
 ;;4.0;NURSING SERVICE;;Apr 25, 1997
DAYTL ; DAY SUMMARY FOR AMIS WORKLOAD REPORTS
 I $G(NWARD),$G(NURSUMSW) D
 .  I $Y>(IOSL-4) D HEADER^NURARWL8 Q:NUROUT
 .  D DATE^NURARWL8
 .  Q
 F Y=1,2,3 D
 . S $P(NDVAR,U,Y)=$J($P(NDFTEE,U,Y),1,1)-$J($P(NDREQ,U,Y),1,1) I $J($P(NDFTEE,U,Y),1,1),$J($P(NDREQ,U,Y),1,1),NURSZAP'>6,NDPCC S $P(NDPROD,U,Y)=($J($P(NDREQ,U,Y),1,1)/$J($P(NDFTEE,U,Y),1,1))*100
 . S $P(NCVAR,U,Y)=$J($P(NCFT,U,Y),1,1)-$J($P(NCRQ,U,Y),1,1) I $J($P(NCFT,U,Y),1,1),$J($P(NCRQ,U,Y),1,1),NURSZAP'>6,NCPCC S $P(NCPROD,U,Y)=($J($P(NCRQ,U,Y),1,1)/$J($P(NCFT,U,Y),1,1))*100
 . Q
 W !,?18,$$REPEAT^XLFSTR("-",114) S NDATED(2)=$E(NDATE,4,5)_"/"_$E(NDATE,6,7)_"/"_$E(NDATE,2,3)
 D 
 . W !,NDATED(2)," SUMMARY",?22,$J($P(NDREQ,U),4,1),?28,$J($P(NDFTEE,U),4,1),?34,$J($P(NDVAR,U),5,1) W:NURSZAP'>6 ?41,$J($P(NDPROD,U),3,0) W ?48,$J($P(NDREQ,U,2),4,1),?54,$J($P(NDFTEE,U,2),4,1)
 .  W ?60,$J($P(NDVAR,U,2),5,1) W:NURSZAP'>6 ?67,$J($P(NDPROD,U,2),3,0) W ?74,$J($P(NDREQ,U,3),4,1),?80,$J($P(NDFTEE,U,3),4,1),?86,$J($P(NDVAR,U,3),5,1) W:NURSZAP'>6 ?93,$J($P(NDPROD,U,3),3,0)
 .  W ?97,$J($P(NDPC,U),4,1),?103,$J($P(NDPC,U,2),4,1),?109,$J($P(NDPC,U,3),4,1),?115,$J($P(NDPC,U,4),4,1),?122,$J($P(NDPC,U,5),3,1),?126,$J(NDPCC,5,1)
 . Q
 F Z="DOM","REC","HEM" I +DMNHRS(Z)!(+$P(DMNHRS(Z),U,2))!(+$P(DMNHRS(Z),U,3))!(+DCOUNT(Z)) D
 .  W !,NDATED(2)," ",Z," COUNT",?28,$J(+DMNHRS(Z),4,1),?54,$J($P(DMNHRS(Z),U,2),4,1),?80,$J($P(DMNHRS(Z),U,3),4,1)
 .  W ?97,$J(+DCOUNT(Z),4,1),?103,$J($P(DCOUNT(Z),U,2),4,1),?109,$J($P(DCOUNT(Z),U,3),4,1),?115,$J($P(DCOUNT(Z),U,4),4,1),?122,$J($P(DCOUNT(Z),U,5),3,1),?126,$J(+DCOUNT(Z),5,1)
 .  S DCOUNT(Z)=0
 .  Q
 F X=1:1:3 S $P(NDREQ,U,X)=0,$P(NDFTEE,U,X)=0,$P(NDVAR,U,X)=0,$P(NDPROD,U,X)=0,$P(NCFT,U,X)=0,$P(NCVAR,U,X)=0,$P(NCPROD,U,X)=0 F Z="DOM","REC","HEM" S $P(DMNHRS(Z),U,X)=0
 F X=1:1:5 S $P(NDPC,U,X)=0
 S NDPCC=0,NBR=1
 Q
PRINT ;
 ; DETAIL LINE PRINT FOR AMIS WORKLOAD REPORT
 ;
 Q:$G(NURSUMSW)
 I ($Y>(IOSL-9)) S:'NURMDSW NBRK=0 D HEADER^NURARWL8 Q:NUROUT
 W ! I NBR W !,$E(NPLOC,1,10)
 W ?11,$S(NSHFT=1:"NIGHT",NSHFT=2:"DAY",NSHFT=3:"EVE"),?17,$J(NSEC,3) S:NBR NBR=0
 I 'COUNTSW W ?23,$S(SECT="ATC":" N/A",1:$J($P(NREQ(NSHFT),U),3,1))
 W ?29,$J($P(NDFTEE(NSHFT),U),3,1)
 I 'COUNTSW W ?35,$J($P(NVAR(NSHFT),U),4,1) W:NURSZAP'>6 ?41,$J($P(NPROD(NSHFT),U),3,0) W ?49,$S($P(NURS213,U)="ATC":" N/A",1:$J($P(NREQ(NSHFT),U,2),3,1))
 W ?55,$J($P(NDFTEE(NSHFT),U,2),3,1)
 I 'COUNTSW W ?61,$J($P(NVAR(NSHFT),U,2),4,1) W:NURSZAP'>6 ?67,$J($P(NPROD(NSHFT),U,2),3,0) W ?75,$S($P(NURS213,U)="ATC":" N/A",1:$J($P(NREQ(NSHFT),U,3),3,1))
 W ?81,$J($P(NDFTEE(NSHFT),U,3),3,1)
 I 'COUNTSW W ?87,$J($P(NVAR(NSHFT),U,3),4,1) W:NURSZAP'>6 ?93,$J($P(NPROD(NSHFT),U,3),3,0)
 W ?98,$J($P(NPC(NSHFT),U),3),?104,$J($P(NPC(NSHFT),U,2),3),?110,$J($P(NPC(NSHFT),U,3),3),?116,$J($P(NPC(NSHFT),U,4),3),?122,$J($P(NPC(NSHFT),U,5),3),?126,$J(NPCC(NSHFT),4)
 Q
EN1 ; ENTRY POINT TO OPTION NURAPR-RES-CURWKL-QUEUE
 S NHOS=1,NURSZAP=6,(NUROUT,NPCT,NURQUIT,NURMDSW,NURPLSW,NSW1,NURQUEUE)=0 D EN9^NURSAGSP S:NURMDSW NURFAC=1 S:NURPLSW NPROG=1
 I '$P($G(^DIC(213.9,1,0)),U,7) D  S DIE="^DIC(213.9,",DA=1,DR="8" D ^DIE K DIE,DR I "^"[X S NUROUT=1 Q
 .  W !,$C(7),?5,"The professional percentage default site parameter, for wards without an",!,?5,"entry in the professional percentage field, in the NURS LOCATION File",!,?5,"entry must be entered: ",!
 .  Q
 I '$D(^NURSF(211.4,"ABS")) W !!,$C(7),"To generate this report AMIS Bedsections must be associated with MAS locations",!,"Contact the NURSING ADP Coordinator." S NUROUT=1 Q
 S NURY(1)=$P(^DIC(213.9,1,0),"^",4,6) D NOW^%DTC S NURY(0)=$E($P(%,".",2)_"0001",1,4)
 S NURY(2)=$S(NURY(0)>+$P(NURY(1),U,2)!(NURY(0)'>+$P(NURY(1),U,3)):"N",NURY(0)>+$P(NURY(1),U,3)&((NURY(0)'>+$P(NURY(1),U))):"D",1:"E")
 I NURY(2)="" S NUROUT=1 Q
 S NURY=$S(NURY(2)="N":"D",NURY(2)="D":"E",1:"N") ;use next shift
 S NURSHFT=NURY
 S NRPTDAT("PWLS")="" ;flag to indicate projected output
 Q
EN2 ;
 S (NURQUIT,NURMDSW,NSW1,NURQUEUE)=0,REQWRD="" D EN9^NURSAGSP S:NURMDSW NURFAC=1
 Q
