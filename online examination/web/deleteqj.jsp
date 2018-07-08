<jsp:include page="background.jsp"/>
<%@ page import="java.io.*,java.util.*" %>
<%@page import="java.sql.*"%>
<%  String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="root";
    Class.forName(driver);
    Connection conn=
    DriverManager.getConnection(url, user, password);
    String query="select * from questions";
    PreparedStatement st=conn.prepareStatement(query);
    ResultSet rs=st.executeQuery();
    out.println("<body><form method='post' action='deletej.jsp'>");
    
     
    while(rs.next())
    {
        if(rs.getString("QUESTION")!=null)
        { 
    String s=""+rs.getInt("SNO");
     out.println("<input type='radio' name='myradio' value="+s+">"+rs.getString("QUESTION"));
     out.println("<br><br>");
    }}
    out.println("<input type='submit'/>");
    %>
    
    