package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.sql.*;

public final class questionsj_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 
    
    Integer sn;
    
    sn=(Integer)session.getAttribute("sno");
        

    
    String driver="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/ppes";
    String user="root"; String password="System";
    Class.forName(driver);
    Connection conn=
    DriverManager.getConnection(url, user, password);
    String query="select * from questions where SNO=? ";
    String q="select * from questions order by SNO";
    PreparedStatement st=conn.prepareStatement(query);
    PreparedStatement s=conn.prepareStatement(q);
    st.setInt(1,(int)sn);
    ResultSet rs=st.executeQuery();
    String ques="";String a="",b="",c="",d="",crct="";
    ResultSet r=s.executeQuery();
    int x=0;
    while(r.next())
        x=r.getInt("SNO");
        session.setAttribute("jques", (x));
   if(rs.next())
   {
    if(((int)sn)<x)
    {sn++;
    session.setAttribute("sno",sn);
    
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
    
      out.write("\n");
      out.write("    ");
      if (true) {
        _jspx_page_context.forward("lastjques.jsp");
        return;
      }
      out.write(";\n");
      out.write("                 ");

}}

 conn.close();


      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <h3>ONLINE EXAMINATION SYSTEM</h3>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form method=\"post\" action=\"save.jsp\">\n");
      out.write("            ");
out.println("Q"+(sn-1)+". "+ques);
      out.write("<br>\n");
      out.write("            <input type=\"radio\" name=\"myradio\" value=\"a\"> ");
out.println(a);
      out.write("<br>\n");
      out.write("            <input type=\"radio\" name=\"myradio\" value=\"b\"> ");
out.println(b);
      out.write("<br>\n");
      out.write("            <input type=\"radio\" name=\"myradio\" value=\"c\"> ");
out.println(c);
      out.write("<br>\n");
      out.write("            <input type=\"radio\" name=\"myradio\" value=\"d\"> ");
out.println(d);
      out.write("<br>\n");
      out.write("            <input type=\"submit\" value=\"Next Question\">\n");
      out.write("            \n");
      out.write("            <input type=\"reset\" value=\"Clear\">\n");
      out.write("          </body>\n");
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
