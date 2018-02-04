
 <%@page import="java.sql.*"%>


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
}
out.println("<center><br><br><br><h3>You have answered "+count+" question(s) correctly"
        + "<br><br><br><a href='login.html'>Sign Out</a></h3>");

%>  
<%
  Class.forName("oracle.jdbc.OracleDriver");
  Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rootroot");
  Statement st=conn.createStatement();
  String email=(String)session.getAttribute("email");
  String query="update stu_info2 set marks='"+count+"' where email='"+email+"'";
  
  st.executeUpdate(query);
%>

<% out.println("<center><br><a href='exam_choice.jsp'><button>Give another test</button></a></center>");     
    out.println("<center><br><a href='login.html'><button>Logout</button></a></center>");     


%>