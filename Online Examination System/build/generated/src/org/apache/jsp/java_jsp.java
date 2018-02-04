package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class java_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(' ');
      out.write('\n');

  Class.forName("oracle.jdbc.OracleDriver");
  Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rootroot");
  Integer i=(Integer)session.getAttribute("qno");
  out.println(i);
  String query="select * from java_ques where serial=?";
  PreparedStatement st=conn.prepareStatement(query);
  st.setInt(1, i);
  ResultSet rs=st.executeQuery();
  if(rs.next())
  {
   Integer prob=rs.getInt("serial");
   String ques=rs.getString("question");
   String opt1=rs.getString("option1");
   String opt2=rs.getString("option2");
   String opt3=rs.getString("option3");
   String opt4=rs.getString("option4");
   String cor=rs.getString("correct");
   session.setAttribute("prob", prob);
   session.setAttribute("ques", ques);
   session.setAttribute("opt1", opt1);
   session.setAttribute("opt2", opt2);
   session.setAttribute("opt3", opt3);
   session.setAttribute("opt4", opt4);
   session.setAttribute("correct", cor);
   session.setAttribute("i", i);
   if(((int)i) <20)
   {
       
      out.write("\n");
      out.write("       ");
      if (true) {
        _jspx_page_context.forward("prelast.jsp");
        return;
      }
      out.write("\n");
      out.write("       ");

   }
   else if(((int)i)==20)
   {
    
      out.write("\n");
      out.write("    ");
      if (true) {
        _jspx_page_context.forward("last.jsp");
        return;
      }
      out.write("\n");
      out.write("    ");

    }
  }

      out.write("\n");
      out.write("   ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
