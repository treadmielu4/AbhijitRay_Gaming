<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-image: url("/images/demo.jpg/");
  background-size: 1600px;
}
h1 {
  color: Black;
  text-align: center;
  font-family: "Times New Roman", Times, serif;
  font-size: 50px;
}
.button{
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
th{
text-align:left;
}
.button1 {
 
  border: none;
  border-radius: 50%;
  color: white;
  padding: 5px 15px;
  text-align:center;
  text-decoration: none;
  display: inline-block;
  font-size: 5px;
  margin: 4px 2px;
  cursor: pointer;
  position: relative;
  left: 450px;
  top: 23px
}
</style>
<meta charset="ISO-8859-1">
<title>List of Games</title>
</head>
<body>
<h1>GAME ZONE</h1>
<center>

<h3>${error}</h3>
			<table style="width: 40%; border: 3px solid black;">
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>AMOUNT</th>
				</tr>
				<c:forEach items="${games}" var="games">
				<th><button class="button1"><a href="/playgame?gameAmount=${games.gameAmount}">Go</a></button></th>
				<tr>
					<td><c:out value="${games.gameId}" /></td>
					<td><c:out value="${games.gameName}" /></td>
					<td><c:out value="${games.gameAmount}" /></td>
				</tr>
				</c:forEach>
			</table>
		



<button class="button"><a href="/loginpage">LOG OUT</a></button>

</center>
</body>
</html>