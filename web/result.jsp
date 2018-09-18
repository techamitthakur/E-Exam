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

            <center><h1>Java Exam Result <br>
            <center>  <img src="java.jpg" height="80" > </center></h1></center>
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
       
    <table align="center" cellpadding="3" cellspacing="3" border="6">
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
        String sql="select * from result where id="+id+"";
        ResultSet resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
       
        <table align="center" cellpadding="3" cellspacing="3" border="1" >
            
            

<br></br>
            <tr><td><br>Question 1 :<br></br>  <p>In a Java class, you need to print out all the integers present in an array. Accordingly you have used a for loop, as shown in the following code snippet. </p>
            public static void main(String args[])<br>
            {<br>
            int[] nums={1,2,3,4};<br>
            for(int num:nums)<br>
            {<br>
            System.out.println(nums);<br>
            }<br>
            }<br>
            <br></br>Your Answer:
            <br></br><%=resultSet.getString("a")%>
            <br></br></td><td>
            <br></br><%=resultSet.getString("k")%>
                
                </td></tr>
            
            
            <tr>
                <td>
                    Question 2 :<p>In Java, ______________is the ability to refer to an object using either its actual form or a parent form.</p><br></br>
                    Your Answer </p><%=resultSet.getString("B")%></td><td><%=resultSet.getString("L")%></b></td></tr>
            
            
            
            <tr><td><b>Question 3 :<p>Which of the following keywords will you use to determine an object's class type at runtime?</p><br></br>
 Your Answer </p> <%=resultSet.getString("C")%></td><td><%=resultSet.getString("M")%></b></td></tr>
	      
            
            
            <tr><td><b>Question 4 :<p>Which of the following statements is true regarding abstract classes?</p><br></br>
 Your Answer </p> <%=resultSet.getString("D")%></td><td><%=resultSet.getString("N")%></b></td></tr>
	      
            
            
            <tr><td><b>Question 5 :<p>____________is a marker interface used by the Java's I/O library to determine if an object can have its state serialized.</p><br></br>
 Your Answer </p> <%=resultSet.getString("E")%></td><td><%=resultSet.getString("O")%></b></td></tr>
	      
            
            
            <tr><td><b>Question 6 :<p>Which of the following statements is true regarding marker interfaces?</p><br></br>
 Your Answer </p> <%=resultSet.getString("F")%></td><td><%=resultSet.getString("P")%></b></td></tr>
	      
            
            <tr><td><b>Question 7 :<p>Which of the following exceptions must a JDBC-based DAO handle in a Java application?</p><br></br>
 Your Answer </p> <%=resultSet.getString("G")%></td><td><%=resultSet.getString("Q")%></b></td></tr>
	     
            
            
            <tr><td><b>Question 8 :<p>Which of the following statements is true regarding exception handling using try-catch blocks?</p><br></br>
 Your Answer </p> <%=resultSet.getString("H")%></td><td><%=resultSet.getString("R")%></b></td></tr>
	      
            
            
            <tr><td><b>Question 9 :<p>Which of the following types of streams does Java supports?</p><br></br>
 Your Answer </p> <%=resultSet.getString("I")%></td><td><%=resultSet.getString("S")%></b></td></tr>
	    
            
            
            <tr><td><b>Question 10 :<p>Which of the following classes provides a more flexible form of barner that may be used to control phased computation among multiple threads?</p><br></br>
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
