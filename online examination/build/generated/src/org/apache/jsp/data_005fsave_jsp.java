package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.sql.*;

public final class data_005fsave_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "background.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="System";
    Class.forName(driver);
    Connection conn=DriverManager.getConnection(url, user, password);
    String query="insert into personal_details values(?,?,?,?,?) ";
    String query1="select * from personal_details where name=?";
    PreparedStatement st=conn.prepareStatement(query1);
    PreparedStatement st1=conn.prepareStatement(query);
    st.setString(1,request.getParameter("user"));
    ResultSet rs=st.executeQuery();
    if(rs.next())
    {
       out.println("email already regisered");
       conn.close();
       
      out.write("\n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "signup.jsp", out, false);
      out.write("\n");
      out.write("       ");

    }
else
{
    st1.setString(1,(request.getParameter("user")));
    st1.setString(2,(request.getParameter("pass")));
    st1.setLong(3,Long.parseLong(request.getParameter("mobile")));
    st1.setString(4,(request.getParameter("email")));
    st1.setString(5,(request.getParameter("city")));
    st1.executeUpdate();
   conn.close();
}
   
      out.write("\n");
      out.write("   ");
      if (true) {
        _jspx_page_context.forward("index.html");
        return;
      }
      out.write("\n");
      out.write("    ");
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
