PRSEDESC ; FILE DESCRIPTION FOR EDUCATION TRACKING FILES
 ;;4.0;PAID;;Sep 21, 1995
 F PRSE=452,452.1,452.2,452.3,452.4,452.5,452.51,452.6,452.7,452.8,452.9 I $D(^DIC(PRSE)) D WRITE
 Q
WRITE W !!,$P(^DIC(PRSE,0),U)_" "_PRSE F X=0:0 S X=$O(^DIC(210,"%D",X)) Q:X'>0  I $D(^DIC(PRSE,"%D",X,0)) W !,^(0)
 Q
