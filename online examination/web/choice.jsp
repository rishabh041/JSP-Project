
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<jsp:include page="background.jsp"/>
<html>
    <head>
        <title>Online Quiz Test </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <h3> Select your choice</h3 >
    </head>
    <body><form action ="questions.jsp" method ="post">
           Question set :-<select name="set">
		<option>JAVA</option>
                <option>C++</option></select>
           <br> <input type="submit" value="Start!">
           
             </form>
                
         <a href="user.jsp"><button>
            Go Back
            </button>
    </body>
</html>

   