GMRAPHR0 ;HIRMFO/WAA-THIS PROGRAM WILL DISPLAY ALL PHARM FOR A PATIENT ;4/12/17  14:44
 ;;4.0;Adverse Reaction Tracking;**7,54**;Mar 29, 1996;Build 5
DISP ;DISPLAY ALL THE DRUGS FOR THIS PATIENT
 K ^UTILITY("PSG",$J),^UTILITY("PSIV",$J)
 S GMRAPHRV=+$$VERSION^XPDUTL("PSO"),GMRAPHRG=$S(GMRAPHRV<6:"^UTILITY(",1:"^TMP(")
 K @(GMRAPHRG_"""PSOO"",$J)"),GMRARRAY
 S GMRACT=1,GMRACH=1
 S DFN=+GMRAPA(0)
 N GMRAFNVA S GMRAFNVA=0 ;54
 D DT Q:GMRAOUT
 S GMRALOOK=1,GMRADATA=0
 S X="PSOHCSUM" X ^%ZOSF("TEST") S:'$T GMRADATA=GMRADATA+1 I $T S PSOBEGIN=+$P($P(GMRABGDT,U),".") D ^PSOHCSUM
 S X="PSJEEU0" X ^%ZOSF("TEST") S:'$T GMRADATA=GMRADATA+100 I $T S PSJEDT=GMRABGDT D ENHS^PSJEEU0
 S GMRACT=1
 S GMRAY="" F GMRAX=0:0 S GMRAY=$O(@(GMRAPHRG_"""PSOO"",$J,GMRAY)")) Q:GMRAY=""  D
 .I GMRAY="NVA" S GMRAFNVA=1 Q  ;54
 .S GMRAZ=$G(@(GMRAPHRG_"""PSOO"",$J,GMRAY,0)"))
 .I $P(GMRAZ,U)'>$P(GMRAENDT,U) D
 ..S GMRADRG="OP"_U_$P($P(GMRAZ,U,3),";",2)_U_$G(@(GMRAPHRG_"""PSOO"",$J,GMRAY,1)"))_U_$P(GMRAZ,U,2)
 ..S GMRARRAY("PH",GMRACT)=GMRADRG,GMRACT=GMRACT+1
 ..Q
 .Q
 S GMRAY="" F GMRAX=0:0 S GMRAY=$O(^UTILITY("PSG",$J,GMRAY)) Q:GMRAY=""  D
 .S GMRAZ=$G(^UTILITY("PSG",$J,GMRAY))
 .I $P(GMRAZ,U,2)'<GMRABGDT,$P(GMRAZ,U)'>GMRAENDT D
 ..S GMRADRG="D"_U_$P($P(GMRAZ,U,3),";",2)_U_$P(GMRAZ,U,6)_U_$P($P(GMRAZ,U,7),";",2)_U_$P($P(GMRAZ,U,8),";",2)_U_$P(GMRAZ,U,1,2)
 ..S GMRARRAY("PH",GMRACT)=GMRADRG,GMRACT=GMRACT+1
 ..Q
 .Q
 S GMRAY="" F GMRAX=0:0 S GMRAY=$O(^UTILITY("PSIV",$J,GMRAY)) Q:GMRAY=""  D
 .S GMRAZ=$G(^UTILITY("PSIV",$J,GMRAY,0))
 .I $P(GMRAZ,U,2)'<GMRABGDT,$P(GMRAZ,U)'>GMRAENDT D
 ..S GMRADRG(1)=GMRAZ,GMRAZ=0 F  S GMRAZ=$O(^UTILITY("PSIV",$J,GMRAY,"A",GMRAZ)) Q:GMRAZ<1  D
 ...S GMRADRG="IV"_U_$P($P(^UTILITY("PSIV",$J,GMRAY,"A",GMRAZ),U),";",2)_U_$P(^(GMRAZ),U,2)
 ...S GMRADRG=GMRADRG_U_$P(GMRADRG(1),U,5,6)_U_$P(GMRADRG(1),U,1,2)
 ...S GMRARRAY("PH",GMRACT)=GMRADRG,GMRACT=GMRACT+1
 ...Q
 ..Q
 .Q
DISP2 W @IOF,!,"PHARMACY:",?60,"Start/Last",!
 W ?3,"Drug",?61,"Fill DT",?71,"Stop Date"
 I '$D(GMRARRAY("PH")) W !,?5,"THERE AREN'T ANY RXS ON FILE FOR THIS PATIENT" Q
 F GMRACH=GMRACH:1 Q:'$D(GMRARRAY("PH",GMRACH))  D  Q:GMRAOUT
 .I $Y+3>IOSL D  Q:GMRAOUT
 ..F  W !,"Press RETURN to continue, ""^"" to exit: " R X:DTIME S:'$T X="^^" S:"^^"[X GMRAOUT=$L(X) Q:("^^"[X)  W !,?4,$C(7),"PRESS RETURN TO CONTINUE OR ""^"" TO EXIT THIS LISTING"
 ..Q:GMRAOUT
 ..W @IOF,!,"PHARMACY:",?60,"Start/Last",!,?3,"Drug",?61,"Fill DT",?71,"Stop Date"
 ..Q
 .S GMRADRG=GMRARRAY("PH",GMRACH)
 .I $P(GMRADRG,U)="OP" D
 ..W !,GMRACH,?3,"(O) ",$E($P(GMRADRG,U,2),1,50)
 ..W ?61,$$FMTE^XLFDT($P(GMRADRG,U,4),2)
 ..W !,?3,$P(GMRADRG,U,3)
 ..Q
 .I $P(GMRADRG,U)="D" D
 ..W !,GMRACH,?3,$E($P(GMRADRG,U,2),1,54)
 ..W ?61,$$FMTE^XLFDT($P(GMRADRG,U,6),2)
 ..W ?71,$$FMTE^XLFDT($P(GMRADRG,U,7),2)
 ..W !,?3,$P(GMRADRG,U,3)," ",$P(GMRADRG,U,4)," ",$P(GMRADRG,U,5)
 ..Q
 .I $P(GMRADRG,U)="IV" D
 ..W !,GMRACH,?3,$E($P(GMRADRG,U,2),1,54)
 ..W ?61,$$FMTE^XLFDT($P(GMRADRG,U,6),2)
 ..W ?71,$$FMTE^XLFDT($P(GMRADRG,U,7),2)
 ..W !,?3,$P(GMRADRG,U,3)," IV ",$P(GMRADRG,U,4)," ",$P(GMRADRG,U,5)
 ..Q
 .Q
 I GMRAFNVA D  ;54
 .W !,"There are Non-VA Meds on this patient's profile. Please review for possible" ;54 
 .W !,"manual inclusion in this report.",! ;54
 .Q  ;54
 K ^UTILITY("PSG",$J),^UTILITY("PSIV",$J),@(GMRAPHRG_"""PSOO"",$J)")
 Q
DT ;SELECT LOOKUP DATE RANGE
 I GMRALOOK Q
 I '$D(GMRABGDT) S (GMRABGDT,GMRAENDT)=""
 W !
 S X1=$S(GMRABGDT'="":+GMRABGDT,1:GMRADT),X2=0 D C^%DTC S Y=(X*10000\1/10000) D D^DIQ
 S %DT("A")="View DRUG from: ",%DT("B")=Y,%DT="AETP" D ^%DT K %DT S:X="^" GMRAOUT=2 Q:+Y<1  S GMRABGDT=+Y D D^DIQ S $P(GMRABGDT,U,2)=Y
 S X1=$S(GMRAENDT'="":+GMRAENDT,1:GMRADT),X2=0 D C^%DTC S Y=(X*10000\1/10000) D D^DIQ S %DT("A")="To: ",%DT("B")=Y,%DT="AETP",%DT(0)=+GMRABGDT D ^%DT K %DT S:X="^" GMRAOUT=2 Q:Y<1
 S GMRAENDT=+Y S:'$P(GMRAENDT,".",2) GMRAENDT=GMRAENDT+.24 D D^DIQ S $P(GMRAENDT,U,2)=Y
 Q
DTFOR ;SET THE FORMAT OF DATE TIME TO MM/DD/YY@TIME
 Q:Y<1
 S GMRATEMP=$$DATE^GMRAUTL1(Y)
 S GMRATEMP=$E(GMRATEMP,4,5)_"/"_$E(GMRATEMP,6,7)_"/"_$E(GMRATEMP,2,3)
 I $P(Y,"@",2)'="" S GMRATEMP=GMRATEMP_"@"_$P(Y,"@",2)
 S Y=GMRATEMP K GMRATEMP
 Q
