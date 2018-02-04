<%
    Integer prob=(Integer)session.getAttribute("prob");
    String ques=(String)session.getAttribute("ques");
    String opt1=(String)session.getAttribute("opt1");
    String opt2=(String)session.getAttribute("opt2");
    String opt3=(String)session.getAttribute("opt3");
    String opt4=(String)session.getAttribute("opt4");
    String cor=(String)session.getAttribute("correct");
%>

<html>
    <body>
        <% out.println(prob+". "+ques+"<br><br>"); %>
         <form action='finalcal.jsp' method='post'>
            <br><br>
            <input type='radio' name=option value="a"><% out.println(" "+opt1+"<br>"); %>
            <input type='radio' name=option value="b"><% out.println(" "+opt2+"<br>"); %>
            <input type='radio' name=option value="c"><% out.println(" "+opt3+"<br>"); %>
            <input type='radio' name=option value="d"><% out.println(" "+opt4+"<br>"); %>
            <br><input type='submit' value='submit'>
            </form>
    </body>
</html>