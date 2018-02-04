<%@page import="java.sql.*"%>
<%
    String data=request.getParameter("data");
%>
<%
  Class.forName("oracle.jdbc.OracleDriver");
  Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rootroot");
  Statement st=conn.createStatement();
  String query="select * from stu_info";
  ResultSet rs=st.executeQuery(query);
  while(rs.next())
  {
      String email=rs.getString("email");
      String pass=rs.getString("password");
      String phone=rs.getString("contact");
      if(data.equals(email) || data.equals(phone))
      {
          out.println("Your password is "+pass);
          break;
      }
      
  }
  if(!rs.next())
  {
      out.println("<center>Your contact no/email id is not found<br>You can either sign up or try again<br><br></center>");
      out.println("<center><a href='signup.html'>Sign Up</a><br><br></center>");
      out.println("<center><a href='forgot.html'>Try again</a></center>");
  }
 %>