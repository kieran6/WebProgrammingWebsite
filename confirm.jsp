<%@ page import="java.sql.*" %> 
<%@page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" %>  
<!DOCTYPE html>
<% 
 Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection(
"jdbc:mysql://mysql-server-1/km88?user=km88&password=F48I2StlNu");
Statement stmt = conn.createStatement();
String getGames = "select * from products";
ResultSet games = stmt.executeQuery(getGames);
ArrayList<Integer> priceList = new ArrayList<Integer>();
while (games.next())
	priceList.add(games.getInt("productprice"));
%> 

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<html>
	<head>
    <title>Order details</title>
	<link rel="stylesheet" type="text/css" href="PyroTech.css"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	</head>
  
	<body>
		<h1> <a href="HomePage.xhtml"><img class="logo" alt="Logo" src= "logo1.png" /></a> PyroTech </h1>
		<br/>
		<br/>
		<br/>
		<div class="row">
	<div class="col-75">
	<div class="container">
	<form action="confirm.jsp">

	<div class="row">
	<div class="col-50">
	<h3>Order Details</h3>	
	<label for="Products">Products </label>
	
	Quantity of Spiderman: <% out.print(request.getParameter("SpidermanQuantity"));%><br/>
	Quantity of Super mario party: <% out.print(request.getParameter("Super mario partyQuantity"));%><br/>
	Quantity of God of war: <% out.print(request.getParameter("God of warQuantity"));%><br/>
	Quantity of Kirby star allies: <% out.print(request.getParameter("Kirby star alliesQuantity"));%><br/>
	
	<br/> 
	<br/> 
			
    Full name: <% out.print(request.getParameter("name"));%><br/>
	Email: <% out.print(request.getParameter("email"));%><br/>
	Address: <% out.print(request.getParameter("address"));%><br/>
	City: <% out.print(request.getParameter("city"));%><br/>
	<br/><br/>
	<% int totalPrice = 0;
	int i = 0;
	int spiderman = Integer.parseInt(request.getParameter("SpidermanQuantity"));
	int kirby = Integer.parseInt(request.getParameter("Kirby star alliesQuantity"));
	int gow = Integer.parseInt(request.getParameter("God of warQuantity"));
	int mario = Integer.parseInt(request.getParameter("Super mario partyQuantity"));
	
	int[] quantity = {spiderman, mario, gow, kirby};
	for (int price:priceList) { 
	totalPrice = totalPrice + (price * quantity[i]);
	i++;
	}
	%>
	<%
    String sql = "insert into orderInfo values ";
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
	String city = request.getParameter("city");
    sql += "('" + spiderman + "', '" + mario + "', '" + gow + "', '" + kirby + "', '" + name + "', '" + email + "', '" + address + "', '" + city + "')";
	   %>
	<%=stmt.executeUpdate(sql)%>
	
	 Order for the total cost of: £<%=totalPrice%>
	<br/><br/>		
      
    </div>

      
    </div>
    </form>
    </div>
	</div>
	</div>
	</body>
</html>