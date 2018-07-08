<%-- 
    Document   : data_save.jsp
    Created on : 25 Jun, 2016, 5:08:54 AM
    Author     : lenovo
--%>
<jsp:include page="background.jsp"/>
<%@ page import="java.io.*,java.util.*" %>
<%@page import="java.sql.*"%>
<%
    
  
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="root";
    Class.forName(driver);
    Connection conn1=DriverManager.getConnection(url, user, password);
    Connection conn2=DriverManager.getConnection(url, user, password);
    String query="insert into personal_details values(?,?,?,?,?) ";
    String query1="select * from personal_details where email=?";
    PreparedStatement st=conn1.prepareStatement(query1);
    PreparedStatement st1=conn2.prepareStatement(query);
    st.setString(1,request.getParameter("email"));
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
       session.setAttribute("same",1);
       conn1.close();
       %>
       <jsp:forward page="signup.jsp"/>
       <%
    }
else
{
    st1.setString(1,(request.getParameter("user")));
    st1.setString(2,(request.getParameter("pass")));
    st1.setLong(4,Long.parseLong(request.getParameter("mobile")));
    st1.setString(3,(request.getParameter("email")));
    st1.setString(5,(request.getParameter("city")));
    st1.executeUpdate();
    conn2.close();
}


   %>
   <jsp:forward page="index.html"/>
    