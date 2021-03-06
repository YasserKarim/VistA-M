OCXDI01N ;SLC/RJS,CLA - OCX PACKAGE DIAGNOSTIC ROUTINES ;SEP 7,1999 at 10:30
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**32**;Dec 17,1997
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
S ;
 ;
 D DOT^OCXDIAG
 ;
 ;
 K REMOTE,LOCAL,OPCODE,REF
 F LINE=1:1:500 S TEXT=$P($T(DATA+LINE),";",2,999) Q:TEXT  I $L(TEXT) D  Q:QUIT
 .S ^TMP("OCXDIAG",$J,$O(^TMP("OCXDIAG",$J,"A"),-1)+1)=TEXT
 ;
 G ^OCXDI01O
 ;
 Q
 ;
DATA ;
 ;
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC FREE TEXT LENGTH IS GREATER THAN
 ;;EOR^
 ;;KEY^863.9:^FREE TEXT LENGTH INC. BETWEEN
 ;;R^"863.9:",.01,"E"
 ;;D^FREE TEXT LENGTH INC. BETWEEN
 ;;R^"863.9:",.02,"E"
 ;;D^FREE TEXT
 ;;R^"863.9:",.03,"E"
 ;;D^GCC FREE TEXT LENGTH IS INCLUSIVELY BETWEEN
 ;;R^"863.9:",.04,"E"
 ;;D^LENGTH IS INCLUSIVELY BETWEEN
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO GENERATE CODE FUNCTION
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC FREE TEXT LENGTH IS INCLUSIVELY BETWEEN
 ;;EOR^
 ;;KEY^863.9:^FREE TEXT LENGTH LESS THAN
 ;;R^"863.9:",.01,"E"
 ;;D^FREE TEXT LENGTH LESS THAN
 ;;R^"863.9:",.02,"E"
 ;;D^FREE TEXT
 ;;R^"863.9:",.03,"E"
 ;;D^GCC FREE TEXT LENGTH IS LESS THAN
 ;;R^"863.9:",.04,"E"
 ;;D^LENGTH IS LESS THAN
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO GENERATE CODE FUNCTION
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC FREE TEXT LENGTH IS LESS THAN
 ;;EOR^
 ;;KEY^863.9:^FREE TEXT MATCHES PATTERN
 ;;R^"863.9:",.01,"E"
 ;;D^FREE TEXT MATCHES PATTERN
 ;;R^"863.9:",.02,"E"
 ;;D^FREE TEXT
 ;;R^"863.9:",.03,"E"
 ;;D^GCC FREE TEXT MATCHES PATTERN
 ;;R^"863.9:",.04,"E"
 ;;D^MATCHES THE PATTERN
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO GENERATE CODE FUNCTION
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC FREE TEXT MATCHES PATTERN
 ;;EOR^
 ;;KEY^863.9:^FREE TEXT NULL
 ;;R^"863.9:",.01,"E"
 ;;D^FREE TEXT NULL
 ;;R^"863.9:",.02,"E"
 ;;D^FREE TEXT
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO NULL VALUE ALLOWED
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^1
 ;;EOR^
 ;;KEY^863.9:^FREE TEXT PRECEDES
 ;;R^"863.9:",.01,"E"
 ;;D^FREE TEXT PRECEDES
 ;;R^"863.9:",.02,"E"
 ;;D^FREE TEXT
 ;;R^"863.9:",.03,"E"
 ;;D^GCC FREE TEXT PRECEDES ALPHABETICALLY
 ;;R^"863.9:",.04,"E"
 ;;D^PRECEDS ALPHABETICALLY
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO GENERATE CODE FUNCTION
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC FREE TEXT PRECEDES ALPHABETICALLY
 ;;EOR^
 ;;KEY^863.9:^FREE TEXT STARTS WITH
 ;;R^"863.9:",.01,"E"
 ;;D^FREE TEXT STARTS WITH
 ;;R^"863.9:",.02,"E"
 ;;D^FREE TEXT
 ;;R^"863.9:",.03,"E"
 ;;D^GCC FREE TEXT STARTS WITH
 ;;R^"863.9:",.04,"E"
 ;;D^STARTS WITH
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO GENERATE CODE FUNCTION
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC FREE TEXT STARTS WITH
 ;;R^"863.9:","863.92:1",.01,"E"
 ;;D^BEGINS WITH
 ;;EOR^
 ;;KEY^863.9:^NUMERIC EQUALS
 ;;R^"863.9:",.01,"E"
 ;;D^NUMERIC EQUALS
 ;;R^"863.9:",.02,"E"
 ;;D^NUMERIC
 ;;R^"863.9:",.03,"E"
 ;;D^GCC NUMERIC EQUALS
 ;;R^"863.9:",.04,"E"
 ;;D^IS EQUAL TO
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO GENERATE CODE FUNCTION
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC NUMERIC EQUALS
 ;;EOR^
 ;;KEY^863.9:^NUMERIC EXCLUSIVELY BETWEEN
 ;;R^"863.9:",.01,"E"
 ;;D^NUMERIC EXCLUSIVELY BETWEEN
 ;;R^"863.9:",.02,"E"
 ;;D^NUMERIC
 ;;R^"863.9:",.03,"E"
 ;;D^GCC NUMERIC EXCLUSIVELY BETWEEN
 ;;R^"863.9:",.04,"E"
 ;;D^IS EXCLUSIVELY BETWEEN
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO GENERATE CODE FUNCTION
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC NUMERIC EXCLUSIVELY BETWEEN
 ;;EOR^
 ;;KEY^863.9:^NUMERIC GREATER THAN
 ;;R^"863.9:",.01,"E"
 ;;D^NUMERIC GREATER THAN
 ;;R^"863.9:",.02,"E"
 ;;D^NUMERIC
 ;;R^"863.9:",.03,"E"
 ;;D^GCC NUMERIC GREATER THAN
 ;;R^"863.9:",.04,"E"
 ;;D^IS GREATER THAN
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO GENERATE CODE FUNCTION
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC NUMERIC GREATER THAN
 ;;EOR^
 ;;KEY^863.9:^NUMERIC INCLUSIVELY BETWEEN
 ;;R^"863.9:",.01,"E"
 ;;D^NUMERIC INCLUSIVELY BETWEEN
 ;;R^"863.9:",.02,"E"
 ;;D^NUMERIC
 ;;R^"863.9:",.03,"E"
 ;;D^GCC NUMERIC INCLUSIVELY BETWEEN
 ;;R^"863.9:",.04,"E"
 ;;D^IS INCLUSIVELY BETWEEN
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO GENERATE CODE FUNCTION
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC NUMERIC INCLUSIVELY BETWEEN
 ;;EOR^
 ;;KEY^863.9:^NUMERIC LESS THAN
 ;;R^"863.9:",.01,"E"
 ;;D^NUMERIC LESS THAN
 ;;R^"863.9:",.02,"E"
 ;;D^NUMERIC
 ;;R^"863.9:",.03,"E"
 ;;D^GCC NUMERIC LESS THAN
 ;;R^"863.9:",.04,"E"
 ;;D^IS LESS THAN
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO GENERATE CODE FUNCTION
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC NUMERIC LESS THAN
 ;;EOR^
 ;;KEY^863.9:^POINTER EXISTS
 ;;R^"863.9:",.01,"E"
 ;;D^POINTER EXISTS
 ;;R^"863.9:",.02,"E"
 ;;D^POINTER TO A FILEMAN FILE
 ;;EOR^
 ;;KEY^863.9:^TRUE
 ;;R^"863.9:",.01,"E"
 ;;D^TRUE
 ;;R^"863.9:",.02,"E"
 ;;D^BOOLEAN
 ;;EOR^
 ;;KEY^863.9:^LOGICAL TRUE
 ;;R^"863.9:",.01,"E"
 ;;D^LOGICAL TRUE
 ;;R^"863.9:",.02,"E"
 ;;D^BOOLEAN
 ;;R^"863.9:",.03,"E"
 ;;D^GCC BOOLEAN LOGICAL TRUE
 ;;R^"863.9:",.04,"E"
 ;;D^IS TRUE
 ;;R^"863.9:","863.91:1",.01,"E"
 ;;D^OCXO GENERATE CODE FUNCTION
 ;;R^"863.9:","863.91:1",1,"E"
 ;;D^GCC BOOLEAN LOGICAL TRUE
 ;;R^"863.9:","863.92:1",.01,"E"
 ;;D^TRUE
 ;;EOR^
 ;;KEY^863.9:^LOGICAL FALSE
 ;;R^"863.9:",.01,"E"
 ;;D^LOGICAL FALSE
 ;;R^"863.9:",.02,"E"
 ;;D^BOOLEAN
 ;;R^"863.9:",.03,"E"
 ;;D^GCC BOOLEAN LOGICAL FALSE
 ;1;
 ;
