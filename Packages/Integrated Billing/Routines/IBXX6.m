IBXX6 ; COMPILED XREF FOR FILE #399.042 ; 02/23/18
 ; 
 S DA=0
A1 ;
 I $D(DIKILL) K DIKLM S:DIKM1=1 DIKLM=1 G @DIKM1
0 ;
A S DA=$O(^DGCR(399,DA(1),"RC",DA)) I DA'>0 S DA=0 G END
1 ;
 S DIKZ(0)=$G(^DGCR(399,DA(1),"RC",DA,0))
 S X=$P($G(DIKZ(0)),U,2)
 I X'="" D 22^IBCU2
 S X=$P($G(DIKZ(0)),U,2)
 I X'="" D
 .N DIK,DIV,DIU,DIN
 .K DIV S DIV=X,D0=DA(1),DIV(0)=D0,D1=DA,DIV(1)=D1 S Y(0)=X S X=+$G(IBMAED) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"RC",D1,0)):^(0),1:"") S X=$P(Y(1),U,16),X=X S DIU=X K Y S X=DIV S X=1 X ^DD(399.042,.02,1,2,2.4)
 S DIKZ(0)=$G(^DGCR(399,DA(1),"RC",DA,0))
 S X=$P($G(DIKZ(0)),U,3)
 I X'="" D 32^IBCU2
 S X=$P($G(DIKZ(0)),U,4)
 I X'="" S DGXRF=2 D TC^IBCU2 K DGXRF
 S X=$P($G(DIKZ(0)),U,5)
 I X'="" K ^DGCR(399,DA(1),"RC","ABS",$E(X,1,30),+^DGCR(399,DA(1),"RC",DA,0),DA)
 S X=$P($G(DIKZ(0)),U,6)
 I X'="" K ^DGCR(399,"ASC1",$E(X,1,30),DA(1),DA)
 S X=$P($G(DIKZ(0)),U,6)
 I X'="" K ^DGCR(399,"ASC2",DA(1),$E(X,1,30),DA)
 S X=$P($G(DIKZ(0)),U,7)
 I X'="" K ^DGCR(399,"ASC1",+$P(^DGCR(399,DA(1),"RC",DA,0),U,6),DA(1),DA)
 S X=$P($G(DIKZ(0)),U,7)
 I X'="" K ^DGCR(399,"ASC2",DA(1),+$P(^DGCR(399,DA(1),"RC",DA,0),U,6),DA)
 S X=$P($G(DIKZ(0)),U,10)
 I X'="" D
 .N DIK,DIV,DIU,DIN
 .K DIV S DIV=X,D0=DA(1),DIV(0)=D0,D1=DA,DIV(1)=D1 S Y(1)=$S($D(^DGCR(399,D0,"RC",D1,0)):^(0),1:"") S X=$P(Y(1),U,11),X=X S DIU=X K Y S X="" X ^DD(399.042,.1,1,1,2.4)
 S X=$P($G(DIKZ(0)),U,10)
 I X'="" D
 .N DIK,DIV,DIU,DIN
 .X ^DD(399.042,.1,1,2,2.3) I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"RC",D1,0)):^(0),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y S X="" S DIH=$G(^DGCR(399,DIV(0),"RC",DIV(1),0)),DIV=X S $P(^(0),U,15)=DIV,DIH=399.042,DIG=.15 D ^DICR
 S DIKZ(0)=$G(^DGCR(399,DA(1),"RC",DA,0))
 S X=$P($G(DIKZ(0)),U,11)
 I X'="" D
 .N DIK,DIV,DIU,DIN
 .K DIV S DIV=X,D0=DA(1),DIV(0)=D0,D1=DA,DIV(1)=D1 S Y(0)=X S X=X'="" I X S X=DIV S Y(1)=$S($D(^DGCR(399,D0,"RC",D1,0)):^(0),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y S X="" X ^DD(399.042,.11,1,1,2.4)
 S DIKZ(0)=$G(^DGCR(399,DA(1),"RC",DA,0))
 S X=$P($G(DIKZ(0)),U,15)
 I X'="" K ^DGCR(399,DA(1),"RC","ACP",$E(X,1,30),DA)
 S X=$P($G(DIKZ(0)),U,1)
 I X'="" K ^DGCR(399,DA(1),"RC","B",$E(X,1,30),DA)
 S X=$P($G(DIKZ(0)),U,1)
 I X'="" I $P(^DGCR(399,DA(1),"RC",DA,0),U,5) K ^DGCR(399,DA(1),"RC","ABS",$P(^DGCR(399,DA(1),"RC",DA,0),U,5),$E(X,1,30),DA)
CR1 S DIXR=53
 K X
 S X(1)=$P(DIKZ(0),U,1)
 S X(2)=$P(DIKZ(0),U,15)
 S X=$G(X(1))
 I $G(X(1))]"" D
 . K X1,X2 M X1=X,X2=X
 . S:$D(DIKIL) (X2,X2(1),X2(2))=""
 . I X(2)'=""&'$D(^TMP("IBCRRX",$J)) D DELPR^IBCU1(DA(1),X(2))
CR2 K X
 G:'$D(DIKLM) A Q:$D(DIKILL)
END G ^IBXX7
