<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add game</title>
</head>
<body>
<h2> Add Game Details</h2><hr />
<form action="addGame" method="post">
Game Name: <input type="text" name="gameName"  />
Game Amount: <input type="text" name="gameAmount" />
<input type="submit" value="save" />
</form>
</body>
</html>