<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Example</title>
</head>
<body>
    <h1>Welcome to a JSP Example</h1>
    
    <%-- Declaration and Initialization --%>
    <%
        String greeting = "Hello, World!";
        int number = 42;
        double pi = 3.14159265359;
    %>
    
    <p><strong><%= greeting %></strong></p>
    
    <hr />
    
    <%-- Conditional Statements --%>
    <%
        boolean isJavaFun = true;
    %>
    <p>
        <% if (isJavaFun) { %>
            Java is fun!
        <% } else { %>
            Java is not fun!
        <% } %>
    </p>
    
    <hr />
    
    <%-- Looping --%>
    <p>Counting from 1 to 5:</p>
    <ul>
        <% for (int i = 1; i <= 5; i++) { %>
            <li><%= i %></li>
        <% } %>
    </ul>
    
    <hr />
    
    <%-- Including Another JSP --%>
    <p>Including another JSP file:</p>
    <jsp:include page="included.jsp" />
    
    <hr />
    
    <%-- Request Parameters --%>
    <p>Request Parameters:</p>
    <ul>
        <%
            String paramName = "name";
            String paramValue = request.getParameter(paramName);
        %>
        <li><strong><%= paramName %>:</strong> <%= paramValue %></li>
    </ul>
    
    <hr />
    
    <%-- Session Attributes --%>
    <p>Session Attribute:</p>
    <ul>
        <%
            String sessionAttrName = "username";
            String sessionAttrValue = (String) session.getAttribute(sessionAttrName);
        %>
        <li><strong><%= sessionAttrName %>:</strong> <%= sessionAttrValue %></li>
    </ul>
    
    <hr />
    
    <%-- Exception Handling --%>
    <%
        try {
            int result = 10 / 0; // Divide by zero to trigger an exception
        } catch (Exception e) {
            out.println("An error occurred: " + e.getMessage());
        }
    %>
    
</body>
</html>
