 <%@page import="java.sql.*"%>

<%
    String username=request.getParameter("username");
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rootroot");
    String query1="delete from stu_info2 where username=?";
    String query2="select * from stu_info2";
    PreparedStatement st1=conn.prepareStatement(query1);
    Statement st2=conn.createStatement();
    st1.setString(1, username);
    ResultSet rs2=st2.executeQuery(query2);
    while(rs2.next())
    {
        String user=rs2.getString("username");
        if(user.equals(username)){
        st1.execute();
        %>
        <jsp:forward page="del_stu3.jsp" />
        <%
         }
    }
    out.println("<center>No such user found</center>");
    out.println("<center><br><a href='adminTasks.jsp'><button>More Queries</button></a></center><br><br>");
    %>
    <jsp:include page="del_stu.jsp" />
    <%

%>