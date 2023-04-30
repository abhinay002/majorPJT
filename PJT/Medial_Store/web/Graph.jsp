<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "Decison Tree"); map.put("y", 93); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Random forest"); map.put("y", 89); list.add(map);

 
String dataPoints = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	title: {
		text: "Graph for comparing decision tree and random forest"
	},
	axisX: {
		title: "Algorithm"
	},
	axisY: {
		title: "Accuracy",
		includeZero: true
	},
	data: [{
		type: "column",
		yValueFormatString: "#,##0.0# Accuracy",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
    
     <div class="cont">
            <h1>Efficient Online Medical store finding and availability of medicines using decision tree compared over random forest with improved accuracy.</h1>  
            <div class="header">
  
  <div class="header-right">
    <a href="Home.jsp">Home</a>
    <a  href="Login.jsp">Search</a>
     
   
  </div>
        </div>
       
            <center> <div id="chartContainer" style="height: 370px; width: 50%; ">
      
    
                </div></center>

<script src="js/canvasjs.min.js"></script>
</body>
</html> 