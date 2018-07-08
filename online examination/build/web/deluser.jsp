<jsp:include page="background.jsp"/>
<%@ page import="java.io.*,java.util.*" %>
<%@page import="java.sql.*"%>
<%  String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="root";
    Class.forName(driver);
    Connection conn1=DriverManager.getConnection(url, user, password);
    String query1="delete from personal_details where email=?";
    String query2="select * from personal_details where email=?";
    String query3="delete from canswers where email=?";
    String query4="delete from janswers where email=?";
    PreparedStatement st=conn1.prepareStatement(query1);
    PreparedStatement st1=conn1.prepareStatement(query2);
    PreparedStatement st2=conn1.prepareStatement(query3);
    PreparedStatement st3=conn1.prepareStatement(query4);
    st.setString(1, request.getParameter("name"));
    st1.setString(1, request.getParameter("name"));
    st2.setString(1, request.getParameter("name"));
    st3.setString(1, request.getParameter("name"));
    ResultSet rs=st1.executeQuery();
    if(rs.next())
    session.setAttribute("adm", 3);
    
    else
    session.setAttribute("adm",4);
    st3.executeUpdate();
    st2.executeUpdate();
    st.executeUpdate();
    
    %>
    <jsp:forward page="admin.jsp"></jsp:forward>
    