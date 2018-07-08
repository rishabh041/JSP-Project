-%><jsp:include page="background.jsp"/>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="root";
    Class.forName(driver);
    Connection conn=
    DriverManager.getConnection(url, user, password);
    String query1="select * from janswers  where email=? order by QNO";
    
    PreparedStatement st=conn.prepareStatement(query1);
    st.setString(1, (String)session.getAttribute("email"));
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
        out.println("<b>Already appeared for Java Examination</b>");
%><jsp:include page="choice.jsp"/>
<%
    }
else
{
%>
<jsp:forward page="questionsj.jsp"/>
<%
}
    %>