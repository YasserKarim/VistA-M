PRCPL ; List Template Exporter ; 28-FEB-1995
 ;;5.0;IFCAP;;4/21/95
 W !,"'PRCP DIST ORDER CC/IK CHECK' List Template..."
 S DA=$O(^SD(409.61,"B","PRCP DIST ORDER CC/IK CHECK",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="PRCP DIST ORDER CC/IK CHECK" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="PRCP DIST ORDER CC/IK CHECK^1^^80^6^16^1^1^Check CC/IK Items^PRCP CC/IK CHECK ITEMS MENU^Check CC/IK Items^2^^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP($J,""PRCPOPER"")"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^5^5"
 .S ^SD(409.61,VALM,"COL",1,0)="ITEM^2^40^ITEM DESCRIPTION^H^0"
 .S ^SD(409.61,VALM,"COL",2,0)="UNIT^46^2^UI"
 .S ^SD(409.61,VALM,"COL",3,0)="ORDERED^50^10^QTY ORDER"
 .S ^SD(409.61,VALM,"COL",4,0)="ONHAND^70^10^QTY ONHAND"
 .S ^SD(409.61,VALM,"COL",5,0)="CONV^60^10^CONVFACT"
 .S ^SD(409.61,VALM,"COL","AIDENT",0,1)=""
 .S ^SD(409.61,VALM,"FNL")="D EXIT^PRCPOPEC"
 .S ^SD(409.61,VALM,"HDR")="D HDR^PRCPOPL"
 .S ^SD(409.61,VALM,"INIT")="D INIT^PRCPOPEC"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'PRCP DIST ORDER CC/IK POSTING' List Template..."
 S DA=$O(^SD(409.61,"B","PRCP DIST ORDER CC/IK POSTING",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="PRCP DIST ORDER CC/IK POSTING" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="PRCP DIST ORDER CC/IK POSTING^1^1^80^6^18^1^1^Post CC/IK Items^PRCP CC/IK POSTING MENU^CC or IK Item Posting^2^^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP($J,""PRCPOPPC"")"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^7^6"
 .S ^SD(409.61,VALM,"COL",1,0)="ITEM^2^40^ITEM DESCRIPTION^H^0"
 .S ^SD(409.61,VALM,"COL",2,0)="ORDERED^50^10^ORDERED^H"
 .S ^SD(409.61,VALM,"COL",3,0)="RETURNED^60^10^RETURNED^R"
 .S ^SD(409.61,VALM,"COL",5,0)="POSTING^70^10^TO POST^HR"
 .S ^SD(409.61,VALM,"COL",6,0)="UNIT^46^2^UI"
 .S ^SD(409.61,VALM,"COL",7,0)="REUSABLE^44^1^R"
 .S ^SD(409.61,VALM,"COL","AIDENT",0,1)=""
 .S ^SD(409.61,VALM,"FNL")="D EXIT^PRCPOPPC"
 .S ^SD(409.61,VALM,"HDR")="D HDR^PRCPOPPC"
 .S ^SD(409.61,VALM,"HLP")=""
 .S ^SD(409.61,VALM,"INIT")="D BUILD^PRCPOPPC"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'PRCP DIST ORDER CHECK ITEMS' List Template..."
 S DA=$O(^SD(409.61,"B","PRCP DIST ORDER CHECK ITEMS",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="PRCP DIST ORDER CHECK ITEMS" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="PRCP DIST ORDER CHECK ITEMS^1^^80^6^16^1^1^Check Distribution Order/Items^PRCP CHECK ORDER MENU^Check Distribution Order/Items^2^^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP($J,""PRCPOPER"")"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^5^5"
 .S ^SD(409.61,VALM,"COL",1,0)="ITEM^2^40^ITEM DESCRIPTION^H"
 .S ^SD(409.61,VALM,"COL",2,0)="UNIT^46^2^UI"
 .S ^SD(409.61,VALM,"COL",3,0)="ORDERED^50^10^QTY ORDER"
 .S ^SD(409.61,VALM,"COL",4,0)="CONV^60^10^CONVFACT"
 .S ^SD(409.61,VALM,"COL",5,0)="ONHAND^70^10^QTY ONHAND"
 .S ^SD(409.61,VALM,"FNL")="D EXIT^PRCPOPER"
 .S ^SD(409.61,VALM,"HDR")="D HDR^PRCPOPL"
 .S ^SD(409.61,VALM,"INIT")="D INIT^PRCPOPER"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'PRCP DIST ORDER PROCESSING' List Template..."
 S DA=$O(^SD(409.61,"B","PRCP DIST ORDER PROCESSING",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="PRCP DIST ORDER PROCESSING" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="PRCP DIST ORDER PROCESSING^1^^80^6^18^1^1^Distribution Order Processing^PRCP DIST ORDER PROCESSING^Distribution Order Processing^2^^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP($J,""PRCPOP"")"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^5^5"
 .S ^SD(409.61,VALM,"COL",1,0)="ITEM^2^40^ITEM DESCRIPTION^H"
 .S ^SD(409.61,VALM,"COL",2,0)="UNIT^46^2^UI"
 .S ^SD(409.61,VALM,"COL",3,0)="ORDERED^50^10^ORDERED"
 .S ^SD(409.61,VALM,"COL",4,0)="CONV^60^10^CONVFACT"
 .S ^SD(409.61,VALM,"COL",5,0)="ONHAND^70^10^QTY ONHAND"
 .S ^SD(409.61,VALM,"FNL")="D EXIT^PRCPOPL"
 .S ^SD(409.61,VALM,"HDR")="D HDR^PRCPOPL"
 .S ^SD(409.61,VALM,"INIT")="D INIT^PRCPOPL"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 G ^PRCPL1
