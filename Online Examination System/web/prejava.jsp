
 <%@page import="java.sql.*"%>


<%
  String marks=(String)session.getAttribute("marks");
  if(marks!=null)
  {
      out.println("<center><h3 style='color:red'>You have already appeared in exam<br>Please signin again for retest</h3></center>");
      %>
      <jsp:include page="signup.html" />
      <%
  }
  else
 {
    %>
    <jsp:forward page="java.jsp" />
    <%
 }
  


%>