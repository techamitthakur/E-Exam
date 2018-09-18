<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
          
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.jsp">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="index.jsp">LogOut</a></li>
          </ul>
        </div>
      </div>
    </nav>
        <br></br><br></br>
            
                    <div id="mySidenav" class="sidenav">
  <a href="index.jsp" id="about">Home</a>
  <a href="#" id="blog">About</a>
  <a href="#" id="projects">Projects</a>
  <a href="#" id="contact">Contact</a>
</div>
    <center>          
        <form action="Exam1" method="get">
           <h1>Select Stream For Exam</h1>
            <select name="option">
                <option>------------select------------</option>
                <option id="java">PROGRAMMING IN JAVA</option>
                <option id="net">PROGRAMMING IN .NET</option>                    
            </select>             
           <input type="submit" value="Done">
        </form>
        </center>
      <footer class="footer">
            <div class="container">
                <p class="text-muted">&nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &nbsp&nbsp; &COPY;  Copyright 2017 Exam Portal. All Right Reserve.</p>
            </div>
        </footer>
    </body>
</html>

    </body>
</html>
 