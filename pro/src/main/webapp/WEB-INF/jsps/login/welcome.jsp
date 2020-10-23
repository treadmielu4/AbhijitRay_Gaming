<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-image: url("/images/welcomepage.jpg/");
  background-size: 1600px;
}
h2  {
	text-align: center;
	}
	
x {
	text-align: center;
  }	
	
.button1 {
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

.button2 {
  background-color: #008CBA; 
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

.button3 {
  background-color:#f44336; 
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
<title>Welcome Page</title>
</head>
<body>
<center>
<h2>... WELCOME ${name}...</h2>
<br>
<table style="width: 20%; border: 1px solid black;">
<tr>
<h3><th>VIRTUAL CARD<th></h3>
</tr>
<th><x><h3>NAME:${name}</h3></x></th>
</tr>
<th><x><h3>EMAIL:${email}</h3></x></th>
</tr>
<th><x><h3>PHONE:${phone}</h3></x></th>
</tr>
<th><x><h3>BALANCE:${balance}</h3></x></th>
</tr>
</table>
<br>
<button class="button1"><a href="/findGames">GAME ZONE</a></button>
<button class="button2"><a href="/purchase1">ADD MONEY</a></button>
<button class="button3"><a href="/loginpage">LOG OUT</a></button>
</center>




</body>
</html>