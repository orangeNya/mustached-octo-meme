jQuery(document).ready(function(){jQuery("#show_ukagaka").click(function(){if(jQuery("#ukagaka").is(":hidden")){mpu_showrobot(500);mpu_setCookie("mpuRobot","show",86400)}else{mpu_hiderobot(500);mpu_setCookie("mpuRobot","hidden",86400)}});jQuery("#show_msg").click(function(){if(jQuery("#ukagaka_msg").is(":hidden")){mpu_showmsg(500);mpu_setCookie("mpuMsg","show",86400)}else{mpu_hidemsg(500);mpu_setCookie("mpuMsg","hidden",86400)}});jQuery("#ukagaka_img").click(function(){if(jQuery("#ukagaka_msg").is(":hidden"))mpu_showmsg(500);
else mpuClick=="next"?mpu_nextmsg():mpu_hidemsg(500)});jQuery("#mpu_extend").click(function(){jQuery.ajax({type:"GET",url:mpuurl+"/?action=mpu_extend",cache:false,dataType:"html",contentType:"application/json; charset=utf-8",beforeSend:function(){document.body.style.cursor="wait";if(jQuery("#ukagaka").is(":hidden"))mpu_showrobot(500);else jQuery("#ukagaka_msg").is(":hidden")||mpu_hidemsg(200)},success:function(a){mpu_showmsg(500);jQuery("#ukagaka_msg").html(a);document.body.style.cursor="auto"},error:function(){mpu_showmsg(500);
jQuery("#ukagaka_msg").html("Oops, failed to load data.");document.body.style.cursor="auto"}})})});
function mpuMoe(a){if(!a)return false;var b="";if(a=="(:next)")mpu_nextmsg();else if(a!="(:previous)")if(a=="(:showmsg)")mpu_showmsg(500);else if(a=="(:hidemsg)")mpu_hidemsg(500);else if(a=="(:showrobot)")mpu_showrobot(500);else if(a=="(:hiderobot)")mpu_hiderobot(500);else if(a.replace(/\(:msg\[/,"")!=a){b=a.replace(/\(:msg\[/,"");b=b.replace(/\)\]/,"");b=parseInt(b,10);if(!isNaN(b)){var d="",c=eval("("+mpu_quotdecode(document.getElementById("ukagaka_msglist").innerHTML)+")");b=b*1-1;d=c.msg==null?
"":c.msg[b]?c.msg[b]+c.auto_msg:c.msg[0];mpu_beforemsg(500);mpu_showmsg(500);setTimeout(function(){jQuery("#ukagaka_msg").html(mpu_HTMLdecode(d))},510,"JavaScript")}}else{c=eval("("+mpu_quotdecode(document.getElementById("ukagaka_msglist").innerHTML)+")");mpu_beforemsg(500);mpu_showmsg(500);setTimeout(function(){jQuery("#ukagaka_msg").html(mpu_HTMLdecode(a+c.auto_msg))},510,"JavaScript")}}
function mpuChange(a){a?jQuery.ajax({type:"GET",url:mpuurl+"/?action=mpu_change&mpu_num="+a,cache:false,dataType:"json",contentType:"application/json; charset=utf-8",beforeSend:function(b){document.body.style.cursor="wait";mpu_hidemsg(90);setTimeout(function(){mpu_hiderobot(500)},90,"JavaScript")},success:function(b){jQuery("#cur_ukagaka").attr("src",b.shell);jQuery("#cur_ukagaka").attr("alt",b.name);jQuery("#cur_ukagaka").attr("title",b.name);jQuery("#ukagaka_msg").html(mpu_HTMLdecode(b.msg));jQuery("#ukagaka_num").html(b.num);
jQuery("#ukagaka_msgnum").html("0");jQuery("#ukagaka_msglist").html(b.msglist);mpu_showrobot(500);mpu_showmsg(500);document.body.style.cursor="auto"},error:function(b){mpu_showrobot(500);mpu_showmsg(500);jQuery("#ukagaka_msg").html("Oops, failed to load data.");document.body.style.cursor="auto"}}):jQuery.ajax({type:"GET",url:mpuurl+"/?action=mpu_change",cache:false,dataType:"html",contentType:"application/json; charset=utf-8",beforeSend:function(b){document.body.style.cursor="wait";mpu_hidemsg(500)},
success:function(b){jQuery("#ukagaka_msg").html(b);mpu_showmsg(500);document.body.style.cursor="auto"},error:function(b){mpu_showmsg(500);jQuery("#ukagaka_msg").html("Oops, failed to load data.");document.body.style.cursor="auto"}})}
function mpu_nextmsg(){mpu_hidemsg(500);setTimeout(function(){var a="",b=0;b=document.getElementById("ukagaka_msgnum").innerHTML;a=document.getElementById("ukagaka_msglist").innerHTML;a=mpu_quotdecode(a);a=eval("("+a+")");b=b*1+1>a.msgall*1?0:b*1+1;a=a.msg==null?"":mpu_HTMLdecode(a.msg[b]+a.auto_msg);jQuery("#ukagaka_msg").html(a);jQuery("#ukagaka_msgnum").html(b);mpu_showmsg(500)},500,"JavaScript")}
function mpu_beforemsg(a){a||(a=500);if(jQuery("#ukagaka").is(":hidden"))mpu_showrobot(a);else jQuery("#ukagaka_msg").is(":hidden")||mpu_hidemsg(a)}function mpu_showrobot(a){a||(a=500);jQuery("#show_ukagaka").html(mpuInfo.robot[1]);jQuery("#ukagaka").fadeIn(a)}function mpu_hiderobot(a){a||(a=500);jQuery("#show_ukagaka").html(mpuInfo.robot[0]);jQuery("#ukagaka").fadeOut(a)}function mpu_showmsg(a){a||(a=500);jQuery("#show_msg").html(mpuInfo.msg[1]);jQuery("#ukagaka_msgbox").fadeIn(a)}
function mpu_hidemsg(a){a||(a=500);jQuery("#show_msg").html(mpuInfo.msg[0]);jQuery("#ukagaka_msgbox").fadeOut(a)}function mpu_setCookie(a,b,d){var c=new Date;c.setTime(c.getTime()+d);document.cookie=a+"="+escape(b)+";expires="+c.toGMTString()}function mpu_getCookie(a){a=document.cookie.match(new RegExp("(^| )"+a+"=([^;]*)(;|$)"));if(a!=null)return unescape(a[2]);return null}
function mpu_delCookie(a){var b=new Date;b.setTime(b.getTime()-1);var d=mpu_getCookie(a);if(d!=null)document.cookie=a+"="+d+";expires="+b.toGMTString()}function mpu_HTMLencode(a){var b="";if(a.length==0)return"";b=a.replace(/&/g,"&gt;");b=b.replace(/</g,"&lt;");b=b.replace(/>/g,"&gt;");b=b.replace(/ /g,"&nbsp;");b=b.replace(/\'/g,"&#39;");return b=b.replace(/\"/g,"&quot;")}
function mpu_HTMLdecode(a){var b="";if(a.length==0)return"";b=a.replace(/&amp;/g,"&");b=b.replace(/&lt;/g,"<");b=b.replace(/&gt;/g,">");b=b.replace(/&nbsp;/g," ");b=b.replace(/&#39;/g,"'");return b=b.replace(/$quot;/g,'"')}function mpu_quotdecode(a){var b="";if(a.length==0)return"";return b=a.replace(/quot;/g,'\\"')};