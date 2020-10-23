<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-image: url("/images/loginpage.png/");
  background-size: 1600px;
}
h2  {
	color: red;
	text-align: center;
	}
h3  {
	text-align: center;
	color: yellow;
	}
.button {
  background-color: #4CAF50; 
  border: none;
  border-radius: 12px;
  color: white;
  padding: 5px 15px;
  text-align:center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>
<body>
<h2>USER LOGIN PAGE</h2>
<form action="/loginpage" method="post">

<h3>USER NAME:<input type="text" name="email" required="required"/></h3>
<h3>PASSWORD:<input type="password" name="password" required="required"/></h3>
<h3><input type="submit" value="Login"/></h3>
<h3>${msg}</h3>
<center>
<button class="button"><a href=/showReg>HOME PAGE</a>
</center>
</form>




</body>
</html>