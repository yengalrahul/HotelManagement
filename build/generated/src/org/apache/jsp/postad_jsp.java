package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.*;
import javax.sql.*;
import java.io.PrintWriter;

public final class postad_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<title>Post Ad </title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div id=\"background\">\n");
      out.write("\t\t<div id=\"page\">\n");
      out.write("\t\t\t<div id=\"header\">\n");
      out.write("\t<\t\t\t<div >\n");
      out.write("                                    <h1> TRAVEl WORLD FOR FREE</h1>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div id=\"navigation\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li class=\"selected\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"index.html\">Home</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"about.html\">About Us</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"search.jsp\">Search</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"registration.jsp\">Sign UP</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"contact.html\">Contact</a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div id=\"contents\">\n");
      out.write("\t\t\t\t<div class=\"box\">\n");
      out.write("\t\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t\t<div class=\"body\">\n");
      out.write("\t\t\t\t\t\t\t<h1>Post your Ad</h1>\n");
      out.write("                                                        \n");
      out.write("                                                        \n");
      out.write("                                                        \n");
      out.write("                                                        ");
      out.write("                \n");
      out.write("\t\t\t\t\t\t\t<pre>\n");
      out.write("        <form action=\"posted.jsp\" method=\"post\">\n");
      out.write("            \n");
      out.write("        <label class=\"main\">Name : </label>              <input type=\"text\" placeholder=\"Name\" name=\"name\">\n");
      out.write("                 \n");
      out.write("        <label class=\"main\">Mobile : </label>            <input type=\"text\" placeholder=\"Mobile\" name=\"mobile\">\n");
      out.write("                    \n");
      out.write(" \t    \n");
      out.write("        <label class=\"main\">Eamil: </label>              <input type=\"text\" placeholder=\"email\" name=\"email\">\n");
      out.write("           \n");
      out.write("        Available From:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"date\" name=\"availablefrom\"><br>\n");
      out.write("         Available To:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"date\" name=\"availableto\"><br>\n");
      out.write("         <label class=\"main\">House Number : </label>      <input type=\"text\" placeholder=\"House No\" name=\"House_no\"><br>\n");
      out.write("          <label class=\"main\">Address: </label>          <input type=\"text\" placeholder=\"address\" name=\"address\"><br>\n");
      out.write("\t\tCity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name=\"city\">\n");
      out.write("  <option value=\"Paris\">Paris</option>\n");
      out.write("  <option value=\"Lyon\">Lyon</option>\n");
      out.write("  <option value=\"Nantes\">Nantes</option>\n");
      out.write(" </select>\n");
      out.write("                <br>\n");
      out.write("                <br> \n");
      out.write("                <label class=\"main\">Dos: </label>          <input type=\"text\" placeholder=\"Services\" name=\"Dos\"><br>\n");
      out.write("                <label class=\"main\">Donot: </label>          <input type=\"text\" placeholder=\"restricted\" name=\"Donots\"><br>\n");
      out.write("          \n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Image 1 </td>\n");
      out.write("                    <td><input type=\"file\" name=\"image1\"</td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>Image 2 </td>\n");
      out.write("                    <td><input type=\"file\" name=\"image2\"</td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>Image 3 </td>\n");
      out.write("                    <td><input type=\"file\" name=\"image3\"</td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                        \n");
      out.write("                 <input type=\"submit\" value=\"Post\"style=\"background: #30122b;\n");
      out.write("  background-image: -webkit-linear-gradient(top, #30122b, #47340e);\n");
      out.write("  background-image: -moz-linear-gradient(top, #30122b, #47340e);\n");
      out.write("  background-image: -ms-linear-gradient(top, #30122b, #47340e);\n");
      out.write("  background-image: -o-linear-gradient(top, #30122b, #47340e);\n");
      out.write("  background-image: linear-gradient(to bottom, #30122b, #47340e);\n");
      out.write("  -webkit-border-radius: 28;\n");
      out.write("  -moz-border-radius: 28;\n");
      out.write("  border-radius: 28px;\n");
      out.write("  font-family: Arial;\n");
      out.write("  color: #ffffff;\n");
      out.write("  font-size: 27px;\n");
      out.write("  padding: 10px 20px 10px 20px;\n");
      out.write("  text-decoration: none;\"/>\n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("\n");
      out.write("       </form>\n");
      out.write("\n");
      out.write("        </pre>  \n");
      out.write("\t\t\t\t\t\t\t<div class=\"ads\">\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div id=\"footer\">\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<ul class=\"navigation\">\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"index.html\">Home</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li class=\"active\">\n");
      out.write("\t\t\t\t\t\t<a href=\"about.html\">About</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"news.html\">News</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"contact.html\">Contact</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t\t<div id=\"connect\">\n");
      out.write("\t\t\t\t\t<a href=\"http://pinterest.com/fwtemplates/\" target=\"_blank\" class=\"pinterest\"></a> <a href=\"http://freewebsitetemplates.com/go/facebook/\" target=\"_blank\" class=\"facebook\"></a> <a href=\"http://freewebsitetemplates.com/go/twitter/\" target=\"_blank\" class=\"twitter\"></a> <a href=\"http://freewebsitetemplates.com/go/googleplus/\" target=\"_blank\" class=\"googleplus\"></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<p>\n");
      out.write("\t\t\t\t©  2018 by FREE Living. All Rights Reserved. All Rights Reserved\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t</p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
