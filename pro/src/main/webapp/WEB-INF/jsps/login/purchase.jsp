<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-image: url("/images/purchasepage.jpg/");
  background-size: 1200px;
}
h1  {
	color: red;
	text-align: center;
	
	}
h3  {
	text-align: center;
	color: black;
	}

</style>
<meta charset="ISO-8859-1">
<title>Purchase Zone</title>
</head>
<body>
<h1>ADD MONEY</h1>
<br>
<center>
<form action="/purchasepage" method="post">
<h3>AMOUNT:<input type="text" name="balance" onkeyup="if(this.value<0){this.value= this.value * -1}" required="required"/> </h3>
<h3>CARD<input type="radio" name="payment" value="card" required="required"/></h3>
<h3>UPI<input type="radio" name="payment" value="upi" required="required"/></h3>
<input type="submit" value="PAY"/>

</center>
</form>
</body>
</html>