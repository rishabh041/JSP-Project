<jsp:include page="background.jsp"/>
<%
    
    String f=request.getParameter("set");
    if(f.equals("JAVA"))
    { session.setAttribute("sno",1);
    session.setAttribute("qno",1);
    %>
        <jsp:forward page="questj.jsp"/>
        <%}
    else if(f.equals("C++"));
    {   session.setAttribute("sno",1);
session.setAttribute("qno",1);
        %>
        <jsp:forward page="quesc.jsp"/>
        
   <% }%>
    


