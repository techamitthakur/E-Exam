<%@page import="Package.Java"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="Ie=edge">
         <link href="bootstrap.min.css" rel="stylesheet">
         <link href="ie10-viewport-bug-workaround.css" rel="stylesheet">
         <link href="sticky-footer.css" rel="stylesheet">
          <script src="ie-emulation-modes-warning.js"></script>
          <style>
#mySidenav a {
    position: absolute;
    left: -50px;
    transition: 0.3s;
    padding: 15px;
    width: 100px;
    text-decoration: none;
    font-size: 20px;
    color: white;
    border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
    left: 0;
}

#about {
    top: 90px;
    background-color: #4CAF50;
}

#blog {
    top: 160px;
    background-color: #2196F3;
}

#print {
    top: 230px;
    background-color: #f44336;
}

#contact {
    top: 300px;
    background-color: #555
}
</style>
    <body style="background-color: white;">
        <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>  
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">Home</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="result.jsp">Result</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
           
           </ul>
        </div>
      </div>
    </nav>
        <br></br><br></br>
            
                    
        <div id="mySidenav" class="sidenav">
  <a href="index.jsp" id="about">Home</a>
  <a href="mailto:someone@example.com?Subject=Exam Result" target="_top" id="blog">Mail</a>
  <a href="javascript:void(0)" id="print"onclick="myPrint()">Print</a>
  <a href="index.jsp" id="contact">LogOut</a>
</div>
        <span onclick="openNav()">open</span>
        
<script>
function myPrint() {
    window.print();
}
</script>
            <center><h1>.Net Exam Result </h1></center>
             <center>  <img src=".net.jpg" height="65" > </center>
             <br>
        <%
            try{
            Class.forName("oracle.jdbc.driver.OracleDriver");  
            }catch(ClassNotFoundException e){
                e.printStackTrace();
            }
        
        %>
            
    
          <% 
              
             
              String id=(String)session.getAttribute("id");
              String username=(String)session.getAttribute("username");
        try{
           
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password"); 
        Statement statement=con.createStatement();
        String sql="select * from demo where id="+id+"";
        ResultSet resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
       
    <table align="center" cellpadding="3" cellspacing="3" border="5">
                <tr><td><center><% out.print(" Candidate Name: "+username);%></center></td></tr>
        
          <tr><td><center><% out.print("Candidate Registraion No:"+id);%></center></td></tr>
    </table>
        
       
    
    <%		
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
    
    
    
      <%
            try{
            Class.forName("oracle.jdbc.driver.OracleDriver");  
            }catch(ClassNotFoundException e){
                e.printStackTrace();
            }
        
        %>
            
    
          <% 
              
        try{
          
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password"); 
        Statement statement=con.createStatement();
        String sql="select * from result1 where id="+id+"";
        ResultSet resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
       
        <table align="center" cellpadding="3" cellspacing="3" border="1" >
            
            
<br></br>
            <tr><td><br>Question 1 :Which of the following statements are TRUE about the .NET CLR?
            <br></br><br>Your Answer:
            <br></br><%=resultSet.getString("a")%>
            <br></br></td><td>
            <br></br><%=resultSet.getString("k")%>
                
                </td></tr>
            
            
            <tr>
                <td>
                    Question 2 :<p>Which of the following are valid .NET CLR JIT performance counters?</p><br></br>
                    <br></br>Your Answer:
                    <br></br> <%=resultSet.getString("B")%> 
                    <br></br> </td><td>
                    <br></br> <%=resultSet.getString("L")%>
                </td>
            </tr>
            
            
            
            <tr><td><b>Question 3 :<p>Which of the following utilities can be used to compile managed assemblies into processor-specific native code?</p><br></br>
 Your Answer </p> <%=resultSet.getString("C")%></td><td><%=resultSet.getString("M")%></b></td></tr>
	      
            
            
            <tr><td><b>Question 4 :<p>Which of the following are NOT true about .NET Framework?</p><br></br>
 Your Answer </p> <%=resultSet.getString("D")%></td><td><%=resultSet.getString("N")%></b></td></tr>
	      
            
            
            <tr><td><b>Question 5 :<p>Which of the following components of the .NET framework provide an extensible set of classes that can be used by any .NET compliant programming language?</p><br></br>
 Your Answer </p> <%=resultSet.getString("E")%></td><td><%=resultSet.getString("O")%></b></td></tr>
	      
            
            
            <tr><td><b>Question 6 :<p>Which of the following jobs are NOT performed by Garbage Collector?</p><br></br>

 Your Answer </p> <%=resultSet.getString("F")%></td><td><%=resultSet.getString("P")%></b></td></tr>
	      
            
            <tr><td><b>Question 7 :<p><p>Which of the following .NET components can be used to remove unused references from the managed heap?</p><br></br>

 Your Answer </p> <%=resultSet.getString("G")%></td><td><%=resultSet.getString("Q")%></b></td></tr>
	     
            
            
            <tr><td><b><p>Which of the following statements correctly define .NET Framework?</p><br></br>

 Your Answer </p> <%=resultSet.getString("H")%></td><td><%=resultSet.getString("R")%></b></td></tr>
	      
            
            
            <tr><td><b>Question 9 :<p>Which of the following constitutes the .NET Framework?</p><br></br>

 Your Answer </p> <%=resultSet.getString("I")%></td><td><%=resultSet.getString("S")%></b></td></tr>
	    
            
            
            <tr><td><b>Question 10 :<p>Which of the following is the root of the .NET type hierarchy?</p><br></br>

 Your Answer </p> <%=resultSet.getString("J")%></td><td><%=resultSet.getString("T")%></b></td></tr>
	     
              
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
          <%    
     Object o=session.getAttribute("correct");
     Object o2=session.getAttribute("incorrect");
     
      out.println("No. of Correct Answer :"+o.toString());
        
      out.println("No. of Incorrect Answer :"+o2.toString());    
        
%>
            
            
            
	<%		
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
        <%
    
        %>
</table>     
    </body>
</html>
