<%
Integer count=(Integer)session.getAttribute("count");
if(request.getParameter("option")!=null)
{    
String ans=request.getParameter("option");
String correct=(String)session.getAttribute("correct");
if(ans.equals(correct))
{
    count++;
}
session.setAttribute("count", count);
}

%>
<jsp:forward page="java.jsp" />