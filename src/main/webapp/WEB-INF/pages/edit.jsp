<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Edit User</title>
</head>
<body>
<div align="center">
<h1>Edit User</h1>
<form method="post" action="/edit">
    <input type="hidden" name="id" value="${user.id}"/>
    <label for="name">Name:</label>
    <input type="text" name="name" id="name" value="${user.name}" required/>
        <br/>
    <label for="lastname">Last Name:</label>
    <input type="text" name="lastName" id="lastname" value="${user.lastName}" required/>
        <br/>
    <label for="age">Age:</label>
    <input type="text" name="age" id="age" value="${user.age}" required/>
        <br/>
    <label for="email">Email:</label>
    <input type="email" name="email" id="email" value="${user.email}" required/>
        <br/>
    <input type="submit" value="Save"/>
</form>
</div>
</body>
</html>