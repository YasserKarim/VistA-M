PRCPWDOU ;WISC/RFJ-update due-outs@whse                             ;24 Jul 91
 ;;5.1;IFCAP;;Oct 20, 2000
 ;Per VHA Directive 10-93-142, this routine should not be modified.
 N %,%H,%I,PRCPDT,PRCPDT1,PRCPPVNO,X,Y
 D ^PRCPUSEL Q:'$G(PRCP("I"))
 I PRCP("DPTYPE")'="W" W !,"YOU NEED TO BE A 'WAREHOUSE' INVENTORY POINT TO RUN THIS OPTION!" Q
 S PRCPPVNO=+$O(^PRC(440,"AC","S",0))_";PRC(440," I '$D(^PRC(440,+PRCPPVNO,0)) W !!,"THERE IS NOT A VENDOR IN THE VENDOR FILE (#440) DESIGNATED AS A SUPPLY WHSE." Q
 W !!,"Finalize Transactions and Update Due-Outs for Inventory Point: ",PRCP("IN"),!
 D NOW^%DTC S X1=X,X2=-3 D C^%DTC S %DT("A")="Remove Due-Outs and make ALL transactions final up to DATE: ",%DT="AEPX",%DT(0)=-X D ^%DT K %DT Q:Y<1  S PRCPDT=Y D DD^%DT S PRCPDT1=Y
 K X S X(1)="WARNING: I will make all transactions final up to date: "_PRCPDT1_".  I will also update your DUE-OUT Quantity in your inventory point.  You will not be able to post/receive a transaction after it has been made a final."
 D DISPLAY^PRCPUX2(5,75,.X)
 K X S X(1)="THIS REPORT WILL LOCK THE 'CONTROL POINT ACTIVITY' FILE #410.  OTHER USERS WILL NOT BE ABLE TO ACCESS THIS FILE UNTIL THIS REPORT FINISHES.  THEREFORE, I STRONGLY RECOMMEND RUNNING THIS REPORT AT NIGHT."
 D DISPLAY^PRCPUX2(5,75,.X)
ZIS S (%ZIS,IOP)="Q",%ZIS("B")="",%ZIS("A")="QUEUE TO PRINT ON DEVICE: " W ! D ^%ZIS I POP Q
 I IO=IO(0) W !,"YOU CANNOT SELECT YOUR CURRENT DEVICE." G ZIS
 S XP="ARE YOU SURE YOU WANT TO RUN THIS OPTION",XH="Enter 'YES' to start finalizing transactions and updating the Due-Outs.",XH(1)="Enter 'NO' or '^' to exit."
 I $$YN^PRCPUYN(2)'=1 D Q Q
 W !!,"The 'OUTSTANDING TRANSACTION REPORT' will print when finished."
 S ZTRTN="DQ^PRCPWDOU",ZTSAVE("PRCP*")="",ZTSAVE("ZTREQ")="@",ZTDESC="Finalize Transactions and update Due-Outs" D ^%ZTLOAD K ZTSK G Q
DQ ;  queue comes here
 N PRCPDAT0,PRCPDAT1,PRCPDAT3,PRCPDAT7,PRCPDAT9,PRCPITEM,PRCPLINE,PRCPNSN,PRCPOUT,PRCPSRC1,PRCPTRAN,PRCPTRDA,PRCPWDOU
 S PRCPTRAN=0
 F  S PRCPTRAN=$O(^PRCS(410,"B",PRCPTRAN)) Q:PRCPTRAN=""  S PRCPTRDA=0 F  S PRCPTRDA=$O(^PRCS(410,"B",PRCPTRAN,PRCPTRDA)) Q:'PRCPTRDA  I $D(^PRCS(410,PRCPTRDA,0)) D
 .   L +^PRCS(410,PRCPTRDA)
 .   S PRCPDAT0=^PRCS(410,PRCPTRDA,0),PRCPDAT1=$G(^PRCS(410,PRCPTRDA,1)),PRCPDAT3=$G(^PRCS(410,PRCPTRDA,3)),PRCPDAT7=$G(^PRCS(410,PRCPTRDA,7)),PRCPDAT9=$G(^PRCS(410,PRCPTRDA,9))
 .   I $P(PRCPDAT0,"^",2)="O",$P(PRCPDAT0,"^",4)=5,$P(PRCPDAT3,"^",4)=+PRCPPVNO,$P(PRCPDAT7,"^",6)'="",$P(PRCPDAT9,"^",3)="",$P(PRCPDAT1,"^")<PRCPDT D
 .   .   S $P(^PRCS(410,PRCPTRDA,9),"^",3)=PRCPDT,PRCPSRC1=+$P(PRCPDAT0,"^",6) Q:'$D(^PRCP(445,PRCPSRC1,0))
 .   .   S PRCPLINE=0 F  S PRCPLINE=$O(^PRCS(410,PRCPTRDA,"IT",PRCPLINE)) Q:'PRCPLINE  S PRCPITEM=+$P(^(PRCPLINE,0),"^",5) I $D(^PRCP(445,PRCPSRC1,1,PRCPITEM,7,PRCPTRDA,0)) D KILLTRAN^PRCPUTRA(PRCPSRC1,PRCPITEM,PRCPTRDA)
 .   L -^PRCS(410,PRCPTRDA)
 ;
 S PRCPWDOU=1 D DQ^PRCPWDOR
 ;
 S PRCPITEM=0 F  S PRCPITEM=$O(^PRCP(445,PRCP("I"),1,PRCPITEM)) Q:'PRCPITEM  D
 .   S PRCPNSN=$$NSN^PRCPUX1(PRCPITEM)
 .   ;  set dueout=newqty (subtract off current dueout qty)
 .   I PRCPNSN'="" S PRCPOUT=+$P($G(^TMP($J,"PRCPWDOR",PRCPNSN,PRCPITEM)),"^",4),%=$$GETOUT^PRCPUDUE(PRCP("I"),PRCPITEM) D SETOUT^PRCPUDUE(PRCP("I"),PRCPITEM,PRCPOUT-%)
 W !!,"TRANSACTIONS BEFORE DATE ",PRCPDT1," HAVE BEEN FINALIZED.  ALL INVENTORY ITEMS",!,"SHOULD NOW HAVE THE CORRECT DUE-OUT QUANTITY.  ITEMS NOT APPEARING ON THIS LIST",!,"WILL HAVE A DUE-OUT EQUAL TO ZERO."
 D END^PRCPUREP
Q K ^TMP($J,"PRCPWDOR") D ^%ZISC
 Q
