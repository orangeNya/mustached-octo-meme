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
        document.getElementById('time').innerHTML="早上好."
    if(12<=h&&h<=18) 
        document.getElementById('time').innerHTML="下午好."
    if(18<=h&&h<=24) 
        document.getElementById('time').innerHTML="晚上好." 
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
    alert("你完成的时间为"+Math.floor(lasting/240)+"分"+Math.round(Math.floor(lasting/4)%60)+"秒，你做对的题目数量："+score)
    if(score<=3)
        window.open("result/normal.html","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400")
    if(score>=4 && score<=11)
        window.open("result/expert.html","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400")
    if(score>=12)
        window.open("result/master.html","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400")
    location.reload()
}