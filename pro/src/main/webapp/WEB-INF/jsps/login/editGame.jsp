<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Game</title>
</head>
<body>
<h2>Edit game</h2><hr />
<form action="updateGameDetails" method="post">
Game id: <input type="text" name="gameId" value="${gameDetails.gameId}" READONLY/>
Game Name: <input type="text" name="gameName" value="${gameDetails.gameName}" />
Game Amount: <input type="text" name="gameAmount" value="${gameDetails.gameAmount}" />
<input type="submit" value="save" />
</form>
</body>
</html>