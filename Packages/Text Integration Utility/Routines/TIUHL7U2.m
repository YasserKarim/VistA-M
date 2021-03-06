TIUHL7U2 ; SLC/AJB - TIUHL7 Utilities; March 23, 2005 ; 3/20/17 4:58pm
 ;;1.0;TEXT INTEGRATION UTILITIES;**200,312**;Jun 20, 1997;Build 3
 ; Per VA Directive 6402, this routine should not be modified.
 Q
MAKEADD(TIUDADD,TIUDA,TIUX,SUPPRESS) ; Create addendum
 N DIE,DR,DA,DIC,X,Y,DLAYGO,TIUATYP,TIUCAN,TIUFPRIV,TIU S TIUFPRIV=1
 N PTIEN,SUCCESS
 S TIUCAN=$$CANDO^TIULP(TIUDA,"MAKE ADDENDUM",$G(PERSON))
 I TIUCAN'>0 S TIUDADD=TIUCAN Q
 S TIUATYP=+$$WHATITLE^TIUPUTU("ADDENDUM")
 S (DIC,DLAYGO)=8925,DIC(0)="L",X=""""_"`"_TIUATYP_""""
 D ^DIC
 S TIUDADD=+Y
 I +Y'>0 S TIUDADD=TIUDADD_"^Could not create addendum." Q
 D GETTIU^TIULD(.TIU,TIUDA)
 S TIU("DOCTYP")=TIUATYP_U_$$PNAME^TIULC1(TIUATYP)
 S PTIEN=$P(^TIU(8925,TIUDA,0),U,2)
 D STUFREC^TIUSRVP1(+TIUDADD,.TIUX,PTIEN,+$G(TIUDA),TIUATYP,.TIU)
 K ^TIU(8925,+TIUDADD,"TEMP")
 M ^TIU(8925,+TIUDADD,"TEMP")=TIUX("TEXT") K TIUX("TEXT")
 D SETXT0^TIUSRVP(+TIUDADD)
 D FILE^TIUSRVP(.SUCCESS,+TIUDADD,.TIUX,+$G(SUPPRESS))
 I +SUCCESS'>0 D DIK^TIURB2(TIUDADD) S TIUDADD="-1^Could not create addendum." Q
 I +$O(^TIU(8925,+TIUDADD,"TEMP",0)) D MERGTEXT^TIUEDI1(+TIUDADD,.TIU)
 I '+$G(SUPPRESS) D RELEASE^TIUT(+TIUDADD,1)
 K ^TIU(8925,+TIUDADD,"TEMP")
 Q
