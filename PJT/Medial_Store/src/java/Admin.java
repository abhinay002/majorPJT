 


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
public class Admin extends HttpServlet {
    
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

		   String user="";
		   String pass="";
                   String us="";
                   String pw="";
                   String role="";
                  
		   
		   String strQuery= ""; 
                   String str= ""; 
			Statement st=null;
			ResultSet rs=null;
			HttpSession session = request.getSession(true);

			try {
				Class.forName(driver);
			conn = DriverManager.getConnection(url+dbName,userName,password);
				
					user = request.getParameter("user").toString();
					pass = request.getParameter("Password").toString();
                                       
                           if(user.equalsIgnoreCase("admin") && (pass.equalsIgnoreCase("admin"))){              
	
					
                                            RequestDispatcher rd=request.getRequestDispatcher("/AddDataset.jsp");
                                            rd.forward(request, response);
                                            //System.out.println("ret-forward");		 
                           }
				
				System.out.println("Connected to the database");
				

				
//				conn.close();
			System.out.println("Disconnected from database");
				
			} catch (Exception e) {
			e.printStackTrace();
			}
                                        }
                        }
    
      

