YSXRAK5 ; COMPILED XREF FOR FILE #615.34 ; 12/01/18
 ; 
 S DA=0
A1 ;
 I $D(DIKILL) K DIKLM S:DIKM1=1 DIKLM=1 G @DIKM1
0 ;
A S DA=$O(^YS(615.2,DA(1),5,DA)) I DA'>0 S DA=0 G END
1 ;
 S DIKZ(0)=$G(^YS(615.2,DA(1),5,DA,0))
 S X=$P($G(DIKZ(0)),U,1)
 I X'="" K ^YS(615.2,DA(1),5,"B",$E(X,1,30),DA)
 G:'$D(DIKLM) A Q:$D(DIKILL)
END G ^YSXRAK6
