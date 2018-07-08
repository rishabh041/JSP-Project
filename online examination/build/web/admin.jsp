<%-- 
    Document   : admin.jsp
    Created on : 23 Jun, 2016, 11:00:58 AM
    Author     : lenovo
--%><jsp:include page="background.jsp"/>
<%
    if(session.getAttribute("adm")!=null)
    {
        if((Integer)(session.getAttribute("adm"))==1)
            out.println("<b>Java quetion added</b>");
       else if((Integer)(session.getAttribute("adm"))==2)
            out.println("<b>C++ quetion added</b>");
       else if((Integer)(session.getAttribute("adm"))==3)
           out.println("<b>User deleted !!!");
        else if((Integer)(session.getAttribute("adm"))==4)
           out.println("<b>User not deleted !!!");
         else if((Integer)(session.getAttribute("adm"))==5)
           out.println("<b>Java question deleted !!!");
        else if((Integer)(session.getAttribute("adm"))==6)
           out.println("<b>Java question not deleted !!!");
        else if((Integer)(session.getAttribute("adm"))==7)
           out.println("<b>C++ question deleted !!!");
        else if((Integer)(session.getAttribute("adm"))==8)
           out.println("<b>C++ question not deleted !!!");
        session.setAttribute("adm",0);
    }
    %>
<html>
    <head>
    <tite>
        <h4>Administrator's Account<br><br></h4>
    </tite>
    </head>
    <body>
        <a href='addqj.jsp'>
            <button>Add Java Questions</button>
        </a>
        <a href="addqc.jsp">
            <button> Add C++ Questions</button>
        </a>
        <a href="deleteqj.jsp">
            <button> Delete Java Questions</button>
        </a>
        <a href="deleteqc.jsp">
            <button>Delete C++ Questions</button>
        </a>
        <a href="delete.jsp">
            <button>Delete Account</button>
        </a>
         <a href='index.html'>
            <button>Sign out</button>
         </a>
        
        
        
</html>
