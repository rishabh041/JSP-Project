<jsp:include page="background.jsp"/>
<%@ page import="java.io.*,java.util.*" %>
<%@page import="java.sql.*"%>
<% out.println((request.getParameter("myradio")));
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="root";
    Class.forName(driver);
    Connection conn=
    DriverManager.getConnection(url, user, password);
    String query="delete from cquestions where SNO=?";
    String q="select * from cquestions where SNO=?";
    
    PreparedStatement s=conn.prepareStatement(q);
    if(request.getParameter("myradio")!=null)
    {
    s.setInt(1,(int)((Integer.parseInt((request.getParameter("myradio"))))));
    ResultSet rs=s.executeQuery();
    if(rs.next())
    {
    
    PreparedStatement st=conn.prepareStatement(query);
    st.setInt(1,(int)(Integer.parseInt((request.getParameter("myradio")))));
    st.executeUpdate();
    session.setAttribute("adm", 7);
    }
    else
    {
        session.setAttribute("adm", 8);
    }}
    else
     session.setAttribute("adm", 8);
    %>
    <jsp:forward page="admin.jsp"></jsp:forward>
    
    
    
    