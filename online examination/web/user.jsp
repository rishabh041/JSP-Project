<%-- 
    Document   : user.jsp
    Created on : 24 Jun, 2016, 2:30:59 PM
    Author     : lenovo
--%>
<jsp:include page="background.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome <%out.println(session.getAttribute("name"));%></title>
    </head>
    <body><a href="choice.jsp">
            <button>Give Examination</button></a>
        <a href="calculatewhat.jsp">
            <button> View Marks</button>
        </a>
        <a href="index.html">
            <button>Sign Out</button>
        </a>
        
    </body>
</html>
