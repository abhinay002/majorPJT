<%-- 
    Document   : AddDataset
    Created on : Sep 12, 2021, 11:00:24 PM
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
            <h1>BUILDING A WEBSITE FOR FINDING MEDICAL STORE AND MEDICINE AVAILABILITY.</h1>  
        </div>
       <div class="header">
  <a href="#default" class="logo"></a>
  <div class="header-right">
    <a href="Home.jsp">Home</a>
    <a class="active" href="AddDataset.jsp">Add DataSet</a>
    <a  href="Collections.jsp">Collections</a>
 <a href="Preprocess.jsp">Preprocessing</a>
    <a href="Train.jsp">Train</a>
  </div>
</div>
        
        
        
        <p align="center" style="color: purple;font-size:30px;text-shadow: 0px 5px 6px tomato;">Upload Medical Datasets</p>
<form action="Uploads" method="post" enctype="multipart/form-data">
<table align="center"  style="width: 568px;height: 120px;font-size:30px;background: green;text-align: center;border-radius: 10px;border: ridge;">
<tr><td style="color: yellow; font-family:Times New Roman">Choose Dataset</td><td><input type="file" name="file" required="" style="color: cornsilk;border-radius: 4px;height: 25px;border: violet;font-weight: bold;"></td></tr>
</table>
<p align="center"><input type="submit" value="Upload DataSet" style="width: 167px;height: 38px;font-size:20px;border-radius: 6px;border: whitesmoke;background: darkorange;"></p>
</form>
    </body>
</html>
