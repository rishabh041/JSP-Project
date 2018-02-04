 <%@page import="java.sql.*"%>
<%
  Class.forName("oracle.jdbc.OracleDriver");
  Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rootroot");
  Integer i=(Integer)session.getAttribute("qno");
  String query="select * from c_ques2 where serial=?";
  PreparedStatement st=conn.prepareStatement(query);
  st.setInt(1, i);
  ResultSet rs=st.executeQuery();
  String ques="",opt1="",opt2="",opt3="",opt4="",cor="";
  Integer prob=0;
  if(rs.next())
  {
   if(((int)i) <2)
 
   {i++;
   session.setAttribute("qno",i++);
   prob=rs.getInt("serial");
   ques=rs.getString("question");
   opt1=rs.getString("option1");
   opt2=rs.getString("option2");
   opt3=rs.getString("option3");
   opt4=rs.getString("option4");
   cor=rs.getString("correct");
   session.setAttribute("correct", cor);
   }
   else  if(((int)i)==2)
   {
       prob=rs.getInt("serial");
       ques=rs.getString("question");
       opt1=rs.getString("option1");
       opt2=rs.getString("option2");
       opt3=rs.getString("option3");
       opt4=rs.getString("option4");
       cor=rs.getString("correct");
       session.setAttribute("prob",prob);
       session.setAttribute("ques",ques);
       session.setAttribute("opt1",opt1);
       session.setAttribute("opt2",opt2);
       session.setAttribute("opt3",opt3);
       session.setAttribute("opt4",opt4);
       session.setAttribute("correct", cor);
    %>
    <jsp:forward page="prelastc.jsp" ></jsp:forward>
    <%
    }
  }
conn.close();
%>
   <html>
    <body>
        <% out.println(prob+". "+ques+"<br><br>"); %>
         <form action='calculation2.jsp' method='post'>
            <br><br>
            <input type='radio' name=option value="a"><% out.println(" "+opt1+"<br>"); %>
            <input type='radio' name=option value="b"><% out.println(" "+opt2+"<br>"); %>
            <input type='radio' name=option value="c"><% out.println(" "+opt3+"<br>"); %>
            <input type='radio' name=option value="d"><% out.println(" "+opt4+"<br>"); %>
            <br><input type='submit' value='next'>
            </form>
    </body>
</html>
