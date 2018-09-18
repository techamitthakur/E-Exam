<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Success</title>
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

#projects {
    top: 230px;
    background-color: #f44336;
}

#contact {
    top: 300px;
    background-color: #555
        
}

</style>
    </head>
    
</div>
        
        <% 
      
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");       

            Statement statement = con.createStatement();

            String id = request.getParameter("username");  

            ResultSet resultset = 
                statement.executeQuery("select * from demo where username = '" + id + "'") ; 
                      if(!resultset.next()) {
                              out.println("Sorry, Could not find that Employee.");
             
            } else {
        %>
          
          <% 
           } 
       %>
         
        
         </div>
    <body style="background-color: olivedrab;">
          
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
            <li class="active"><a href="#">Register</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
            </ul>
        </div>
      </div>
    </nav>
        <br></br>
            
             <div class="container">

      <div class="jumbotron">
        <Center><h1>Registeration Sucess</h1>
            <h2><td>Registration Number:<%=resultset.getString(1)%></td></h2>
        <h2><td>User Name:<%=resultset.getString(2)%></td></h2>
        
        <h2><td>Password:<%=resultset.getString(3)%></td></h2>
        
        
        <a href="index.jsp">Go to Login Page</a> <Center/> </div>                
      </div>
        
        <div id="mySidenav" class="sidenav">
  <a href="index.jsp" id="about">Home</a>
  <a href="#" id="blog">About</a>
  <a href="#" id="projects">Projects</a>
  <a href="#" id="contact">Contact</a>
        
        <footer class="footer">
            <div class="container">
                <p class="text-muted">&nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &COPY;  Copyright 2017 Exam Portal. All Right Reserve.</p>
            </div>
        </footer>
    </body>
</html>

    </body>
</html>
 
