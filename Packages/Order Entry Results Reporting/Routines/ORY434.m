ORY434 ;ISL/JLC - ENVIRONMENT CHECK FOR CPRS VERSION 31A ;06/27/17
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**434**;Dec 17, 1997;Build 35
 ;
 ;
 Q
POST ;;SET THE MOB DLL VERSION
 ;D PUT^XPAR("PKG","OR MOB DLL VERSION",1,"2.0.17.0")
 D PUT^XPAR("PKG","OR MOB DLL NAME",1,"OrderCom.dll")
 I $$PATCH^XPDUTL("SD*5.3*671") D ADD^XPDPROT("OR EVSEND SD","SD RECEIVE OR","",1)
 N TEXT
 S TEXT(1)=" "
 S TEXT(2)="  Adding 'Clinic Scheduling' Display Group to"
 S TEXT(3)="  the 'All Services' Display Group..."
 D MES^XPDUTL(.TEXT)
 D SETDG
 D MES^XPDUTL("  DONE")
 S TEXT(1)=" "
 S TEXT(2)="  Adding 'Clinic Scheduling' Display Group to"
 S TEXT(3)="  parameter 'ORWOR CATEGORY SEQUENCE'..."
 D MES^XPDUTL(.TEXT)
 D SETPAR
 D MES^XPDUTL("  DONE")
 ;SEND NEW NOTIFICATION
 N ENT,EXIT,INST,ORMSG,LINE,ORI
 D BMES^XPDUTL("  Loading parameter values for new notification...")
 S ENT="PKG.ORDER ENTRY/RESULTS REPORTING"
 S ORI=91 D  S EXIT=0
 . F LINE=1:1 Q:$G(EXIT)  D
 .. N TEXT,ORERROR
 .. S TEXT=$P($T(PARAM+LINE),";;",2)
 .. S INST=$P($G(^ORD(100.9,ORI,0)),U,1)
 .. I $P(TEXT," ")="ORB" D  Q
 ... D EN^XPAR(ENT,$P(TEXT,U),INST,$P(TEXT,U,2),.ORERROR)  ;ICR #2336
 ... I +ORERROR D
 .... S ORMSG(1)=" ",EXIT=2
 .... S ORMSG(2)="ERROR: Unable to configure the new "_INST_" notification"
 .... S ORMSG(3)="Kernel Parameter Tools Error #"_+ORERROR_": "_$P(ORERROR,U,2)
 .... D BMES^XPDUTL(.ORMSG)
 .. I TEXT="" S EXIT=1
 D:$G(EXIT)<2 MES^XPDUTL("  Finished loading new notification values")
 Q
PARAM ;PARAMETER VALUES TO LOAD
 ;;ORB ARCHIVE PERIOD^30
 ;;ORB DELETE MECHANISM^Individual Recipient
 ;;ORB FORWARD BACKUP REVIEWER^0
 ;;ORB FORWARD SUPERVISOR^0
 ;;ORB FORWARD SURROGATES^0
 ;;ORB PROCESSING FLAG^Disabled
 ;;ORB PROVIDER RECIPIENTS^O
 ;;ORB URGENCY^High
 Q
SETDG ;
 N DA,DIC,DLAYGO,ORDG,X
 S ORDG=$O(^ORD(100.98,"B","ALL SERVICES",0)) Q:'ORDG
 S X=$O(^ORD(100.98,"B","CLINIC SCHEDULING",0)),DA(1)=ORDG I 'X D MES^XPDUTL("  'Clinic Scheduling' display group not found") Q
 I $O(^ORD(100.98,DA(1),1,"B",X,0)) D MES^XPDUTL("  Display group already attached")  Q  ;not first install - done.
 S:'$D(^ORD(100.98,DA(1),1,0)) ^(0)="^100.981P^^"
 S DIC="^ORD(100.98,"_DA(1)_",1,",DIC(0)="NLX",DLAYGO=100.98
 S X="CLINIC SCHEDULING" D ^DIC
 Q
SETPAR ;
 N X
 I '$D(^ORD(100.98,"B","CLINIC SCHEDULING")) D MES^XPDUTL("  Display group already attached") Q
 S X=0,X=$O(^ORD(100.98,"B","CLINIC SCHEDULING",X)) Q:'X  D
 . D PUT^XPAR("PKG","ORWOR CATEGORY SEQUENCE",135,X)
 Q
SENDDLG(ANAME) ;Entries from 101.41 to send
 ;I ANAME="OR GTX CLINIC LOCATION" Q 1
 I ANAME="OR GTX SD COMMENT" Q 1
 I ANAME="OR GTX APPT NUM" Q 1
 I ANAME="OR GTX SCH INTERVAL" Q 1
 I ANAME="OR GTX PRE REQ" Q 1
 I ANAME="SD RTC" Q 1
 Q 0
