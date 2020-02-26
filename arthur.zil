;"***************************************************************************"
; "game : Arthur"
; "file : ARTHUR.ZIL"
; "auth :   $Author:   DEB  $"
; "date :     $Date:   11 May 1989  3:46:30  $"
; "rev  : $Revision:   1.9  $"
; "vers : 1.0"
;"---------------------------------------------------------------------------"
; "Compile/Load file"
; "Copyright (C) 1989 Infocom, Inc.  All rights reserved."
;"***************************************************************************"

<IFFLAG (IN-ZILCH <PRINC "Compiling">)
	(T <PRINC "Loading">)>

<PRINC ": King Arthur, by Challenge, Inc.
">

<SETG ZDEBUGGING? <>>
<DEFINE DEBUG-CODE ('X "OPTIONAL" ('Y T))
	<COND (,ZDEBUGGING? .X)
	      (ELSE .Y)>>

<ASK-FOR-PICTURE-FILE?>
<PICFILE "ARTHUR.MAC.1">
<PICFILE "ARTHUR.BWMAC.1">

<VERSION YZIP>
<ZIP-OPTIONS UNDO COLOR MOUSE DISPLAY>
<SETG NEW-PARSER? T>
<FREQUENT-WORDS?>
<LONG-WORDS?>
<ORDER-OBJECTS? ROOMS-FIRST>
<SET REDEFINE T>
<COMPILATION-FLAG P-BE-VERB T>

;"segments"

<DEFINE-SEGMENT STARTUP T TOWN>
<DEFINE-SEGMENT TOWN <>>
<DEFINE-SEGMENT TOWER <>>
<DEFINE-SEGMENT CASTLE <>>
<DEFINE-SEGMENT BOG <>>
<DEFINE-SEGMENT LAKE <>>
<DEFINE-SEGMENT OWL <>>
<DEFINE-SEGMENT DEMON <>>
<DEFINE-SEGMENT HINTS <>>

;"files"

<INSERT-FILE "DEFS">
<XFLOAD "~PARSER/PARSER.REST">

<INSERT-FILE "PICDEF">
 <INSERT-FILE "MACROS"> ;"0"
 <INSERT-FILE "MISC"> ;"0"
 <INSERT-FILE "SYNTAX"> ;"0"
 <INSERT-FILE "UTIL"> ;"0"
 <INSERT-FILE "VERBS"> ;"0"
 <INSERT-FILE "TRANSFRM"> ;"0"
 <IF-P-BE-VERB <INSERT-FILE "BE">> ;"0"
 <INSERT-FILE "FOOD"> ;"0"
 <INSERT-FILE "WINDOW"> ;"0"

 <INSERT-FILE "CELL"> ;"castle"
 <INSERT-FILE "BOAR"> ;"tower"
 <INSERT-FILE "SWORD"> ;"town"
 <INSERT-FILE "PASSWORD"> ;"castle"
 <INSERT-FILE "ENDGAME"> ;"lake"
 <INSERT-FILE "EEL"> ;"lake"
 <INSERT-FILE "BADGER"> ;"town"
 <INSERT-FILE "BASIL"> ;"demon"
<INSERT-FILE "DRAGON"> ;"demon"
<INSERT-FILE "RAVEN"> ;"tower"
<INSERT-FILE "CASTLE"> ;"castle"
<INSERT-FILE "REDNITE"> ;"lake"
<INSERT-FILE "LADY"> ;"lake"
<INSERT-FILE "FOREST"> ;"tower"
<INSERT-FILE "JOUST"> ;"tower"
<INSERT-FILE "DEMON"> ;"demon"
<INSERT-FILE "ICE-HOT"> ;"demon"
<INSERT-FILE "CHESTNUT"> ;"tower"
<INSERT-FILE "TOWER"> ;"tower"
<INSERT-FILE "BOG"> ;"bog"
<INSERT-FILE "LEPRCHAN"> ;"tower"
 <INSERT-FILE "MERLIN"> ;"town"
 <INSERT-FILE "TAVERN"> ;"town"
 <INSERT-FILE "KITCHEN"> ;"town"
 <INSERT-FILE "IKNIGHT"> ;"town"
 <INSERT-FILE "TOWN"> ;"town"
 <INSERT-FILE "IDIOT"> ;"town"
 <INSERT-FILE "CHURCH"> ;"town"
 <INSERT-FILE "PLACES"> ;"0"
 <INSERT-FILE "GLOBAL"> ;"0"
 <INSERT-FILE "~ZILLIB/CLUES"> ;"hints"
 <INSERT-FILE "HINTS"> ;"hints"

;"***************************************************************************"
; "end of file"
;"***************************************************************************"

