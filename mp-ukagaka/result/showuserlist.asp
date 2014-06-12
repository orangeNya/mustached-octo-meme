<html>
<body>
<center><img src="yui.jpg" width=240 height=180></center>
<%response.write("<center><h2>您在以下n个人中的成绩</h2></center>")%>
<%response.write("<br>")%>
<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Open "DSN=score"
set rs = Server.CreateObject("ADODB.recordset")
sql="SELECT * FROM score order by s_score DESC"
rs.Open sql, conn
%>





<table border="0" cellspacing="0" cellpadding="0" width="350" bgcolor="#ffffff" align="center" style="border:#000000 solid;border-width:1 0 0 1">
<tr>
<%for each x in rs.Fields
    response.write("<th align='left' bgcolor='ffffff'style='border:#000000 solid;border-width:0 1 1 0'>" & x.name & "</th>")
next%>
</tr>
<%do until rs.EOF%>
    <tr>
    <%for each x in rs.Fields%>
       <td style="border:#000000 solid;border-width:0 1 1 0"><%Response.Write(x.value)%></td>
    <%next
    rs.MoveNext%>
    </tr>
<%loop
rs.close
%>

</body>
</html>



