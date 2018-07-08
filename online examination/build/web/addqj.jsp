<%-- 
    Document   : addqj.jsp
    Created on : 28 Jun, 2016, 8:57:00 AM
    Author     : lenovo
--%>
<jsp:include page="background.jsp"></jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <h4>Add your question here</h4>
    </head>
    <body>
       
        <form method="post" action="addj.jsp">
            Question<input type="text" name="ques"><br><br>
            Answer1<input type="text" name="ans1"><br><br>
            Answer2 <input type="text" name="ans2"><br><br>
            Answer3<input type="text" name="ans3"><br><br>
            Answer4 <input type="text" name="ans4"><br><br>
            Correct Answer<input type="text" name="correct"><br><br>
            <INPUT TYPE="submit" >
            <input type="reset">
        
        </form>
    </body>
</html>
