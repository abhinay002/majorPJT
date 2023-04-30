


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ANAND
 */
public class Register extends HttpServlet {
    
      public void doPost(HttpServletRequest request, HttpServletResponse response)
                                   throws ServletException,IOException{
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			System.out.println("MySQL Connect Example.");
			Connection conn = null;
			String url = "jdbc:mysql://localhost:3306/";
			String dbName = "medical";
			String driver = "com.mysql.jdbc.Driver";
			String userName = "root"; 
			String password = "";

		   String name="";
		   String user="";
                   String pwd="";
                   String email="";
                   String gender="";
                   String state="";
                   String country="";
                    
		   
		   String strQuery= ""; 
                   String str= ""; 
			Statement st=null;
			ResultSet rs=null;
			HttpSession session = request.getSession(true);

			try {
				Class.forName(driver);
			conn = DriverManager.getConnection(url+dbName,userName,password);
				
					name = request.getParameter("fname").toString();
					user = request.getParameter("lname").toString();
                                        pwd = request.getParameter("uname").toString();
                                        email = request.getParameter("pass").toString();
                                        gender = request.getParameter("email").toString();
                                        state = request.getParameter("mob").toString();
                                        
                                     
					 
              strQuery="insert into register (fname,lname,uname,pass,email,mobile) values('"+name+"','"+user+"','"+pwd+"','"+email+"','"+gender+"','"+state+"')";
System.out.println(strQuery);
st = conn.createStatement();
st.executeUpdate(strQuery);



				RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
						rd.forward(request, response);
						System.out.println("ret-forward");		 
					
				
				System.out.println("Connected to the database");
				

				
//				conn.close();
			System.out.println("Disconnected from database");
				
			} catch (Exception e) {
			e.printStackTrace();
			}
  }
    
}
