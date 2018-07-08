<jsp:include page="background.jsp"/>
<!DOCTYPE html>
<%if(session.getAttribute("same")!=null)
{
    if((Integer)session.getAttribute("same")==1)
    out.println(" <b>email already registered</b>");
}session.setAttribute("same", 0);
%>
<html>
    <head>
        <title>Sign up Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>signup here</h1>
        <form action="data_save.jsp" method="post">
            username<input type="text" name="user"><br>    
            password<input type="password" name="pass"><br>    
            mobile<input type="number" name="mobile"><br>    
            email<input type="email" name="email"><br>  
            city<input type="text" name="city"><br>    
            <input type="submit" value="create account">
        </form>
        <a href="index.html">Login...</a>
    </body>
</html>