DOCPRM(TIUTYP,TIUDPRM,TIUDA) ; Get Document Parameters, support inheritance
 N TIUI,TIUDAD
 S (TIUDPRM(0),TIUDPRM(5))=""
 I $P($G(^TIU(8925.1,+TIUTYP,0)),U)["ADDENDUM",+$G(TIUDA) S TIUTYP=+$G(^TIU(8925,+$P($G(^TIU(8925,+TIUDA,0)),U,6),0))
 S TIUI=+$O(^TIU(8925.95,"B",+TIUTYP,0))
 I +TIUI D  Q
 . S TIUDPRM(0)=$G(^TIU(8925.95,+TIUI,0))
 . I +$O(^TIU(8925.95,+TIUI,5,0)) D
 . . N TIUJ S TIUJ=0
 . . F  S TIUJ=$O(^TIU(8925.95,+TIUI,5,TIUJ)) Q:+TIUJ'>0  D
 . . . S $P(TIUDPRM(5),U,TIUJ)=+$G(^TIU(8925.95,+TIUI,5,+TIUJ,0))
 . . S TIUJ=0
 . . F  S TIUJ=$O(^TIU(8925.95,+TIUI,4,TIUJ)) Q:+TIUJ'>0  D
 . . . S $P(TIUDPRM(4),U,TIUJ)=+$G(^TIU(8925.95,+TIUI,4,+TIUJ,0))
 S TIUDAD=$O(^TIU(8925.1,"AD",+TIUTYP,0))
 I +TIUDAD D DOCPRM(TIUDAD,.TIUDPRM)
 Q
ES(DA,TIUES,TIUI,TIUESIG) ; ^DIE call for /es/
 N SIGNER,DR,DIE,ESDT,TIUSTAT,TIUSTNOW,COSIGNER,SVCHIEF,CSREQ,TIUPRINT
 N CSNEED,TIUTTL,TIUPSIG,TIUDPRM,DAO,TIUSTWAS,TIUSTIS,DAORIG,TIUCHNG
 S TIUSTWAS=$P($G(^TIU(8925,DA,0)),U,5) S:'+$G(TIUESIG) TIUESIG=DUZ
 D DOCPRM^TIULC1(+$G(^TIU(8925,+DA,0)),.TIUDPRM,DA)
 S TIUSTAT=$P($G(^TIU(8925,+DA,0)),U,5),ESDT=$$NOW^TIULC
 S SVCHIEF=+$$ISA^USRLM(TIUESIG,"CLINICAL SERVICE CHIEF")
 S SIGNER=$P(^TIU(8925,+DA,12),U,4),COSIGNER=$P(^(12),U,8),CSREQ=0
 S CSNEED=+$P($G(^TIU(8925,+DA,15)),U,6)
 I +CSNEED,(TIUESIG'=COSIGNER),'+$G(SVCHIEF),(TIUSTAT'=6) S CSREQ=1
 I TIUSTAT=5 D
 . S DR=".05////"_$S(+CSREQ:6,1:7)_";1501////"_ESDT_";1502////"_+TIUESIG
 . I '+$G(CSREQ),+CSNEED,$S(TIUESIG=COSIGNER:1,+$G(SVCHIEF):1,1:0) D
 . . S DR=DR_";1506////0;1507////"_ESDT_";1508////"_+TIUESIG_";1509///^S X=$P(TIUES,U,2);1510///^S X=$P(TIUES,U,3);1511////E"
 I TIUSTAT=6 S DR=".05////7;1506////0;1507////"_ESDT_";1508////"_+TIUESIG
 Q:'$D(DR)
 ;Patch TIU*1.0*312 write removed from next line - W:'$D(XWBOS) "."
 S DIE=8925 D ^DIE
 I TIUSTAT=5 S DR="1503///^S X=$P(TIUES,U,2);1504///^S X=$P(TIUES,U,3);1505////E"
 I TIUSTAT=6 D
 . N TIUSBY S DR="",TIUSBY=$P($G(^TIU(8925,+DA,15)),U,2)
 . I +TIUSBY>0 S DR="1503///^S X=$$SIGNAME^TIULS("_TIUSBY_");1504///^S X=$$SIGTITL^TIULS("_TIUSBY_");"
 . S DR=$G(DR)_"1509///^S X=$P(TIUES,U,2);1510///^S X=$P(TIUES,U,3);1511////E"
 ;Patch TIU*1.0*312 write removed from next line - W:'$D(XWBOS) "."
 S DIE=8925 D ^DIE S:'+$G(TIUCHNG) TIUCHNG=1
 D SEND^TIUALRT(DA),SIGNIRT^TIUDIRT(+DA)
 S DAORIG=DA
 I +$$ISADDNDM^TIULC1(DA) S DA=+$P($G(^TIU(8925,+DA,0)),U,6)
 I +$G(CSREQ)'>0 D MAIN^TIUPD(DA,"S") I 1
 ;If 'Credit Stop Code on Completion' is Yes - *312 clear flag
 ;Patch TIU*1.0*312 interactive code skipped 
 I +$P(^TIU(8925,+DA,0),U,11) D REMFLAG^TIUVSIT(+DA)
 ;PATCH TIU*1.0*312 Skipping the following code. Replaced with the 
 ;above line of code - this routine is not an interactive routine.
 ;There should be no reason that this is called by interactive
 ;processing but I've left the code here commented out just in case.
 ;FYI: ES^TIUHL7U2 was copied from ES^TIURS when it was developed
 ;I +$P(^TIU(8925,+DA,0),U,11) D
 ;. ;If workload does not exist, process using TIU's interview otherwise
 ;. ;process as an edit using PCE's interview
 ;. I '$$CHKVST^TIUPXAP2(+DA) D  I 1
 ;. . N TIUCONT,TIUPRMT
 ;. . Q:$D(XWBOS)
 ;. . I $P(+$P(^TIU(8925,+DA,0),U,7),".")>DT D  Q
 ;. . . W !!
 ;. . . D QUE^TIUPXAP1
 ;. . . W:$$READ^TIUU("EA","Press RETURN to continue...") ""
 ;. . W !!
 ;. . ;Check if workload should be entered
 ;. . I $$CHKWKL^TIUPXAP2(+DA,.TIUDPRM) D CREDIT^TIUVSIT(DA)
 ;. E  D
 ;. . ;Check if workload should be entered
 ;. . I $$CHKWKL^TIUPXAP2(+DA,.TIUDPRM) D EDTENC^TIUPXAP2(DA)
 ;. D REMFLAG^TIUVSIT(+DA)
 ;
 ;If document does not have a visit and docmt is associated with
 ;an event type visit or call is invoked by broker, check if
 ;docmt can be linked to an existing visit or try and create a new
 ;visit. (P179)
 I $D(^TIU(8925,+DA,0)),$P(^(0),U,3)'>0,($P(^(0),U,13)="E"!($$BROKER^XWBLIB)) D
 . N D0,DFN,TIU,TIUVSIT
 . ;Try to link docmt to an existing visit, quit if successful
 . I $$LNKVST^TIUPXAP3(DA,.TIUVSIT) Q
 . ;Otherwise set TIU array and DFN to use TIU API which calls PCE
 . ;to resolve multiple visits or creates a new visit
 . D GETTIU^TIULD(.TIU,DA)
 . S DFN=$P($G(^TIU(8925,+DA,0)),U,2)
 . D QUE^TIUPXAP1
 ; post-signature action
 N TIUCONS S TIUCONS=-1
 D ISCNSLT^TIUCNSLT(.TIUCONS,+$G(^TIU(8925,DA,0)))
 I TIUCONS S DA=DAORIG
 S TIUSTIS=$P($G(^TIU(8925,DA,0)),U,5)
 S TIUTTL=+$G(^TIU(8925,+DA,0)),TIUPSIG=$$POSTSIGN^TIULC1(TIUTTL)
 I +$L(TIUPSIG),'+$G(CSREQ) X TIUPSIG
 I TIUCONS,TIUSTIS=7,TIUSTWAS<7,$$HASKIDS^TIUSRVLI(DA) D
 . N SEQUENCE,TIUKIDS,TIUINT,TIUK
 . S SEQUENCE="D",TIUKIDS="TIUKIDS",TIUINT=0,TIUK=0
 . D SETKIDS^TIUSRVLI(TIUKIDS,DA,TIUINT)
 . F  S TIUK=$O(TIUKIDS(TIUK)) Q:'TIUK  D
 . . I $P(TIUKIDS(TIUK),U,7)="completed" X TIUPSIG
 Q
STRIP(X) ; Strip control characters
 N I,Y
 ; First replace TABS w/5 spaces
 F I=1:1:$L(X) S:$A(X,I)=9 X=$E(X,1,(I-1))_"     "_$E(X,(I+1),$L(X))
 ; Next, remove control characters
 S Y="" F I=1:1:$L(X) S:$A(X,I)>31 Y=Y_$E(X,I)
 Q Y
