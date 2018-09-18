<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
</body>

 <%
     String username;
String id=request.getParameter("id");
String userpass=request.getParameter("userpass");
boolean status=false;
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
PreparedStatement ps=con.prepareStatement("select * from demo where id=? and userpass=? ");
ps.setString(1,id);
ps.setString(2,userpass);

ResultSet rs=ps.executeQuery();
status=rs.next();
if(status){
username=rs.getString(2);
id=rs.getString(1);
session.setAttribute("id",String.valueOf(id));
session.setAttribute("username",String.valueOf(username));

%>
<jsp:forward page="exam.jsp"></jsp:forward>
<%
}
else{
System.out.print("hi");
request.setAttribute("Error","Sorry! Username or Password Error. Plz Enter Correct Detail ");
session.setAttribute("Loginmsg","Plz sign in first");
%>
<H1><center>Sorry!! Id or Password </center></H1>
<H1><center>"Please <A HREF='index.jsp'>try again</A>") </center></H1>
<%
}
}
catch(Exception e){
e.printStackTrace();
}
%>
</body>
</html>
