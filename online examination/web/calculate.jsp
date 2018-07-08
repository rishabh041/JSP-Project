<%-- 
    Document   : calculate.jsp
    Created on : 24 Jun, 2016, 1:51:56 PM
    Author     : lenovo
--%><jsp:include page="background.jsp"/>
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
    int i=0 ;int x=0;int s=0;int l=0;
    while(rs.next())
    {
        l++;
       if(rs.getString("ans").equals("f"))
       {    x++;
        out.println("Question No."+l+" Your answer=Unattempted Correct Answer="+rs.getString("cans")+" <br><br>");
       }
       else
       { if(rs.getString("ans").equals(rs.getString("cans")))
           i++;
     else  
    s++;
                    out.println("Question No."+l+" Your answer="+rs.getString("ans")+" Correct Answer="+rs.getString("cans")+" <br><br>");
            }}
     if(l==0)
    {
        out.println("You have not appered for the exam");
        %>
        <jsp:forward page="user.jsp"/>
        <%
        
    }
    out.println("<br><br>"+"<b>RESULT OF JAVA QUESTIONS <br><br>Total questions="+(x+i+s)+"<br>Correct answers="+i+"<br>Wrong answers="+(s)+"<br>Unattempted="+x+"<br><br>");
        %>
        <jsp:include page="user.jsp"/>
    