<%-- 
    Document   : repeat.jsp
    Created on : 24 Jun, 2016, 2:53:42 PM
    Author     : lenovo
--%>
<jsp:include page="background.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HI <%session.getAttribute("name");%></title>
    </head>
    <body>
        <h4>You have already given your exam</h4>
        <jsp:include page="user.jsp"/>
    </body>
            
    
</html>
