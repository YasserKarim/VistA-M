SOWKCLIS ;B'HAM ISC/SAB-Routine to print clinical report for a single supervisor ; 25 Feb 93 / 9:16 AM [ 09/22/94  1:23 PM ]
 ;;3.0; Social Work ;**34,53**;27 Apr 93
 S Y=$S($O(^SOWK(650,"O",0)):$O(^SOWK(650,"O",0)),1:$E(DT,1,5)_"01") X ^DD("DD") S %DT("B")=Y
BEG W ! K ^TMP($J) S %DT="AEXP",%DT("A")="ALL CASES"_$S(COM=2:" CLOSED ",COM=3:" OPENED ",1:" ")_"STARTING FROM: " D ^%DT G:"^"[X CLOS G:Y'>0 BEG S (SOWKBEG,SOWKBG)=Y,PG=0
 W ! K %DT("B") S %DT(0)=Y,%DT("A")="ENDING: " D ^%DT G:"^"[$E(X) CLOS S SOWKED=Y
ASK S D="B",DIC("S")="I $D(^VA(200,""ASWC"",+Y))",DIC="^VA(200,",DIC(0)="AEQ",DIC("A")="SELECT SUPERVISOR: " D IX^DIC G:"^"[X CLOS G:Y'>0 ASK S SOWKSUP=+Y
DEV W !!,"WARNING !!!",!?5,"This report is formatted for 132 columns and will be",!?5,"difficult to read if printed to the screen.",!
 K %ZIS,IOP,ZTSK S SOWKION=ION,%ZIS="QM",%ZIS("B")="" D ^%ZIS K %ZIS I POP S IOP=SOWKION D ^%ZIS K IOP,SOWKION G CLOS
 K SOWKION I $D(IO("Q")) S ZTDESC="CLINICAL REPORT FOR A INDIVIDUAL SUPERVISOR",ZTRTN="EN^SOWKCLIS" F G="SOWKBG","SOWKED","SOWKBEG","COM","SOWKSUP" S:$D(@G) ZTSAVE(G)=""
 I  K IO("Q") D ^%ZTLOAD W:$D(ZTSK) !!,"Task Queued to Print" K ZTSK G CLOS
EN S %H=$H D YX^%DTC S TD=$P(Y,"@")_" "_$P(Y,"@",2)
 S PG=0 F SOWKWRK=0:0 S SOWKWRK=$O(^SOWK(650,"W",SOWKWRK)) Q:'SOWKWRK  I $P(^VA(200,SOWKWRK,654),"^",2)=SOWKSUP D @$S(COM=2:"EN1",COM=3:"EN2",1:"EN0")
 D SET1 G CLOS
EN0 F SOWKI1=0:0 S SOWKI1=$O(^SOWK(650,"W",SOWKWRK,SOWKI1)) Q:'SOWKI1  S CN=^SOWK(650,SOWKI1,0) I $P(CN,"^",2)'<SOWKBEG,$P(CN,"^",2)'>SOWKED D SETUP
 Q
CLOS W ! W:$E(IOST)'["C" @IOF D ^%ZISC K ^TMP($J),DFN,C,SOWKSUP,G,PG,SOWKBEG,%DT,COM,PR,SOWKI1,DFN,CN,DS,D,I,M,OC,OUT,PAT,T,X,Y,TD,WRK,SOWKED,%H,DIC,SOWKWRK,SOWKBG D KVA^VADPT D:$D(ZTSK) KILL^%ZTLOAD
 Q
SETUP S C=0,(PR,OC)="" F I=0:0 S C=C+1,I=$O(^SOWK(650,SOWKI1,2,I)) Q:'I!(C>8)  S PR=PR_$P(^SOWK(650,SOWKI1,2,I,0),"^")_" ",OC=OC_$P(^(0),"^",2)_" "
 S C=0,DS="" F I=0:0 S C=C+1,I=$O(^SOWK(650,SOWKI1,5,I)) Q:'I!(C>8)  S DS=DS_$P(^SOWK(650,SOWKI1,5,I,0),"^")_" "
 S:'$D(^TMP($J,$P(^VA(200,$P(CN,"^",3),0),"^"))) ^TMP($J,$P(^VA(200,$P(CN,"^",3),0),"^"))=$P(^VA(200,SOWKSUP,0),"^")
 S DFN=$P(CN,"^",8) D PID^VADPT6
 S ^TMP($J,$P(^VA(200,$P(CN,"^",3),0),"^"),$P(^DPT($P(CN,"^",8),0),"^"),+CN)=$P(^DPT($P(CN,"^",8),0),"^")_"^"_VA("BID")_"^"_$P(^SOWK(651,$P(CN,"^",13),0),"^",4)_"^"_PR_"^"_OC_"^"_DS
 Q
PRI U IO I ($Y+5)>IOSL D HDR Q:$G(OUT)=1  W !!?11,"SOCIAL WORKER: "_WRK
 W !,PAT,?32,$P(D,"^",2),?43,$P(D,"^",3),?62,$P(D,"^",4),?87,$P(D,"^",5),?107,$P(D,"^",6)
 Q
HDR D:PG'=0 CHK Q:$G(OUT)=1  S Y=SOWKBG X ^DD("DD") S SOWKBG=Y,Y=SOWKED X ^DD("DD") S SOWKED=Y
 S PG=PG+1 U IO W !,"CLINICAL REPORT - INDIVIDUAL SUPERVISOR"_$S(COM=2:"(CLOSED CASES)",COM=3:"(OPENED CASES)",1:"(ALL CASES)"),?89,TD,?121,"PAGE: "_PG
 W !,$P(^DD("SITE"),"^")_" ("_$P(^DD("SITE",1),"^")_")",?45,"REPORTING PERIOD "_SOWKBG_" TO "_SOWKED
 W !,"NAME",?32,"ID#",?43,"CDC LOCATION",?62,"PROBLEMS",?87,"OUTCOMES",?107,"DIRECT SERVICES",! F M=1:1:132 W "-"
 W !?8,"SUPERVISOR: "_$P(^VA(200,SOWKSUP,0),"^")
 Q
EN1 F SOWKI1=0:0 S SOWKI1=$O(^SOWK(650,"W",SOWKWRK,SOWKI1)) Q:'SOWKI1  S CN=^SOWK(650,SOWKI1,0) I $P(CN,"^",18),$P(CN,"^",18)'<SOWKBEG,$P(CN,"^",18)'>SOWKED D SETUP
 Q
SET1 S (WRK,PAT)="" W:$Y @IOF D HDR
 F I=0:0 S WRK=$O(^TMP($J,WRK)) Q:WRK=""!($G(OUT)=1)  U IO W !!?11,"SOCIAL WORKER: "_WRK F G=0:0 S PAT=$O(^TMP($J,WRK,PAT)) Q:PAT=""!($G(OUT)=1)  F T=0:0 S T=$O(^TMP($J,WRK,PAT,T)) Q:'T!($G(OUT)=1)  S D=^TMP($J,WRK,PAT,T) D PRI
 Q
EN2 F SOWKI1=0:0 S SOWKI1=$O(^SOWK(650,"W",SOWKWRK,SOWKI1)) Q:'SOWKI1  I $P(^SOWK(650,SOWKI1,0),"^",2)'<SOWKBEG,$P(^(0),"^",2)'>SOWKED,'$P(^(0),"^",18) S CN=^SOWK(650,SOWKI1,0) D SETUP
 Q
CHK ;
 N SWXX
 I $E(IOST)["C" R !,"Press <RETURN> to continue: ",SWXX:DTIME I SWXX["^" S OUT=1
 W @IOF
 Q
