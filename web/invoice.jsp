

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="header">
				<div id="logo">
					<a href="index.html"><img src="images/logo.png" alt="LOGO" height="112" width="118"></a>
				</div>
				<div id="navigation">
					<ul>
						<li class="selected">
							<a href="index.html">Home</a>
						</li>
						<li>
							<a href="about.html">About Us</a>
						</li>
						<li>
							<a href="search.html">Search</a>
						</li>
						
						
						<li>
							<a href="registration.jsp">Sign UP</a>
						</li>
						<li>
							<a href="contact.html">Contact</a>
						</li>
					</ul>
				</div>
			</div>
        
        <div style=" margin-left: 1000px;">
            
            <a href="logout.jsp">Logout</a>
        </div>
           <%
try{

String n =(String)session.getAttribute("uname");
//out.println(n);
          
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
         Statement stmt = con.createStatement();
         
        ResultSet rs = stmt.executeQuery("select * from invoice where name = '"+n+"'");
        
  rs.next();
  String name = rs.getString("name");
  String address = rs.getString("address");
  String city= rs.getString("city");
  String House_no = rs.getString("House_no");
  
  %>
  <div style="margin-left: 300px">     <%
  out.println("name  : "+name);
  out.println("<br></br>");
  out.println(" address  : "+address);
  out.println("<br></br>");
  
  out.println("city  :"+city);
  out.println("<br></br>");
  out.println("House_no  :"+House_no);
  
  %> </div><%
    
    
}catch(Exception e){}
    
     %>
          
     
     
               <div style=" margin-left: 550px;">
            
            <a href="booking.jsp">Go For Booking</a>
        </div>
            
    </body>
</html>
