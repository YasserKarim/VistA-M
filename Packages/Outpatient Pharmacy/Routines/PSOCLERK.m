PSOCLERK ;BHAM ISC/SAB - look up user by user/DUZ number ; 11/09/92 13:11
 ;;7.0;OUTPATIENT PHARMACY;;DEC 1997
 W ! S DIC="^VA(200,",DIC("A")="Enter User Code: ",DIC(0)="AQN" D ^DIC G:"^"[X EX I Y<0 W !,"INVALID CLERK CODE" G PSOCLERK
 S PSOX=+Y W "    ",$P(^VA(200,PSOX,0),"^") G PSOCLERK
EX K DIC,X,Y Q