<%
set con=Server.CreateObject("adodb.connection") 
connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("score.mdb") 
con.Open connstr 

op=trim(request.querystring("op"))
if op="add_msg" then
set rs=server.createobject("adodb.recordset")
sql="select * from score"
rs.Open sql,con,1,3 
rs.addnew
rs("s_name")=request.form("username")
rs("s_score")=request.form("totalscore")
rs.update
rs.close
set rs=nothing
con.close
set con=nothing

end if
%>



<html>
<head>
    <title>������� | MAGI�ʴ�</title>
    <script src="jquery.textarearesizer.compressed.js"></script>
    <script src="ukagaka.js"></script>
    <link rel="stylesheet" type="text/css" href="mpu_style.css">
    <link rel="stylesheet" type="text/css" href="CSS.css">
</head>


<script language="javascript"> 
var a=new Array()
var lasting=0;
var i


function startTime()  
{  
    var today=new Date()  
    var h=today.getHours()  
    var m=today.getMinutes()  
    var s=today.getSeconds()//add a zero in front of numbers<10  
    m=checkTime(m)  
    s=checkTime(s)  
    document.getElementById('txt').innerHTML=h+":"+m+":"+s  
    t=setTimeout('startTime()',500)
    if(0<=h&&h<=12) 
        document.getElementById('time').innerHTML="���Ϻ�."
    if(12<=h&&h<=18) 
        document.getElementById('time').innerHTML="�����."
    if(18<=h&&h<=24) 
        document.getElementById('time').innerHTML="���Ϻ�." 
}  

 
function checkTime(i)  
{ 
    lasting++
    if(i<10)   
        i="0" + i  
    return i  
}  


for(i=0;i<13;i++)
{
    a[i]=0
}


function q1(obj) 
{
    a[0]= parseInt(obj.value)
}
function q2(obj) 
{
    a[1]= parseInt(obj.value)
}
function q3(obj) 
{
    a[2]= parseInt(obj.value)
}
function q4(obj) 
{
    a[3]= parseInt(obj.value)
}
function q5(obj) 
{
    a[4]= parseInt(obj.value)
}
function q6(obj) 
{
    a[5]= parseInt(obj.value)
}
function q7(obj) 
{
    a[6]= parseInt(obj.value)
}
function q8(obj) 
{
    a[7]= parseInt(obj.value)
}
function q9(obj) 
{
    a[8]= parseInt(obj.value)
}
function q10(obj) 
{
    a[9]= parseInt(obj.value)
}

var num_0=0
function q11(obj) 
{
    num_0= num_0+parseInt(obj.value)
    if(num_0==3)
        a[10]=1
}

var num_1=0
function q12(obj) 
{
    num_1= num_1+parseInt(obj.value)
    if(num_1==3)
       a[11]=1
}

function q13() 
{
    var str=document.vacuum.question13.value;
    if(str=="25.71")
        a[12]=1
}

function submit1() 
{
    var score=0
    var loop
    q13();
    for(loop=0;loop<13;loop++) 
    {
        score = score+a[loop]
     }
    document.transfer.totalscore.value=score
    alert("����ɵ�ʱ��Ϊ"+Math.floor(lasting/240)+"��"+Math.round(Math.floor(lasting/4)%60)+"�룬�����Ե���Ŀ������"+score)
    if(score<=3)
        window.open("result/normal.html","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400")
    if(score>=4 && score<=11)
        window.open("result/expert.html","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400")
    if(score>=12)
        window.open("result/master.html","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400")
    location.reload()
}
</script>














