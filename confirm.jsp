<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<html>
	<head>
    <title>Confirmation</title>
    <meta charset="utf-8" />
	<link rel="stylesheet" type="text/css" href="PyroTech.css"/>
	</head>
  
	<body>
		<h1> <img class="logo" alt="Logo" src= "logo1.png" /> PyroTech </h1>
		<br/>
		<br/>
		<br/>
		<div class="row">
	<div class="col-75">
	<div class="container">
	<form action="confirm.jsp">

	<div class="row">
	<div class="col-50">
	<h3>Confrim Order Details</h3>	
	<label for="Products">Products </label>
	Quatity of Game 1: <% out.print(request.getParameter("Quantity"));%>
			
	<br/> 
	<br/> 
			
    Full name: <% out.print(request.getParameter("name"));%><br/>
	Email: <% out.print(request.getParameter("email"));%><br/>
	Address: <% out.print(request.getParameter("address"));%><br/>
	City: <% out.print(request.getParameter("city"));%><br/>
			
	<input type="submit" id="Submit"/>
      
    </div>

      
    </div>
    </form>
    </div>
	</div>
	</div>
	</body>
</html>