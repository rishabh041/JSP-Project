<jsp:include page="background.jsp"/>
<%@ page import="java.io.*,java.util.*" %>
<%@page import="java.sql.*"%>

<%
    
    
    Integer sn=new Integer(0);
    
    sn=(Integer)session.getAttribute("sno");
    Integer qn=new Integer(0);
    
    qn=(Integer)session.getAttribute("qno");
             

    
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="root";
    Class.forName(driver);
    Connection conn=
    DriverManager.getConnection(url, user, password);
    String query="select * from cquestions where SNO=? ";
    PreparedStatement st=conn.prepareStatement(query);
    st.setInt(1,(int)sn);
    ResultSet rs=st.executeQuery();
    String ques="";String a="",b="",c="",d="",crct="";
    
    
    if(rs.next())
    {
    ques=rs.getString("QUESTION");
    a=rs.getString("ANS1");
    b=rs.getString("ANS2");
    c=rs.getString("ANS3");
    d=rs.getString("ANS4");
    crct=rs.getString("CORRECT");
    session.setAttribute("ans", crct);
    
    } conn.close();  %><html>
    <head>
    <h3>ONLINE EXAMINATION SYSTEM</h3>
    </head>
    <body>
        <form method="post" action="savelastc.jsp">
            <%out.println("Q"+qn+". "+ques);%><br>
            <input type="radio" name="myradio" value="a"> <%out.println(a);%><br>
            <input type="radio" name="myradio" value="b"> <%out.println(b);%><br>
            <input type="radio" name="myradio" value="c"> <%out.println(c);%><br>
            <input type="radio" name="myradio" value="d"> <%out.println(d);%><br>
            <input type="submit" value="Final Submit">
            
            <input type="reset" value="Clear">
          </body>
        
