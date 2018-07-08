<%-- 
    Document   : questionsj.jsp
    Created on : 23 Jun, 2016, 9:40:52 PM
    Author     : lenovo
--%>
<jsp:include page="background.jsp"/>
<%@ page import="java.io.*,java.util.*" %>
<%@page import="java.sql.*"%>
<% 
    
    Integer sn=new Integer(1);
    
    sn=(Integer)session.getAttribute("sno");
         Integer qn=(Integer)session.getAttribute("qno");

    
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="root";
    Class.forName(driver);
    Connection conn=
    DriverManager.getConnection(url, user, password);
    String query="select * from cquestions where SNO=? ";
    String q="select * from cquestions order by SNO";
    PreparedStatement st=conn.prepareStatement(query);
    PreparedStatement s=conn.prepareStatement(q);
    st.setInt(1,(int)sn);
    ResultSet rs=st.executeQuery();
    String ques="";String a="",b="",c="",d="",crct="";
    ResultSet r=s.executeQuery();
    int x=0;
    while(r.next())
        x=r.getInt("SNO");
        session.setAttribute("cques", (x));
   if(rs.next() && rs.getString("question")!=null)
   {
    if(((int)sn)<x)
    {
    qn++;
    session.setAttribute("qno", qn);
    
     ques=rs.getString("QUESTION");
    a=rs.getString("ANS1");
    b=rs.getString("ANS2");
    c=rs.getString("ANS3");
    d=rs.getString("ANS4");
            
    crct=rs.getString("CORRECT");
    session.setAttribute("ans", crct);
    } 
    else if(((int)sn)==x)
    {
    %>
    <jsp:forward page="lastcques.jsp"></jsp:forward>;
                 <%
}
    
}
else
{
sn++;
    session.setAttribute("sno",sn);
                 %><jsp:forward page="questionsc.jsp"/>
                 <%
}
    sn++;
    session.setAttribute("sno",sn);
 conn.close();

%>
<html>
    <head>
    <h3>ONLINE EXAMINATION SYSTEM</h3>
    </head>
    <body>
        <form method="post" action="savec.jsp">
            <%out.println("Q"+(qn-1)+". "+ques);%><br>
            <input type="radio" name="myradio" value="a"> <%out.println(a);%><br>
            <input type="radio" name="myradio" value="b"> <%out.println(b);%><br>
            <input type="radio" name="myradio" value="c"> <%out.println(c);%><br>
            <input type="radio" name="myradio" value="d"> <%out.println(d);%><br>
            <input type="submit" value="Next Question">
            
            <input type="reset" value="Clear">
          </body>

    