<%@page import="java.sql.*" %>


<% String username=request.getParameter("Username");
   String name=request.getParameter("name");
   String password=request.getParameter("password");
   String gender=request.getParameter("gender");
   String email=request.getParameter("email");
   String contact=request.getParameter("contact");
   String city=request.getParameter("city");

  Class.forName("oracle.jdbc.OracleDriver");
  Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rootroot");
  String query1="select * from stu_info2 where email=?";
  String query2="select * from stu_info2 where contact=?";
  String query4="select * from stu_info2 where username=?";
  PreparedStatement st1=conn.prepareStatement(query1);
  PreparedStatement st2=conn.prepareStatement(query2);
  PreparedStatement st4=conn.prepareStatement(query4);
  st1.setString(1, email);
  st2.setString(1, contact);
  st4.setString(1, username);
  ResultSet rs1=st1.executeQuery();
  ResultSet rs2=st2.executeQuery();
  ResultSet rs4=st4.executeQuery();
  while(rs1.next()){
  if(rs1.getString("email").equals(email))
  {
      out.println("<center><h3 style='color:red;'>Your email id or phone number is already registered</h3></centre>");
      %>
      <jsp:forward page="signup2.jsp" />
      <%
  }}
   while(rs2.next()){
  if(rs2.getString("contact").equals(contact))
  {
      out.println("<center><h3 style='color:red;'>Your email id or phone number is already registered</h3></centre>");
      %>
      <jsp:forward page="signup2.jsp" />
      <%
  }}
   while(rs4.next()){
  if(rs4.getString("username").equals(username))
  {
      out.println("<center><h3 style='color:red;'>Your email id or phone number is already registered</h3></centre>");
      %>
      <jsp:forward page="singup3.jsp" />
      <%
  }}
  
   
        String query3="insert into stu_info2 values('"+name+"','"+password+"','"+email+"','"+contact+"','"+gender+"','"+city+"','"+null+"','"+username+"','"+null+"')";
        Statement st3=conn.createStatement();
        /*st3.setString(1,name);
        st3.setString(2,password);
        st3.setString(3,email);
        st3.setString(4,contact);
        st3.setString(5,gender);
        st3.setString(6,city);*/
        st3.executeUpdate(query3);
        conn.close();
        out.println("<a href='login.html'>Go to login</a>");
   
  
%>