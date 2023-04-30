<%-- 
    Document   : Login
    Created on : Sep 12, 2021, 10:38:09 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="css/style.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="cont">
            <h1>BUILDING A WEBSITE FOR FINDING MEDICAL STORE AND MEDICINE AVAILABILITY</h1>  
        </div>
       <div class="header">
  <a href="#default" class="logo"></a>
  <div class="header-right">
    <a href="Home.jsp">Home</a>
    <a class="active" href="Login.jsp">Login</a>
    <a href="Register.jsp">Register</a>
    <a href="Admin.jsp">Admin</a>
  </div>
</div>
        <div class="form">
  
   
        <form  name="dcr" method="post" action="Login">                      
<input type="text" name="user" placeholder="USERNAME" class="txt"/>
   
  <input type="password" name="Password" placeholder="PASSWORD" class="txt" />

  <button type="submit">Sign in</button>
   

   <a href="Register.jsp">Create account</a>

</div>
    </body>
</html>

