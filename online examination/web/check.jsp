<%-- 
    Document   : check.jsp
    Created on : 23 Jun, 2016, 9:52:35 AM
    Author     : lenovo
--%>
<%@page import="java.sql.*"%>

<jsp:include page="background.jsp"/>
<%
String u=request.getParameter("user");
String p=request.getParameter("pass");
String q=request.getParameter("login");
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/ppes";
String user="root"; String password="root";
Class.forName(driver);
Connection conn=DriverManager.getConnection
   (url,user,password);

if(q.equals("User login"))

{ 
    
    String query= "select * from personal_details where Name=? and Password=?";

   PreparedStatement ps=conn.prepareStatement(query);
   ps.setString(1,u); ps.setString(2,p);
   ResultSet rs=ps.executeQuery();
   if(rs.next())
   {session.setAttribute("email", rs.getString("email"));
   session.setAttribute("name", rs.getString("Name"));
   conn.close();
   
%><jsp:forward page="user.jsp"/>
<%
       
    }
   else
   {
   out.println("<b>invalid username/password</b>");
conn.close();
   %>
   <jsp:include page="signup.jsp"/>
   <% 
   }}
       

   
else if(q.equals("Administrator Login") )
 {
   String query=
   "select * from admin_details where name=? and pass=?";
   PreparedStatement ps=conn.prepareStatement(query);
   ps.setString(1,u); ps.setString(2,p);
   ResultSet rs=ps.executeQuery();
  
 if(rs.next())
{conn.close();
%><jsp:forward page="admin.jsp"/>
<%
}
else
{conn.close();
out.println("WRONG DETAILS!!");
%>

<jsp:include page="index.html"/>
<%}
}
conn.close();
%>