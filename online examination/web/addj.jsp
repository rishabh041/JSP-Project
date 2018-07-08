<%-- 
    Document   : addj.jsp
    Created on : 25 Jun, 2016, 3:52:25 AM
    Author     : lenovo
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="root";
    Class.forName(driver);
    Connection conn=DriverManager.getConnection(url, user, password);
    String query ="insert into questions values(?,?,?,?,?,?,?) ";
    String query1="select* from questions order by SNO";
    PreparedStatement s=conn.prepareStatement(query);
    PreparedStatement s1=conn.prepareStatement(query1);
    ResultSet rs=s1.executeQuery();
    int sn=0;
    while(rs.next())
    sn=rs.getInt("SNO");
    s.setInt(1, (sn+1));
    s.setString(2,request.getParameter("ques"));
    s.setString(3,request.getParameter("ans1"));
    s.setString(4,request.getParameter("ans2"));
    s.setString(5,request.getParameter("ans3"));
    s.setString(6,request.getParameter("ans4"));
    s.setString(7,request.getParameter("correct"));
    s.executeUpdate();
    conn.close();
    %>
    <%
    session.setAttribute("adm", 1);
%>
    <jsp:forward page="admin.jsp"/>
    
