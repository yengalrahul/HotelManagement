<%@page import="com.sun.faces.taglib.html_basic.InputSecretTag"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
        <head>
	<meta charset="UTF-8">
	<title>Post Ad </title>
	<link rel="stylesheet" href="css/style.css" type="text/css">

    </head>
    <body>
        
        <div id="background">
		<div id="page">
			<div id="header">
				<div >
                                    <h1>Travel Registration</h1>
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
							<a href="search.jsp">Search</a>
						</li>
						
						<li>
							<a href="index.html">Login </a>
						</li>
						<li>
							<a href="registration.jsp">Sign UP</a>
						</li>
						<li>
							<a href="contact.html">Contact</a>
						</li>
					</ul>
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div id="news" class="body">
							<div class="sidebar">
								
                                                                
                                                                
								
						</div>
        
                 <%
try{

String name =request.getParameter("name");

String mobile =request.getParameter("mobile");
String email =request.getParameter("email");
String availablefrom =request.getParameter("availablefrom");
String availableto =request.getParameter("availableto");
String address =request.getParameter("address");
String city =request.getParameter("city");
String image1 =request.getParameter("image1");
String image2 =request.getParameter("image2");
String image3 =request.getParameter("image3");
String House_no =request.getParameter("House_no");
String Dos =request.getParameter("Dos");
String Donots =request.getParameter("Donots");
          
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
         Statement stmt = con.createStatement();
         String sql = "SELECT * FROM postadd where name ="+ "('"+name+"')";
        //we have to update query 
        stmt.executeUpdate("insert into postadd (name,mobile,email,availablefrom,availableto,House_no,Dos,Donots,address,city)values"
                + "('"+name+"','"+mobile+"','"+email+"','"+availablefrom+"','"+availableto+"','"+House_no+"','"+address+"','"+Dos+"','"+Donots+"','"+city+"')");
       out.println("inserted");
       // InputStream is=new InputStream(is) ;                                                     
        ResultSet rec = stmt.executeQuery(sql);
         
         %>
         
         <table width="600" border="1">
		  <tr>
                    <th width="100"> <div align="center">House Number </div></th>
		    <th width="91"> <div align="center">Name </div></th>
		    <th width="98"> <div align="center">Mobile </div></th>
		    <th width="198"> <div align="center">Email </div></th>
                 <th width="98"> <div align="center">Available From </div></th>
		    <th width="198"> <div align="center">Available To </div></th>
                 <th width="198"> <div align="center">Address </div></th>
                 <th width="98"> <div align="center">City </div></th>
                 <th width="198"> <div align="center">Dos </div></th>
                 <th width="98"> <div align="center">Do Not</div></th>
		    <th width="198"> <div align="center">Image </div></th>
		   		  </tr>	
			<%while((rec!=null) && (rec.next())) { %>
				  <tr>
				    <td><div align="center"><%=rec.getString("House_no")%></div></td>
                                     <td><%=rec.getString("name")%></td>
				    <td><%=rec.getString("mobile")%></td>
				    <td><%=rec.getString("email")%></td>
                                    <td><%=rec.getString("availablefrom")%></td>
				    <td><%=rec.getString("availableto")%></td>
                                    <td><%=rec.getString("address")%></td>
                                    <td><%=rec.getString("city")%></td>
                                    <td><%=rec.getString("Dos")%></td>
				    <td><%=rec.getString("Donots")%></td>
				    <td><%=rec.getString("image")%></td>
				    
				  </tr>
	       	<%}%>
	  	</table>      
    
    <%
}catch(Exception e){}

    
     %>
     
        </pre>                                          
                                                    
                                                    
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<div>
				<ul class="navigation">
					<li>
						<a href="index.html">Home</a>
					</li>
					<li>
						<a href="about.html">About</a>
					</li>
					
					<li class="active">
						<a href="news.html">News</a>
					</li>
					<li>
						<a href="contact.html">Contact</a>
					</li>
				</ul>
				<div id="connect">
					<a href="http://pinterest.com/fwtemplates/" target="_blank" class="pinterest"></a> <a href="http://freewebsitetemplates.com/go/facebook/" target="_blank" class="facebook"></a> <a href="http://freewebsitetemplates.com/go/twitter/" target="_blank" class="twitter"></a> <a href="http://freewebsitetemplates.com/go/googleplus/" target="_blank" class="googleplus"></a>
				</div>
			</div>
			<p>
				© 2018 Home Exchange Management System...  All Rights Reserved
			</p>
		</div>
	</div>
    </body>
</html>
