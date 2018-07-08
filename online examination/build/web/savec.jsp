<%-- 
    Document   : save.jsp
    Created on : 24 Jun, 2016, 12:27:21 AM
    Author     : lenovo
--%>
<jsp:include page="background.jsp"/>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="root";
    Class.forName(driver);
    Connection conn=
    DriverManager.getConnection(url, user, password);
    String query ="insert into canswers(`email`,`QNO`,`ans`,`cans`) values(?,?,?,?) ";
    String h="";if(((String)request.getParameter("myradio"))==null)
        h="f";
    else
        h=(String)request.getParameter("myradio");
    PreparedStatement st=conn.prepareStatement(query);
    st.setString(1,(String)session.getAttribute("email"));
    st.setInt(2,((Integer)(session.getAttribute("sno")))-1);
    st.setString(3,h);
    st.setString(4,(String)session.getAttribute("ans"));
    
    st.executeUpdate();
     conn.close();
     %>
     <jsp:forward page="questionsc.jsp"/>
    
    