XDRPTCAN ;SF-IRMFO/IHS/OHPRD/JCM/JLI ;5/30/97  10:28
 ;;7.3;TOOLKIT;**23**;Apr 25, 1995
 ;;
 ;
 ; Calls: EN^DIQ1
 ;
START ;
 K ^TMP("XDRD",$J,XDRFL),XDRDCAN
 Q:$P(^DPT(XDRCD,0),U,19)
 D VALUE
 I $E(XDRDCAN(2,XDRCD,.09,"I"),1,5)="00000" Q
 D NAME
 D SSN
 D DOB
END D EOJ
 Q
 ;
VALUE ;
 S DA=XDRCD K XDRCD S XDRCD=DA
 N XDRI F XDRI=0:0 S XDRI=$O(XDRDSCOR("DR",XDRI)) Q:XDRI'>0  D
 . S DIC=XDRI,DA=XDRCD,DIQ(0)="I",DIQ="XDRDCAN",DR=XDRDSCOR("DR",XDRI)
 . D EN^DIQ1 K DIC,DR,DIQ
 . M XDRCD=XDRDCAN K DA
 Q
 ;
NAME ;
 G:XDRDCAN(XDRFL,XDRCD,.01,"I")']"" NAMEX
 F  Q:XDRDCAN(XDRFL,XDRCD,.01,"I")'["MERGING INTO"  S XDRDCAN(XDRFL,XDRCD,.01,"I")=$P(XDRDCAN(XDRFL,XDRCD,.01,"I"),"(",2,99),XDRDCAN(XDRFL,XDRCD,.01,"I")=$E(XDRDCAN(XDRFL,XDRCD,.01,"I"),1,$L(XDRDCAN(XDRFL,XDRCD,.01,"I"))-1)
 S XDRDCAN("NAME")=XDRDCAN(XDRFL,XDRCD,.01,"I")
 S XDRDCAN("LNAME&FI")=$P(XDRDCAN("NAME"),",",1)_","_$E($P(XDRDCAN("NAME"),",",2),1)_"AAA"
 S XDRDCAN("BNAME")=XDRDCAN("LNAME&FI")
 F I=0:0 S XDRDCAN("BNAME")=$O(^DPT("B",XDRDCAN("BNAME"))) Q:XDRDCAN("BNAME")=""!(($P(XDRDCAN("NAME"),",",1)_","_$E($P(XDRDCAN("NAME"),",",2),1))'=($P(XDRDCAN("BNAME"),",",1)_","_$E($P(XDRDCAN("BNAME"),",",2),1)))  D
 . S XDRDCAN("FIND")=XDRCD
 . F  S XDRDCAN("FIND")=$O(^DPT("B",XDRDCAN("BNAME"),XDRDCAN("FIND"))) Q:XDRDCAN("FIND")'>0  S ^TMP("XDRD",$J,XDRFL,XDRDCAN("FIND"))=""
 . ;S:$O(^DPT("B",XDRDCAN("BNAME"),""))'=XDRCD ^TMP("XDRD",$J,XDRFL,$O(^DPT("B",XDRDCAN("BNAME"),"")))=""
 . Q
NAMEX Q
 ;
SSN ;Get patients with same last four digits of ssn
 I XDRDCAN(XDRFL,XDRCD,.09,"I")']"" S ^XTMP("XDRERR","BADSSN",XDRCD)="" G SSNX
 I XDRDCAN(XDRFL,XDRCD,.09,"I")'?9N.E S ^XTMP("XDRERR","BADSSN",XDRCD)="" G SSNX
 S XDRDCAN("SSN")=XDRDCAN(XDRFL,XDRCD,.09,"I")
 S XDRDCAN("L4SSN")=$E(XDRDCAN("SSN"),6,9)
 S XDRDCAN("BL4SSN")=XDRCD
 F %=0:0 S XDRDCAN("BL4SSN")=$O(^DPT("BS",XDRDCAN("L4SSN"),XDRDCAN("BL4SSN"))) Q:'XDRDCAN("BL4SSN")  S ^TMP("XDRD",$J,XDRFL,XDRDCAN("BL4SSN"))=""
 ;
 ; Check SSNS with same first five digits
 ; Commented out the following line, is not specific enough for IHS
 ; but would be useful for the VA
 ;
 ;S XDRDCAN("F5SSN")=$E(XDRDCAN("SSN"),1,5)_"0000",XDRDCAN("5SSN")=XDRDCAN("F5SSN") D
 ;. F %=0:0 S XDRDCAN("5SSN")=$O(^DPT("SSN",XDRDCAN("5SSN"))) Q:XDRDCAN("5SSN")'=+XDRDCAN("5SSN")!($E(XDRDCAN("5SSN"),1,5)'=$E(XDRDCAN("SSN"),1,5))  S ^TMP("XDRDCAN",$J,XDRFL,$O(^DPT("SSN",XDRDCAN("5SSN"),"")))=""
 ;. Q
SSNX Q
 ;
DOB ;Get patients with same date of birth
 G:XDRDCAN(XDRFL,XDRCD,.03,"I")']"" DOBX
 S XDRDCAN("DOB")=XDRDCAN(XDRFL,XDRCD,.03,"I")
 S XDRDCAN("BDOB")=XDRCD
 F %=0:0 S XDRDCAN("BDOB")=$O(^DPT("ADOB",XDRDCAN("DOB"),XDRDCAN("BDOB"))) Q:'XDRDCAN("BDOB")  S ^TMP("XDRD",$J,XDRFL,XDRDCAN("BDOB"))=""
 ;
 ;Transpose day of birth and get patients with same date of birth
 ;
 S XDRDCAN("TDOB")=$E(XDRDCAN("DOB"),1,5)_$E(XDRDCAN("DOB"),7)_$E(XDRDCAN("DOB"),6)
 S XDRDCAN("BDOB")=XDRCD
 F %=0:0 S XDRDCAN("BDOB")=$O(^DPT("ADOB",XDRDCAN("TDOB"),XDRDCAN("BDOB"))) Q:'XDRDCAN("BDOB")  S ^TMP("XDRD",$J,XDRFL,XDRDCAN("BDOB"))=""
DOBX Q
 ;
EOJ ;
 K XDRDCAN,%
 Q
