<%-- 
    Document   : delete.jsp
    Created on : 28 Jun, 2016, 2:04:27 PM
    Author     : lenovo
--%>
<jsp:include page="background.jsp"></jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete User</title>
    </head>
    <body>
        <form method="post" action="deluser.jsp">
            Email id of user<input type="name" name="name"/></br>
            <input type="submit" value="confirm"/>
            
        </form>
    </body>
</html>
