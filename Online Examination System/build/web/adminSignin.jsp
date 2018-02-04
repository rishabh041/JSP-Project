<%
String admin=request.getParameter("admin");
String password=request.getParameter("pass");    
if(admin.equals("shubham") && password.equals("pass"))
{
    %>
    <jsp:forward page="helloadmin.jsp"/>
    <%
        
   
}

else{
    out.println("Incorrect Id or Password");
    out.println("<br>");
    out.println("<a href='admin.html'><h4 style='color:red; text-align=center;'>Try Again</h4></a>");
}


%>