package Package;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Net extends HttpServlet {
     
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList a=new ArrayList();
        ArrayList b=new ArrayList();
        int id=100;
        try{
        PrintWriter out=resp.getWriter();
       
        String option1=req.getParameter("op1");
        String option2=req.getParameter("op2");
        String option3=req.getParameter("op3");
        String option4=req.getParameter("op4");
        String option5=req.getParameter("op5");
        String option6=req.getParameter("op6");
        String option7=req.getParameter("op7");
        String option8=req.getParameter("op8");
        String option9=req.getParameter("op9");
        String option10=req.getParameter("op10");
        
        Class.forName("oracle.jdbc.driver.OracleDriver");  
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password"); 
        Statement statement=con.createStatement();
        String sql="select * from result1";
        ResultSet resultSet=statement.executeQuery(sql);
       while(resultSet.next())
        {
        id=id+1;
        }
        PreparedStatement ps=con.prepareStatement("insert into result1 values(?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
           
        if(option1.equals("The resources are garbage collected."))
        {
            ps.setString(1, option1);
            ps.setString(11, "CORRECT");
            a.add("correct");
        }
        else
        {
          ps.setString(1, option1);
          ps.setString(11, "INCORRECT");  
          b.add("incorrect");
        }
        if(option2.equals("Total memory used for JIT compilation"))
        {
            
            ps.setString(2, option2);
            ps.setString(12, "CORRECT");
            a.add("correct");
           
        }
        else
        {
              
              ps.setString(2, option2);
              ps.setString(12, "INCORRECT");
                b.add("incorrect");
        }
        if(option3.equals("gacutil"))
        {
            
            ps.setString(3,option3);
            ps.setString(13, "CORRECT");
            a.add("correct");
        }
        else
        {
              
              ps.setString(3,option3);
              ps.setString(13, "INCORRECT");
                b.add("incorrect");
        }
        if(option4.equals("It provides an event driven programming model for building Windows Device Drivers."))
        {
            
            ps.setString(4,option4);
            ps.setString(14, "CORRECT");
            a.add("correct");
        }
        else
        {
              
              ps.setString(4,option4);
            ps.setString(14, "INCORRECT");
              b.add("incorrect");
        }
         if(option5.equals(".NET class libraries"))
        {
            
            ps.setString(5,option5);
            ps.setString(15, "CORRECT");
            a.add("correct");
        }
         else
        {
              
              ps.setString(5,option5);
              ps.setString(15, "INCORRECT");
                b.add("incorrect");
        }
         if(option6.equals("Freeing memory on the stack."))
        {
            
            ps.setString(6,option6);
            ps.setString(16, "CORRECT");
            a.add("correct");
        }
         else
        {
              
              ps.setString(6,option6);
            ps.setString(16, "INCORRECT");
              b.add("incorrect");
        }
         if(option7.equals("CLR"))
        {
            ps.setString(7,option7);
            ps.setString(17, "CORRECT");
            a.add("correct");
        }
         else
        {
              
              ps.setString(7,option7);
            ps.setString(17, "INCORRECT");
              b.add("incorrect");
        }
         if(option8.equals("It is an environment for developing, building, deploying and executing Web Services."))
        {
            
            ps.setString(8,option8);
            ps.setString(18, "CORRECT");
            a.add("correct");
        }
         else
        {
              
              ps.setString(8,option8);
            ps.setString(18, "INCORRECT");
              b.add("incorrect");
        }
         if(option9.equals("ASP.NET Applications"))
        {
            
            ps.setString(9,option9);
            ps.setString(19, "CORRECT");
            a.add("correct");
        }
         else
        {
              
              ps.setString(9,option9);
            ps.setString(19, "INCORRECT");
              b.add("incorrect");
        }
         if(option10.equals("System.Type"))
        {
          
          ps.setString(10,option10);
            ps.setString(20, "CORRECT");
            a.add("correct");
        }
        
        else
        {
              
              ps.setString(10,option10);
            ps.setString(20, "INCORRECT");
              b.add("incorrect");
        }
         ps.setInt(21,id);
         int s=ps.executeUpdate();
         int correct=a.size();
         int incorrect=b.size();
    
           
    
if(s>0){
 
resp.sendRedirect("resultnet.jsp");
}
else{
out.print("sorry!please fill correct detail and try again" );
}
HttpSession session=req.getSession();
session.setAttribute("correct",correct);
session.setAttribute("incorrect", incorrect);
}       catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Java.class.getName()).log(Level.SEVERE, null, ex);
        }
}
}




