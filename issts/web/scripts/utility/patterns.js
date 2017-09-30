function showMsg(id,Msg)
{
  var idMsg=id+"Msg";
  if(Msg!=='')
  {
   jQuery('#'+idMsg+'').html("&nbsp;&nbsp;<font color='#B92500'>"+Msg+"...!</font>&nbsp;&nbsp;");
   jQuery('#'+id+'').focus();
  }else{
   jQuery('#'+idMsg+'').html("");
  }
}
//===============================================
var PATTERN_ALPHABETS = /^[a-zA-Z\.\ ]+$/;  /// OR  /^[a-zA-Z\s]*$/;
var PATTERN_ALPHABETS_OPT = /^[a-zA-Z\.\ ]*$/;
var PATTERN_ALPHA_NUMERIC = /^[0-9a-zA-Z\ ]+$/;
var PATTERN_ALPHA_NUMERIC_OPT= /^[0-9a-zA-Z\ ]*$/;

var PATTERN_NUMERIC = /^\d+$/;
var PATTERN_NUMERIC_OPT = /^\d*$/;
//var PATTERN_PERCENTAGE2D = /^\d+(\.\d{1,2})?$/;
var PATTERN_PERCENTAGE2D = /^\d{1,2}(?:\.\d{1,2})?$/;
var PATTERN_PERCENTAGE2D_OPT = /^(\d{1,2}(?:\.\d{1,2})?)?$/;
var PATTERN_PINCODE = /^([1-9]){1}([0-9]){5}$/;
var PATTERN_PINCODE_OPT = /^(([1-9]){1}([0-9]){5})?$/;
var PATTERN_MONEY = /^[1-9][0-9]{0,7}(\.?([0-9]){2})*$/;
var PATTERN_MONEY_OPT = /^([1-9][0-9]{0,7}(\.?([0-9]){2})*)?$/;


var PATTERN_MOBILE = /^([1-9]){1}([0-9]){9}$/;
var PATTERN_MOBILE_OPT = /^(([1-9]){1}([0-9]){9})*$/;
var PATTERN_LANDLINE = /^([0-9]){10}[0-9]?[0-9]?[0-9]?/;
var PATTERN_LANDLINE_OPT = /^(([0-9]){10}[0-9]?[0-9]?[0-9]?)?$/;
var PATTERN_EMAIL = /^[_A-Za-z0-9-]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})$/;
var PATTERN_EMAIL_OPT = /^([_A-Za-z0-9-]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,}))?$/;

//var PATTERN_DATE = /^[0-9]{1,2}\-\[0-9]{1,2}\-\[0-9]{4}$/;
//var PATTERN_DATE = /^(0[1-9]|[1-2][0-9]|3[0-1])-(0[1-9]|1[0-2])-[0-9]{4}$/;
//var PATTERN_DATE = /^(0[1-9]|[1-2][0-9]|3[0-1])-(0[1-9]|1[0-2])-([1-9]){1}([0-9]){3}$/;
var PATTERN_DATE = /^([1-9]){1}([0-9]){3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
var PATTERN_YEAR = /^([1-9]){1}([0-9]){3}$/;
var PATTERN_MONTH = /^(0[1-9]|1[0-2])$/;
var PATTERN_DAY = /^(0[1-9]|[1-2][0-9]|3[0-1])$/;
var PATTERN_TIME = /^(1[0-2]|0?[1-9]):[0-5][0-9] (AM|PM)$/;

var PATTERN_DATE_OPT = /^((0[1-9]|[1-2][0-9]|3[0-1])-(0[1-9]|1[0-2])-([1-9]){1}([0-9]){3})?$/;
var PATTERN_YEAR_OPT = /^(([1-9]){1}([0-9]){3})?$/;
var PATTERN_MONTH_OPT = /^((0[1-9]|1[0-2]))?$/;
var PATTERN_DAY_OPT = /^((0[1-9]|[1-2][0-9]|3[0-1]))?$/;

var PATTERN_GENDER = /^(M|F|X)$/;
var PATTERN_MARITALSTATUS = /^(M|U)$/;
var PATTERN_YESNO = /^(Y|N)$/;
var PATTERN_SCSTOBCGEN = /^(SC|ST|OBC|GEN)$/;
var PATTERN_DIVISION = /^(1st|2nd|3rd)$/;

var PATTERN_IPADDRESS = /(^[2][5][0-5].|^[2][0-4][0-9].|^[1][0-9][0-9].|^[0-9][0-9].|^[0-9].)([2][0-5][0-5].|[2][0-4][0-9].|[1][0-9][0-9].|[0-9][0-9].|[0-9].)([2][0-5][0-5].|[2][0-4][0-9].|[1][0-9][0-9].|[0-9][0-9].|[0-9].)([2][0-5][0-5]|[2][0-4][0-9]|[1][0-9][0-9]|[0-9][0-9]|[0-9])$/;

var PATTERN_MAX = /^.{1}$/;
var PATTERN_LENGTH = /^.{1,150}$/;

var PATTERN_FILE_IMG = /(\.jpg|\.png|\.JPG|\.PNG|\.jpeg|\.JPEG)$/;
var PATTERN_FILE_ENC = /(\.jpg|\.png|\.JPG|\.PNG|\.jpeg|\.JPEG|\.pdf|\.PDF)$/;

var PATTERN_BASIC_RESTRICTED_CHARACTER = /^([^<]|\<[^a-zA-Z])*[<]?$/;
var PATTERN_ALL_RESTRICTED_CHARACTER = /^([^\<\>\"\'\%\&]*)$/;
//var PATTERN_ALL_RESTRICTED_CHARACTER = /^([^\<\>\"\'\%\;\)\(\&\+]*)$/;

/** 
✓	abc…	Letters
✓	123…	Digits
✓	\d	any Digit
✓	.	any Character
✓	\.	Period
✓	[abc]	Only a, b, or c
➙	[^abc]	Not a, b, nor c
 	[a-z]	Characters a to z
 	[0-9]	Numbers 0 to 9
 	{m}	m Repetitions
 	{m,n}	m to n Repetitions
 	*	Zero or more repetitions
 	+	One or more repetitions
 	?	Optional
 	\s	any Whitespace
 	^…$	Starts and ends
 	()	capture Group
 	(a(bc))	capture Sub group
 	(.*)	capture Variable content
 	(a|b)	Matchs a or b
 	\w	any Alphanumeric character
 	\W	any Non-alphanumeric character
 	\d	any Digit
 	\D	any Non-digit character
 	\s	any Whitespace
 	\S	any Non-whitespace character

 */

//minified link
//http://closure-compiler.appspot.com/home