<body background="background.png" bgproperties=fixed onload="startTime()" >

    <div class="bg"></div> 
    <br>
    <div id="ibox">
     
    <div id="ibox01" class="testboxbg"></div>
    <div id="ibox02" class="testboxbg"></div>
    <div id="ibox03" class="testboxbg"></div>
    <div id="ibox04" class="testboxbg"></div>
    <div id="ibox05" class="testboxbg"></div>
    <div id="boxcon" class="testboxcon">
   

    <div style="overflow:hidden;width:700;height=100">  
        <h2><br></h2>
        <h1 align="center">MAGI�ʴ�</h1>
        <p align="center">��л����Ŀ��<a href="http://bangumi.tv" title="bangumi.tv">BGM</a>�ṩ��<br>���Է�Ϊ�����֣���һ����Ϊ��ѡ�⣬�ڶ�����Ϊ��ѡ�⣬��������Ϊ����⡣<br>���Ǽ�����߰����С����</p>
        <div align="center" id="time"></div>
        <div align="center" id="txt"></div>    
    </div>
        

    <div id="picture_0">
    </div> 


    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp1.EVANS����������</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question1" value="0" onclick="q1(this)">RYO<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question1" value="0" onclick="q1(this)">ESTi<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question1" value="1" onclick="q1(this)">DJ Yoshitaka<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question1" value="0" onclick="q1(this)">�س�ʫ��</p>
    </form>
    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp2.�������յķ�����ɫ��������һ�����������ȷ˳����</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question2" value="0" onclick="q2(this)">�����������̡�����ơ���<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question2" value="1" onclick="q2(this)">�ơ���������̡���������<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question2" value="0" onclick="q2(this)">�������̡������ơ������<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question2" value="0" onclick="q2(this)">�ס�����̡������ơ������</p>
    </form>
    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp3.(�|��)���������������޹ص�BGM�������</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question3" value="0" onclick="q3(this)">���֤�ɽ��Mysterious Mountain<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question3" value="0" onclick="q3(this)">�o�g��犡�Infinite Nightmare<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question3" value="0" onclick="q3(this)">�ե��`�륪�֥ե��`�� �� ��᤯��<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question3" value="1" onclick="q3(this)">�����σ������g�Ξ��</p>
    </form>
    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp4.120��Ԫϵ���У�������ƪ��Ů���ǹ�ϵΪ</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question4" value="1" onclick="q4(this)">����<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question4" value="0" onclick="q4(this)">����<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question4" value="0" onclick="q4(this)">ĸŮ<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question4" value="0" onclick="q4(this)">����ʶ</p>
    </form>
    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp5.�f���ƣ�Magic The Gathering���У������|Ч���������ڹ��􌦷���ҕr��______</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question5" value="0" onclick="q5(this)">���ܱ����<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question5" value="0" onclick="q5(this)">ֻ�ܱ��ɂ������������<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question5" value="0" onclick="q5(this)">�����������<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question5" value="1" onclick="q5(this)">������ɂ���������</p>
    </form>
    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp6.������Angel Beats!������Ҳȥ��Ծ��е�����TKӡ������Ȼ��ɫ�趨����������ã����Ǿ����������﷢��ȴ�ܱ�׼��ԭ����ʲô��</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question6" value="0" onclick="q6(this)">���������Ǹ��ص���������<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question6" value="0" onclick="q6(this)">���������Ǹ��ص���Ӣ����<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question6" value="0" onclick="q6(this)">���������Ǹ���Ӣ��Ѫ��<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question6" value="1" onclick="q6(this)">���������Ǹ�������Ѫ��</p>
    </form>
    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp7.���Ժ���������ڱ�_______׷���Ŀ����Ŀ�ѧ����</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question7" value="0" onclick="q7(this)">��������<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question7" value="1" onclick="q7(this)">��Ȫһ��<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question7" value="0" onclick="q7(this)">������ʵ����<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question7" value="0" onclick="q7(this)">������ϣ</p>
    </form>
    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp8.�����ĸ������ǰ������keyͬ�˵����ţ�</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question8" value="0" onclick="q8(this)">TYPE-MOON<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question8" value="0" onclick="q8(this)">KID<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question8" value="1" onclick="q8(this)">AUGUST<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question8" value="0" onclick="q8(this)">NEXTON</p>
    </form>
    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp9.TV STEINS;GATE �������ĸ���Ʒû��NETA��</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question9" value="0" onclick="q9(this)">DEATH NOTE<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question9" value="0" onclick="q9(this)">CHAOS HEAD<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question9" value="0" onclick="q9(this)">CLANNAD<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question9" value="1" onclick="q9(this)">K-ON</p>
    </form>
    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp10.���������Ρ�����Ŀ���ˎ��ڎ׼���ED��</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question10" value="0" onclick="q10(this)">��һ��<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question10" value="0" onclick="q10(this)">�ڶ���<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question10" value="0" onclick="q10(this)">������<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="question10" value="1" onclick="q10(this)">���ļ�</p>
    </form>






    </div>
    <div id="ibox05" class="testboxbg"></div>
    <div id="ibox04" class="testboxbg"></div>
    <div id="ibox03" class="testboxbg"></div>
    <div id="ibox02" class="testboxbg"></div> 
    <div id="ibox01" class="testboxbg"></div>



    <br>

    <div id="ibox01" class="testboxbg"></div>
    <div id="ibox02" class="testboxbg"></div>
    <div id="ibox03" class="testboxbg"></div>
    <div id="ibox04" class="testboxbg"></div>
    <div id="ibox05" class="testboxbg"></div>
    <div id="boxcon" class="testboxcon2">
    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp11.G���ϵ�ħ���õ��������ĸ������ҵ�����</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="question11" value="1" onclick="q11(this)">�±���<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="question11" value="1" onclick="q11(this)">�ŵ¶���<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="question11" value="1" onclick="q11(this)">�ͺ�<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="question11" value="0" onclick="q11(this)">Ī����</p>
    </form>
    <form name="magi" 
