IB20PT48 ;ALB/CPM - List Template Exporter ; 21-MAR-1994
 ;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
 W !,"'IBT EXPAND/EDIT COMMUNICATIONS' List Template..."
 S DA=$O(^SD(409.61,"B","IBT EXPAND/EDIT COMMUNICATIONS",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="IBT EXPAND/EDIT COMMUNICATIONS" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="IBT EXPAND/EDIT COMMUNICATIONS^1^^80^5^18^1^1^Communication^IBTRCD  MENU^Expanded Insurance Reviews^1^^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""IBTRCD"",$J)"
 .S ^SD(409.61,VALM,"FNL")="D EXIT^IBTRCD"
 .S ^SD(409.61,VALM,"HDR")="D HDR^IBTRCD"
 .S ^SD(409.61,VALM,"HLP")="D HELP^IBTRCD"
 .S ^SD(409.61,VALM,"INIT")="D INIT^IBTRCD"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'IBT EXPAND/EDIT DENIALS' List Template..."
 S DA=$O(^SD(409.61,"B","IBT EXPAND/EDIT DENIALS",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="IBT EXPAND/EDIT DENIALS" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="IBT EXPAND/EDIT DENIALS^1^^80^5^18^1^1^Appeal/Denial^IBTRDD  MENU^Expanded Appeals/Denials^1^^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""IBTRDD"",$J)"
 .S ^SD(409.61,VALM,"FNL")="D EXIT^IBTRDD"
 .S ^SD(409.61,VALM,"HDR")="D HDR^IBTRDD"
 .S ^SD(409.61,VALM,"HLP")="D HELP^IBTRDD"
 .S ^SD(409.61,VALM,"INIT")="D INIT^IBTRDD"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'IBT EXPAND/EDIT REVIEW' List Template..."
 S DA=$O(^SD(409.61,"B","IBT EXPAND/EDIT REVIEW",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="IBT EXPAND/EDIT REVIEW" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="IBT EXPAND/EDIT REVIEW^1^^80^5^18^1^1^Review^IBTRVD  MENU^Expanded Hospital Reviews^1^^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""IBTRVD"",$J)"
 .S ^SD(409.61,VALM,"FNL")="D EXIT^IBTRVD"
 .S ^SD(409.61,VALM,"HDR")="D HDR^IBTRVD"
 .S ^SD(409.61,VALM,"HLP")="D HELP^IBTRVD"
 .S ^SD(409.61,VALM,"INIT")="D INIT^IBTRVD"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'IBT EXPAND/EDIT TRACKING' List Template..."
 S DA=$O(^SD(409.61,"B","IBT EXPAND/EDIT TRACKING",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="IBT EXPAND/EDIT TRACKING" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="IBT EXPAND/EDIT TRACKING^1^^80^5^18^1^1^Episode^IBTRED  MENU^Expanded Claims Tracking Entry^1^^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""IBTRED"",$J)"
 .S ^SD(409.61,VALM,"COL",0)="^409.621"
 .S ^SD(409.61,VALM,"FNL")="D EXIT^IBTRED"
 .S ^SD(409.61,VALM,"HDR")="D HDR^IBTRED"
 .S ^SD(409.61,VALM,"HLP")="D HELP^IBTRED"
 .S ^SD(409.61,VALM,"INIT")="D INIT^IBTRED"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 W !,"'IBT REVIEW EDITOR' List Template..."
 S DA=$O(^SD(409.61,"B","IBT REVIEW EDITOR",0)),DIK="^SD(409.61," D ^DIK:DA
 K DO,DD S DIC(0)="L",DIC="^SD(409.61,",X="IBT REVIEW EDITOR" D FILE^DICN S VALM=+Y
 I VALM>0 D
 .S ^SD(409.61,VALM,0)="IBT REVIEW EDITOR^1^^132^5^17^1^1^Review^IBTRV  MENU^Hospital Reviews^2^^1"
 .S ^SD(409.61,VALM,1)="^VALM HIDDEN ACTIONS"
 .S ^SD(409.61,VALM,"ARRAY")=" ^TMP(""IBTRV"",$J)"
 .S ^SD(409.61,VALM,"COL",0)="^409.621^10^10"
 .S ^SD(409.61,VALM,"COL",1,0)="NUMBER^1^4"
 .S ^SD(409.61,VALM,"COL",2,0)="RV DATE^5^11^Review Date"
 .S ^SD(409.61,VALM,"COL",3,0)="TYPE^20^9^Type^^1"
 .S ^SD(409.61,VALM,"COL",4,0)="STATUS^41^8^Status"
 .S ^SD(409.61,VALM,"COL",5,0)="SPEC^52^11^Specialty"
 .S ^SD(409.61,VALM,"COL",6,0)="DAY^64^3^Day"
 .S ^SD(409.61,VALM,"COL",7,0)="NEXT^69^11^Next Review"
 .S ^SD(409.61,VALM,"COL",8,0)="WARD^31^7^Ward"
 .S ^SD(409.61,VALM,"COL",9,0)="BED^90^10^Room-bed"
 .S ^SD(409.61,VALM,"COL",10,0)="RV REASON^104^24^Reason for Review"
 .S ^SD(409.61,VALM,"COL","AIDENT",1,3)=""
 .S ^SD(409.61,VALM,"FNL")="D EXIT^IBTRV"
 .S ^SD(409.61,VALM,"HDR")="D HDR^IBTRV"
 .S ^SD(409.61,VALM,"HLP")="D HELP^IBTRV"
 .S ^SD(409.61,VALM,"INIT")="D INIT^IBTRV"
 .S DA=VALM,DIK="^SD(409.61," D IX1^DIK K DA,DIK
 .W "Filed."
 ;
 K DIC,DIK,VALM,X,DA Q
