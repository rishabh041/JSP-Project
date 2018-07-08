<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="background.jsp"/>
<%
    out.println("REACHED");String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="root";
    Class.forName(driver);
    Connection conn=
    DriverManager.getConnection(url, user, password);
    String query ="insert into canswers(`email`,`QNO`,`ans`,`cans`) values(?,?,?,?) ";
    String h="";
    if((String)request.getParameter("myradio")==null)
        h="f";
    else 
        h=(String)request.getParameter("myradio");
    PreparedStatement st=conn.prepareStatement(query);
    st.setString(1,(String)session.getAttribute("email"));
    st.setInt(2,(Integer)(session.getAttribute("qno")));
    st.setString(3,h);
    st.setString(4,(String)session.getAttribute("ans"));
    st.executeUpdate();
     conn.close();
     %>
     <jsp:forward page="calculatec.jsp"></jsp:forward>