method="post">
    <h3>&nbsp&nbsp12.�����Ă����ם����ŵı��Lѩɽ�fģʽ����С�f����Ӌ���������󥷥ƥߥ롹�������������x�����~����</h3>
    <p>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="question12" value="1" onclick="q12(this)">����Q��<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="question12" value="1" onclick="q12(this)">���O�z��<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="question12" value="1" onclick="q12(this)">��ҹ����<br>
       &nbsp&nbsp&nbsp&nbsp&nbsp<input type="checkbox" name="question12" value="0" onclick="q12(this)">��������</p>
    </form>
    </p>

    </div>
    <div id="ibox05" class="testboxbg"></div>
    <div id="ibox04" class="testboxbg"></div>
    <div id="ibox03" class="testboxbg"></div>
    <div id="ibox02" class="testboxbg"></div> 
    <div id="ibox01" class="testboxbg"></div>



    <br>



    <div id="ibox01" class="testboxbg"></div>
    <div id="ibox02" class="testboxbg"></div>
    <div id="ibox03" class="testboxbg"></div>
    <div id="ibox04" class="testboxbg"></div>
    <div id="ibox05" class="testboxbg"></div>
    <div id="boxcon" class="testboxcon3">

    <form name="vacuum" method="post">
    <h3>&nbsp&nbsp13.Diablo 3 ��,����RMAH �� USD $33.83 ����һ����Ʒ,ѡ��֧�������<br>&nbsp&nbspPAYPAL�˻���,�����ע���Ϊ����˰��,������PAYPAL�˻�ʵ�յ��Ľ����<br>&nbsp&nbsp����(������λС��)<input type="text" name="question13"></h3>
    </form>

    </div>
    <div id="ibox05" class="testboxbg"></div>
    <div id="ibox04" class="testboxbg"></div>
    <div id="ibox03" class="testboxbg"></div>
    <div id="ibox02" class="testboxbg"></div> 
    <div id="ibox01" class="testboxbg"></div>


    <br>

    <div id="ibox01" class="testboxbg"></div>
    <div id="ibox02" class="testboxbg"></div>
    <div id="ibox03" class="testboxbg"></div>
    <div id="ibox04" class="testboxbg"></div>
    <div id="ibox05" class="testboxbg"></div>
    <div id="boxcon" class="testboxcon4">
    <br>
    <form name="transfer" method="post" action=?op=add_msg>
    <table>
    <tr>
        <td>&nbsp&nbsp<i>��������:</i></td><td><input type="text" name="username"></td>
    </tr>
    <tr>
        <td>&nbsp&nbsp<i>����E-mail:</i></td><td><input type="text" name="useremail"><i>��������ʾ�����ˣ�</i></td>
    </tr>
    <tr>
        <td>&nbsp&nbsp<i>�������:</i></td><td><textarea name="txtFeedback" rows="10" cols="50"></textarea></td>
    </tr>
    </table>


    <input type="hidden" name="totalscore"> 




    <br>
    <br>

    <p style="margin:0 auto; text-align:center;">
    <input style=" width:60px; height:30px; font-size:15px;"  type="submit" value="�� ��" onclick="submit1()" >
    <input style=" width:60px; height:30px; font-size:15px;"  type="button" value="�� ��" onclick="location.reload()" ></p>

    </form> 

    </div>
    <div id="ibox05" class="testboxbg"></div>
    <div id="ibox04" class="testboxbg"></div>
    <div id="ibox03" class="testboxbg"></div>
    <div id="ibox02" class="testboxbg"></div> 
    <div id="ibox01" class="testboxbg"></div>



    </div>
    <br>
    <div id="mp_ukagaka">
        <div id="ukagaka_shell">
	    <div id="ukagaka" style="display: block; ">
	        <div id="ukagaka_msgbox" style="display: block; ">
		    <div id="ukagaka_msg">�ֻأ����ۼ��Σ�����Ȼѡ���ֻء������ε�̽Ѱ��Ѱ��Ψһ�ĳ��ڣ�Ѱ���ܽ���Ӿ������������ȳ����ĵ�·����˵��Щ����ѣ���</div>
			    <div id="ukagaka_msgnum" style="display:none;">0</div>
			    <div id="ukagaka_msglist" style="display:none;">
                            {"msgall":3,"auto_msg":"","msg":
                             ["\u8f6e\u56de\uff0c\u65e0\u8bba\u51e0\u6b21\uff0c\u6211\u4f9d\u7136\u9009\u62e9\u8f6e\u56de\u3002\u65e0\u6570\u6b21\u7684\u63a2\u5bfb\uff0c\u5bfb\u627e\u552f\u4e00\u7684\u51fa\u53e3\uff0c\u5bfb\u627e\u80fd\u5c06\u4f60\u4ece\u7edd\u671b\u547d\u8fd0\u4e2d\u62ef\u6551\u51fa\u6765\u7684\u9053\u8def\u3002","\u5982\u679c\u5931\u53bb\u4f60\uff0c\u4f1a\u6709\u4eba\u4f24\u5fc3\u3002\u4e3a\u4ec0\u4e48\u4f60\u5c31\u662f\u4e0d\u660e\u767d\u3002\u90a3\u4e9b\u60f3\u8981\u5b88\u62a4\u4f60\u7684\u4eba\u53c8\u8be5\u4f55\u53bb\u4f55\u4ece\uff1f","\u867d\u7136\u8fd9\u662f\u4e00\u4e2a\u4e0d\u65ad\u91cd\u590d\u7740\u60b2\u54c0\u548c\u618e\u6068\u7684\u6ca1\u6551\u4e16\u754c\uff0c\u4f46\u8fd9\u91cc\u6bd5\u7adf\u66fe\u662f\u5979\u8bd5\u56fe\u4fdd\u62a4\u7684\u5730\u65b9\u3002\u6211\u4f1a\u7262\u8bb0\u8fd9\u4e00\u70b9\uff0c\u6c38\u4e0d\u5fd8\u8bb0\uff0c\u5e76\u4e3a\u4e4b\u800c\u6c38\u8fdc\u6218\u6597\u4e0b\u53bb\uff01","Don't forget. Always. Somewhere. Someone is fighting for you -- As long as you remember her, you are not alone."]}  
                            </div>
			    <div class="ukagaka-msgbox-border"></div>
		    </div>
		    <div id="ukagaka_img"><img id="cur_ukagaka" title="������" alt="������" src="images\shell\ukagaka-homura.png"></div>
		    <div id="ukagaka_num" style="display:none;">3</div>
		</div>
	    <!-<div class="mpu-clear"></div>-->
	    <!-<div class="ukagaka-dock">-->
	    </div>
	</div>
    </div>
    


</body>
</html>
    