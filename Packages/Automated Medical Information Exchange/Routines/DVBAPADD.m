DVBAPADD ;ALB/JLU;adds new disability codes to file 31
 ;;2.7;AMIE;;Apr 10, 1995
EN ;start of routine
 I +$$VERSION^DVBAPST1>2.59 DO  Q
 .S VAR=" - Version 2.6 of AMIE has already been loaded."
 .D BUMPBLK^DVBAPOST
 .D BUMPBLK^DVBAPOST
 .D BUMP^DVBAPOST(VAR)
 .W !!,VAR
 .S VAR="There is no need to update the Disability Condition file."
 .D BUMP^DVBAPOST(VAR)
 .W !,VAR,!
 .D BUMPBLK^DVBAPOST
 .Q
 S JCNT=0
 N LP,LP1
 S VAR="Adding to the Disability Condition file."
 W !!,VAR,!
 D BUMPBLK^DVBAPOST
 D BUMPBLK^DVBAPOST
 D BUMP^DVBAPOST(VAR)
 D BUMPBLK^DVBAPOST
 F LP=1:1 S LP1=$T(TXT+LP) Q:LP1=""  DO
 .S DCODE=$P(LP1,";;",2)
 .S DTEXT=$P(DCODE,";",2)
 .S DCODE=$P(DCODE,";",1)
 .I $L(DTEXT)>45 S DTEXT=$E(DTEXT,1,45)
 .K JSTOP
 .D CHK
 .I $D(JSTOP) Q
 .S DIC="^DIC(31,",DIC("DR")="2///"_DCODE,X=DTEXT,DLAYGO=31,DIC(0)="L"
 .K DD,DO
 .D FILE^DICN
 .K DO,DD,DLAYGO
 .I +Y>0 S JCNT=JCNT+1 W "."
 .I +Y<0 D ERR
 .Q
 S VAR="Additions to the Disability Condition file (31) has finished.  "_JCNT_" were added."
 W !!,VAR
 D BUMPBLK^DVBAPOST
 D BUMPBLK^DVBAPOST
 D BUMP^DVBAPOST(VAR)
 K DIC,JSTOP,JCNT,DLAYGO,X,DCODE,DTEXT
 Q
 ;
CHK ;checks for the existance of the codes in the c cross ref.
 I $D(^DIC(31,"C",DCODE)) S JSTOP=1
 I $D(^DIC(31,"B",$E(DTEXT,1,30))) S JSTOP=1
 I $D(JSTOP) DO
 .S VAR="Disability Condition "_DCODE_" was not added.  Entry already exists."
 .W !,VAR
 .D BUMPBLK^DVBAPOST
 .D BUMP^DVBAPOST(VAR)
 .Q
 Q
 ;
ERR ;not added
 S VAR="Not able to add Disability Condition "_DCODE_".  Consult the Install Guide."
 W !,VAR
 D BUMPBLK^DVBAPOST
 D BUMP^DVBAPOST(VAR)
 Q
 ;
TXT ;new exams to be added.
 ;;7532;RENAL TUBULAR DISORDERS
 ;;7533;CYSTIC DISEASES OF THE KIDNEYS
 ;;7534;ATHEROSCLEROTIC RENAL DISEASE
 ;;7535;TOXIC NEUROPATHY
 ;;7536;GLOMERULONEPHRITIS
 ;;7537;INTERSTITIAL NEPHRITIS
 ;;7538;PAPILLARY NECROSIS
 ;;7539;RENAL AMYLOID DISEASE
 ;;7540;DISSEMINATED INTRAVASCULAR COAGULATION WITH RENAL CORTICAL NECROSIS
 ;;7541;RENAL INVOLVEMENT IN DIABETES, SICKLE CELL ANEMIA, SYSTEMIC LUPUS ERYTHEMATOSUS, VASCULITIS OR OTHER SYSTEMIC DISEASE PROCESES
 ;;7542;NEUROGENIC BLADDER
 ;;9914;MAXILLA, LOSS OF MORE THAN HALF
 ;;9915;MAXILLA, LOSS OF HALF OR LESS
 ;;9916;MAXILLA, MALUNION OR NONUNION
