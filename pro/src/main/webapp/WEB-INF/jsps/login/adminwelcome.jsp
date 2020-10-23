<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-image: url("/images/welcomepage.jpg/");
  background-size: 1600px;
}
th{
text-align:left;
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
.button1 {
  background-color: #DAA520;
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
<title>AdminWelcomePage</title>
</head>
<body>
<center>
<h2>WELCOME ADMIN</h2>
<table style="width: 40%; border: 1px solid black;">
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>AMOUNT</th>
				</tr>
				<c:forEach items="${showGameslist}" var="games">
				<tr>
					<td><c:out value="${games.gameId}" /></td>
					<td><c:out value="${games.gameName}" /></td>
					<td><c:out value="${games.gameAmount}" /></td>
						<td><a href="editGameDetails?gameId=${games.gameId}">edit</a><td>
				
					<td><a href="removeGame?gameId=${games.gameId}">remove</a></td>
				</tr>
				</c:forEach>
			</table>
<br>
<button class="button1"><a href="addNewGame">ADD NEW GAME</a></button>
<br>
<button class="button"><a href="/showadminlogin">LOG OUT</a></button>
<center>
</body>
</html>