VALMPT1 ; alb/jer(slc),mjk - Post-Init for XQOR Routines ; 3/30/93
 ;;1;List Manager;;Aug 13, 1993
XQOR ; Conditionally installs XQOR*
 N DIE,DIF,X,XCN,XCNP,VALMI,VALMX,VALMTO,VALMFR
 K ^UTILITY("VALMLOAD",$J)
 S X="XQOR" X ^%ZOSF("TEST")
 I $T S XCNP=0,DIF="^UTILITY(""VALMLOAD"",$J," X ^%ZOSF("LOAD")
 I $D(^UTILITY("VALMLOAD",$J,2,0)),($P(^(0),";",3)'<6.7) K ^UTILITY("VALMLOAD",$J) G XQORQ
 K ^UTILITY("VALMLOAD",$J)
 W !!,">>> Installing XQOR* routines from VALMXQ* routines..."
 S VALMI=0 F VALMI=1:1 S VALMX=$T(ROU+VALMI) Q:VALMX["$END"  D
 .S VALMTO=$P(VALMX,";",3),VALMFR=$P(VALMX,";",4)
 .S X=VALMFR,XCNP=0,DIF="^UTILITY(""VALMLOAD"",$J," X ^%ZOSF("LOAD")
 .S X=VALMTO,XCN=4,DIE="^UTILITY(""VALMLOAD"",$J," X ^%ZOSF("SAVE") K ^UTILITY("VALMLOAD",$J) W !?5,VALMTO,"...filed"
XQORQ Q
 ;
ROU ;
 ;;XQOR;VALMXQ01
 ;;XQOR1;VALMXQ02
 ;;XQOR2;VALMXQ03
 ;;XQOR3;VALMXQ04
 ;;XQOR4;VALMXQ05
 ;;XQORD;VALMXQ06
 ;;XQORD1;VALMXQ07
 ;;XQORM;VALMXQ08
 ;;XQORM1;VALMXQ09
 ;;XQORM2;VALMXQ10
 ;;XQORM3;VALMXQ11
 ;;XQORM4;VALMXQ12
 ;;XQORM5;VALMXQ13
 ;;XQORMX;VALMXQ14
 ;;XQORO;VALMXQ15
 ;;$END
