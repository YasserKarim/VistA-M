LRWRKS ;SLC/RWF - WORK SHEET ACCESSION LIST ;2/19/91  11:48 ;
 ;;5.2;LAB SERVICE;**153,358**;Sep 27, 1994
 K DIC S DIC="^LRO(68,",DIC(0)="AEMOQ",LREND=0 D ^DIC S LRAA=+Y,LRNAME=$P(Y,U,2) G END:LRAA<1
 K LRSTAR,DIC D STAR^LRWU3:$P(^LRO(68,LRAA,0),U,3)="Y",PHD:'$D(LRSTAR) G END:LREND
W G END:'$D(^LRO(68,LRAA,1,LRAD,1,0))&'$D(LRSTAR)
 S LRUNC=0,LRTSE=-1
 K DIC W !,"Do you want a specific test?" S %=2 D YN^DICN IF %=1 S DIC="^LAB(60,",DIC(0)="AEMOQ" D ^DIC S LRTSE=+Y
 W !,"Do you want only incomplete entries?" S %=1 D YN^DICN S:%=2 LRUNC=1
 W !,"Do you want a long list?" S %=2 D YN^DICN S LRSHORT=(%=2)
 S %ZIS="Q" D ^%ZIS G END:POP
 I $D(IO("Q")) K IO("Q") S ZTRTN="DQ^LRWRKS" S ZTSAVE("LR*")="",ZTSAVE("LAST")="" D ^%ZTLOAD G END
 D ENT G END
ENT U IO D URG^LRX S Y=DT D DD^LRX S LRDT0=Y,LRDC=1,LRLINE="---------------------------------------"
 I '$D(LRSTAR) S LRAN=LRFAN-1 F LRIX=0:0 S LRAN=$O(^LRO(68,LRAA,1,LRAD,1,LRAN)),LREND=0 Q:LRAN>LRLAN!(LRAN<1)  D ACC
 I $D(LRSTAR) F A=0:0 S LRAD=$O(^LRO(68,LRAA,1,LRAD)) Q:LRAD<1!(LRAD>LRWDTL)  D AC
 Q
ACC D TD IF 'LREND,K1 D:LRUNC!'LRVER ENT^LRWRKS2
 Q
TD S:'$D(^LRO(68,LRAA,1,LRAD,1,LRAN,0)) LREND=1 Q:LREND  S LRSN=+$P(^(0),U,5),LRDAT=+$P(^(0),U,4)
 S LRVER=1,K1=0,I=0 F  S I=$O(^LRO(68,LRAA,1,LRAD,1,LRAN,4,I)) Q:I<.5  S LRVER=(LRVER&$P(^(I,0),U,5)) I 'K1,LRTSE>0,+^(0)=LRTSE S K1=I
 S K1=$S(LRTSE<0:1,1:K1) Q
 Q
PHD Q:LREND  S LREND=0,U="^" D ADATE^LRWU Q:LREND  D LRAN^LRWU3 Q
 Q
AC S LRTK=LRSTAR-.00001 F B=0:0 S LRTK=$O(^LRO(68,LRAA,1,LRAD,1,"E",LRTK)) Q:LRTK<1!(LAST>1&(LRTK\1>LAST))  D AC1
 Q
AC1 S LRAN=0 F  S LRAN=$O(^LRO(68,LRAA,1,LRAD,1,"E",LRTK,LRAN)) Q:LRAN<1  I $D(^LRO(68,LRAA,1,LRAD,1,LRAN,0)) D ACC
 Q
% R %:DTIME Q:%=""!(%["N")!(%["Y")  W !,"Answer 'Y' or 'N': " G %
END W !! W:$E(IOST)="P" @IOF D ^%ZISC K ZTRTN,ZTIO,ZTDESC,ZTSAVE,%H,%ZIS,DFN,J,LRDFN,LRDOC,LREDT,LRSDT,LRCDT,LRUID
 K %,A,B,I,K,K1,L,LRACC,LRSPEC,LRURG,SEX,SSN,X,Y,DIC,LRUNC,LRDAT,LRAA,LRAD,LRAN,LRDPF,LRSN,LRSTAR,LRSHORT,LAST,PNM,ZTSK,LRDC,LRIDT,LRLLOC,LRODNUM,LRTK,LRV,LRWDTL,POP,T
 K LRTSTS,LRLAN,LREND,LRLINE,LRFAN,LRFI,LRIX,LRNAME,LRTSE,LRVER,VA("BID"),VA("PID")
 Q
EN ;
DQ U IO S U="^" D ENT S:$D(ZTQUEUED) ZTREQ="@" G END
ALLUNC W !,"LIST ALL UNVERIFIED TEST's for one day",! D ADATE^LRWU3 G END:LREND S %ZIS="Q" D ^%ZIS G END:POP
 I $D(IO("Q")) K IO("Q") S ZTRTN="ALL^LRWRKS",ZTSAVE("LRAD")="" D ^%ZTLOAD G END
ALL S U="^",LRUNC=0,LRTSE=-1,LRFAN=1,LRLAN=999999,LRSHORT=1
 F LRAA=0:0 S LRAA=$O(^LRO(68,LRAA)) Q:LRAA'>0  S LRAD(1)=LRAD,LRDC=1 D AL2
 S:$D(ZTQUEUED) ZTREQ="@" G END
AL2 K LRSTAR S LAST=LRAD+.99 S LRNAME=$P(^LRO(68,LRAA,0),U,1) I $P(^(0),U,3)="Y" S LRSTAR=LRAD,LRWDTL=$E(LRAD,1,3)_"0000",LRAD=LRWDTL-10000
 D ENT S LRAD=LRAD(1) Q