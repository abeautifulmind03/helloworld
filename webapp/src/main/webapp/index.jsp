<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple JSP Example</title>
</head>
<body>
    <h1>Welcome to my JSP Page!</h1>
    
    <%-- Java code embedded within the JSP --%>
    <%
        String username = "John";
        int userAge = 30;
    %>
    
    <p>Hello, <%= username %>! You are <%= userAge %> years old.</p>
    
    <%-- Using JSP tags to control the flow --%>
    <%
        if (userAge >= 18) {
    %>
        <p>You are an adult.</p>
    <%
        } else {
    %>
        <p>You are a minor.</p>
    <%
        }
    %>
</body>
</html>
