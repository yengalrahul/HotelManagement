package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class booking_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("\t<title>Travel Registration</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div id=\"background\">\n");
      out.write("\t\t<div id=\"page\">\n");
      out.write("\t\t\t<div id=\"header\">\n");
      out.write("\t\t\t\t<div >\n");
      out.write("                                    <h1>Travel Registration</h1>\n");
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
      out.write("\t\t\t\t\t\t\t<a href=\"index.html\">Login </a>\n");
      out.write("\t\t\t\t\t\t</li>\n");
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
      out.write("\t\t\t\t\t\t<div id=\"news\" class=\"body\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"sidebar\">\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("                                                                \n");
      out.write("                                                                \n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");

	String keyword = "";
	if(request.getParameter("txtKeyword") != null) {
		keyword = request.getParameter("txtKeyword");
	}

      out.write('\n');
      out.write('\n');
      out.write('	');

	Connection con = null;
	Statement s = null;
	
	try {
                String txtKeyword1 =request.getParameter("txtKeyword1");
                
		Class.forName("com.mysql.jdbc.Driver");
		
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
		
		s = con.createStatement();
		
		String sql = "SELECT * FROM postadd  where House_no ="+ "('"+txtKeyword1+"')";//where city=paris";
		System.out.println(sql);
                out.println("Thank You For Booking.");
                out.println("Booking Confirmed");
                out.println("Please check your email for Booking details");
		
		ResultSet rec = s.executeQuery(sql);
		
      out.write("\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <br>\n");
      out.write("                <strong>Booking Details</strong>\n");
      out.write("                <table align=\"center\" width=\"600\" border=\"1\">\n");
      out.write("\t\t  <tr>\n");
      out.write("\t\t    <th width=\"91\"> <div align=\"center\">House Number </div></th>\n");
      out.write("\t\t    \n");
      out.write("        <th width=\"98\"> <div align=\"center\">Available From </div></th>\n");
      out.write("        <th width=\"98\"> <div align=\"center\">Available To </div></th>\n");
      out.write("        <th width=\"198\"> <div align=\"center\">Address </div></th>\n");
      out.write("\t\t    <th width=\"198\"> <div align=\"center\">City </div></th>\n");
      out.write("\t\t   \t\t  </tr>\t\n");
      out.write("\t\t\t");
while((rec!=null) && (rec.next())) { 
      out.write("\n");
      out.write("                        \n");
      out.write("<tr>\n");
      out.write("\t\t\t\t    <td><div align=\"center\">");
      out.print(rec.getString("House_no"));
      out.write("</div></td>\n");
      out.write("\t\t\t\t\n");
      out.write("                                     <td>");
      out.print(rec.getString("availablefrom"));
      out.write("</td>\n");
      out.write("                                      <td>");
      out.print(rec.getString("availableto"));
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print(rec.getString("address"));
      out.write("</td>\n");
      out.write("\t\t\t\t    <td>");
      out.print(rec.getString("city"));
      out.write("</td>\n");
      out.write("\t\t\t\t    \n");
      out.write("\t\t\t\t  </tr>\n");
      out.write("                                  \n");
      out.write("                                                                ");
}
      out.write("\n");
      out.write("\t  \t</table>      \n");
      out.write("                                                                </pre>\n");
      out.write("                \n");
      out.write("               \n");
      out.write("\t    ");
	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
		try {
			if(s!=null){
				s.close();
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("                       \n");
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
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t<a href=\"about.html\">About</a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<li class=\"active\">\n");
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
      out.write("\t\t\t\t© 2018 Home Exchange Management System...  All Rights Reserved\n");
      out.write("\t\t\t</p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>");
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
