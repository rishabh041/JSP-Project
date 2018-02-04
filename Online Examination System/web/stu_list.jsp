<%@page import="java.sql.*"%>
<%
  Class.forName("oracle.jdbc.OracleDriver");
  Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rootroot");
  String query="select * from stu_info2";
  Statement st=conn.createStatement();
  ResultSet rs=st.executeQuery(query);
  int serial=1;
  while(rs.next())
  {
      String username=rs.getString("username");
      String name=rs.getString("name");
      String contact=rs.getString("contact");
      String email=rs.getString("email");
      String gender=rs.getString("gender");
      String city=rs.getString("city");
      String marks=rs.getString("marks");
      
      out.println("<center><br><br>"+serial+".   Username: "+username+"<br>Name: "+name+"<br>Contact: "+contact+"<br>Email: "+email+"<br>Gender: "+gender+"<br>City: "+city+"<br>Marks: "+marks+"</center>");
     serial++; 
  }
  out.println("<center><br><br><a href='adminTasks.jsp'><button>More Queries</button></a><br><br><a href='login.html'><button>Logout</button></a></center>");
 %>