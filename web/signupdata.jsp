<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Success</title>
    </head>
    <body>
           
          <%try{
           
int id=100;
String username=request.getParameter("username");
String userpass=request.getParameter("userpass");
String email=request.getParameter("email");
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password"); 
Statement statement=con.createStatement();
String sql="select * from demo";
ResultSet resultSet=statement.executeQuery(sql);
while(resultSet.next())
{
    id=id+1;
}
PreparedStatement ps=con.prepareStatement("insert into demo values(?,?,?,?)");

ps.setInt(1, id);
ps.setString(2, username);
ps.setString(3, userpass);
ps.setString(4, email);


int s=ps.executeUpdate();
if(s>0){
%>
<jsp:forward page="registersuccess.jsp"></jsp:forward>
<% 
}
else{
out.print("sorry!please fill correct detail and try again" );
}
}catch(SQLException e2){
out.print("sorry!please fill correct detail and try again" );
e2.printStackTrace();
}
%>

    </body>
</html>
