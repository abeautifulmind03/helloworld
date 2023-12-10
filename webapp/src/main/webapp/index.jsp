<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Advanced JSP Example</title>
</head>
<body>
    <h1>Welcome to my Advanced JSP Page!</h1>
    
    <%-- Functionality 1: Display the current date and time --%>
    <p>Current Date and Time: <%= new java.util.Date() %></p>
    
    <%-- Functionality 2: Loop and display numbers from 1 to 5 --%>
    <p>Numbers from 1 to 5:
    <%
        for (int i = 1; i <= 5; i++) {
    %>
        <%= i %> 
    <%
        }
    %>
    </p>
    
    <%-- Functionality 3: Use a method to calculate the square of a number --%>
    <%
        int num = 7;
        int square = calculateSquare(num);
    %>
    <p>The square of <%= num %> is <%= square %></p>
    
    <%-- Functionality 4: Create and display an array of fruits --%>
    <%
        String[] fruits = {"Apple", "Banana", "Orange", "Grapes"};
    %>
    <p>Fruits: 
    <%
        for (String fruit : fruits) {
    %>
        <%= fruit %> 
    <%
        }
    %>
    </p>
    
    <%-- Functionality 5: Conditionally display a message based on a boolean variable --%>
    <%
        boolean isMember = true;
    %>
    <p>
    <%
        if (isMember) {
    %>
        Welcome, Member!
    <%
        } else {
    %>
        Join our community!
    <%
        }
    %>
    </p>
    
    <%-- Functionality 6: Include an external JSP file --%>
    <jsp:include page="external.jsp" />
    
    <%-- Functionality 7: Redirect to another page --%>
    <%
        // Uncomment the line below to enable redirection
        // response.sendRedirect("anotherPage.jsp");
    %>
    
    <%-- Functionality 8: Set and retrieve session attributes --%>
    <%
        session.setAttribute("username", "Alice");
        String sessionUsername = (String) session.getAttribute("username");
    %>
    <p>Session Username: <%= sessionUsername %></p>
    
    <%-- Functionality 9: Use request parameters --%>
    <%
        String paramValue = request.getParameter("paramName");
    %>
    <p>Parameter Value: <%= paramValue %></p>
    
    <%-- Functionality 10: Use JSP comments --%>
    <%
        // This is a JSP comment. It won't be visible in the output.
    %>
    
</body>
</html>
