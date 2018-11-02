<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>

    <title>Pyro Tech</title>
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
            <h3>Order Details</h3>
			<label for="Products">Products </label>
			Game 1
			<select name="Quantity">
				<option value="0">0</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
			</select> 
			<br/> 
			<br/> 
			
            <label for="name"> Full Name</label>
            <input type="text" id="name" name="name" placeholder="John M. Doe"/>
            <label for="email"> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com"/>
            <label for="address"> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street"/>
            <label for="city"> City</label>
            <input type="text" id="city" name="city" placeholder="England"/>
			
			<input type="submit" id="Submit"/>
      
          </div>

      
        </div>
      </form>
    </div>
  </div>
   </div>
</body>

</html> 
