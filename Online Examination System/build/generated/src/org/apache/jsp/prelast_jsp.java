package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class prelast_jsp extends org.apache.jasper.runtime.HttpJspBase
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


    Integer prob=(Integer)session.getAttribute("prob");
    String ques=(String)session.getAttribute("ques");
    String opt1=(String)session.getAttribute("opt1");
    String opt2=(String)session.getAttribute("opt2");
    String opt3=(String)session.getAttribute("opt3");
    String opt4=(String)session.getAttribute("opt4");
    String cor=(String)session.getAttribute("correct");
    Integer i=(Integer)session.getAttribute("i");

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        ");
 out.println(prob+". "+ques+"<br><br>"); 
      out.write("\n");
      out.write("         <form action='question.jsp' method='post'>\n");
      out.write("            <br><br>\n");
      out.write("            <input type='radio' name=option value=\"a\">");
 out.println(" "+opt1+"<br>"); 
      out.write("\n");
      out.write("            <input type='radio' name=option value=\"b\">");
 out.println(" "+opt2+"<br>"); 
      out.write("\n");
      out.write("            <input type='radio' name=option value=\"c\">");
 out.println(" "+opt3+"<br>"); 
      out.write("\n");
      out.write("            <input type='radio' name=option value=\"d\">");
 out.println(" "+opt4+"<br>"); 
      out.write("\n");
      out.write("            <br><input type='submit' value='next'>\n");
      out.write("            </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      if (true) {
        _jspx_page_context.forward("java.jsp");
        return;
      }
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
