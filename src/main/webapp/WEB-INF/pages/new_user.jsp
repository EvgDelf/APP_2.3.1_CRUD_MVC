<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>New user</title>
</head>
<body>
<div align="center">
    <h1>New User</h1>
    <form:form action="save" method="post" modelAttribute="user">
        <table border="0" cellpadding="3">
            <tr>
                <td>NAME</td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td>LAST NAME</td>
                <td><form:input path="lastName"/></td>
            </tr>
            <tr>
                <td>AGE</td>
                <td><form:input path="age"/></td>
            </tr>
            <tr>
                <td>EMAIL</td>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Save">
                </td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>