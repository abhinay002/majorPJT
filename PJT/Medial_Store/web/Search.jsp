<%-- 
    Document   : Search
    Created on : Sep 13, 2021, 9:37:26 AM
    Author     : lenovo
--%>
<%@page import="dbServices.DB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" />
        <title>JSP Page</title>
    </head>
    <%@page import="java.sql.*"%>

<%
Connection con=new DB().Con();
PreparedStatement oo=con.prepareStatement("select count(*)total from mdata");
ResultSet sa=oo.executeQuery();
int Total=0;
if(sa.next())
{
	Total=sa.getInt("total");
}
%>
    <body>
         <div class="cont">
            <h1>BUILDING A WEBSITE FOR FINDING MEDICAL STORE AND MEDICINE AVAILABILITY.</h1>  
        </div>
       <div class="header">
  <a href="#default" class="logo"></a>
  <div class="header-right">
    <a href="Home.jsp">Home</a>
    <a  href="Login.jsp">Search</a>
     
   
  </div>
</div>
        
        
         <div class="byline"><p>search box by Prediction</p></div>
        
        <form id="searchbox"  action="Search.jsp">
    <input id="search" type="text" name="search" placeholder="Type here">
    <input id="submit" type="submit" value="Search" >
</form>
        
         
         <table align="center" border="1" style="width:1000px;text-align:center;">
		<tr style="font-size:22px; color:darkred;">
		<th>Drug Name</th>
		<th>Condition</th>
                <th>Review</th>
                <th>Name</th>
                <th>Date</th>
                <th>Zip</th>
                <th>Telephone</th>
                
                
		
        <%
		String search=request.getParameter("search");
                if(search==null)
                search="";
                PreparedStatement query=con.prepareStatement("SELECT * FROM mdata where drugname='"+search+"' ");
		ResultSet rs=query.executeQuery();
        
		while(rs.next())
		{
            String id=rs.getString("drugname");
            String uname=rs.getString("conditions");
            String dte=rs.getString("review");
            String tweet=rs.getString("name");
            String status=rs.getString("datee");
            String zip=rs.getString("zip");
            String telephone=rs.getString("telephone");
           %>
				<tr>
                                        <th style="color:darkblue;"><%=id%></th>
					<th style="color:darkblue;"><%=uname%></th>
					<th style="color:darkblue;"><%=dte%></th>
                                        <th style="color:darkblue;"><%=tweet%></th>
                                        <th style="color:darkblue;"><%=status%></th>
                                        <th style="color:darkblue;"><%=zip%></th>
                                        <th style="color:darkblue;"><%=telephone%></th>
				</tr>
			
		<%	}
      
                    %>
                </table>
<!--        <h3 align="center"><a href="Graph.jsp">Find A Graph</a></h3>-->
    </body>
</html>
