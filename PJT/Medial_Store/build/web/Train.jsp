<%-- 
    Document   : Preprocess
    Created on : Sep 13, 2021, 9:04:06 AM
    Author     : lenovo
--%>
<%@page import="CBF.replace"%>
<%@page import="CBF.Stem"%>
<%@page import="CBF.Stopwords"%>
<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" />
        <title>JSP Page</title>
    </head>
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
            <h1>BUILDING A WEBSITE FOR FINDING MEDICAL STORE AND MEDICINE AVAILABILITY</h1>  
        </div>
       <div class="header">
  <a href="#default" class="logo"></a>
  <div class="header-right">
    <a href="Home.jsp">Home</a>
    <a  href="AddDataset.jsp">Add DataSet</a>
    <a  href="Collections.jsp">Collections</a>
    <a href="Preprocess.jsp">Preprocessing</a>
    <a class="active" href="Train.jsp">Train</a>
  </div>
</div>
        
        <div class="seperate">
        
        <table align="center" border="1" style="width:1000px;text-align:center;">
		<tr style="font-size:22px; color:darkred;">
		<th>Unique Id</th>
		<th>Drug Name</th>
		<th>Condition</th>
		<th>Reviews</th>
                <th>Rating</th>
                <th>Date</th>
                <th>Name</th>
                <th>Address</th>
                <th>Zip</th>
                <th>Telephone</th>
        <%
		PreparedStatement query=con.prepareStatement("select * from mdata");
		ResultSet rs=query.executeQuery();
        Stopwords st=new Stopwords();
        Stem stem=new Stem();
        replace rep=new replace();
        String tweetss="";
        String twt = "";
		while(rs.next())
		{
            String id=rs.getString("id");
            String twitter_id=rs.getString("drugname");
            String user_id=rs.getString("conditions");
            String tweets=rs.getString("review");
            twt =st.words(tweets);
            tweetss=rep.remove(twt);
            String rating=rs.getString("rating");
            String date=rs.getString("datee");
             String name=rs.getString("name");
             String address=rs.getString("address");
             String zip=rs.getString("zip");
             String telephone=rs.getString("telephone");
            
			%>
				<tr>
		            <th style="color:darkblue;"><%=id%></th>
					<th style="color:darkblue;"><%=twitter_id%></th>
					<th style="color:darkblue;"><%=user_id%></th>
					
					<th style="color:red;"><%=tweetss%></th>
                                        <th style="color:darkblue;"><%=rating%></th>
                                        <th style="color:darkblue;"><%=date%></th>
                                        <th style="color:darkblue;"><%=name%></th>
                                        <th style="color:darkblue;"><%=address%></th>
                                        <th style="color:darkblue;"><%=zip%></th>
                                        <th style="color:darkblue;"><%=telephone%></th>
				</tr>
         <%}%>
                </table>
        </div>
        <h3 align="center"><a href="AddDataset.jsp">Click to Back</a></h3>
    </body>
</html>
