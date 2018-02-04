<%@page import="java.sql.*"%>
<%
    String user=request.getParameter("user");
    String password=request.getParameter("password");
%>
<%
  Class.forName("oracle.jdbc.OracleDriver");
  Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rootroot");
  Statement st=conn.createStatement();
  String query="select * from stu_info2";
  ResultSet rs=st.executeQuery(query);
  while(rs.next())
  {
      String name=rs.getString("username");
      String pass=rs.getString("password");
      if(user.equals(name) && password.equals(pass))
      {
          session.setAttribute("marks",(String)rs.getString("marks"));
          session.setAttribute("email",(String)rs.getString("email"));

          %> 
          
          <jsp:forward page="welcome.jsp"/>
          <%
      }
  }
   if(!rs.next())
  {
    out.println("<center>Incorrect userneme or password. You can either try again or signup</center><br><br>");
     out.println("<center><a href='signup.html'>Sign Up</a><br><br></center>");
     out.println("<center><a href='login.html'>Try again</a></center>");
    
  }
    conn.close();


%>