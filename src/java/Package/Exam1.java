
package Package;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Exam1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   
        String exam=req.getParameter("option");
        System.out.println(exam);
        
        PrintWriter pw=resp.getWriter();
        if(exam.equals("PROGRAMMING IN JAVA"))
        {
            resp.sendRedirect("Start.jsp");
        
        }
        else
        {
            resp.sendRedirect("StartNet.jsp");
        
        }
    }


}
