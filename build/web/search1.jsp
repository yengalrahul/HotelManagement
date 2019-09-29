
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<html>
<head>
        <meta charset="UTF-8">
	<title>Travel Registration</title>
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
	String keyword = "";
	if(request.getParameter("txtKeyword") != null) {
		keyword = request.getParameter("txtKeyword");
	}
%>
<pre>
	<form name="frmSearch1" method="get" action="booking.jsp">
	  <table width="599" border="1">
	    <tr>
	      <th>Enter House Number For Booking :
	      <input name="txtKeyword1" type="text" id="txtKeyword1" value="<%=keyword%>">
	      <input   type="submit" value="Booking"></th>
	    </tr>
	  </table>

              
	</form>
</pre>

	<%
	Connection con = null;
	Statement s = null;
	
	try {
                String txtKeyword =request.getParameter("txtKeyword");
                
		Class.forName("com.mysql.jdbc.Driver");
		
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
		
		s = con.createStatement();
		
		String sql = "SELECT * FROM postadd  where city ="+ "('"+txtKeyword+"')";//where city=paris";
		System.out.println(sql);
		
		ResultSet rec = s.executeQuery(sql);
		%>
		<table width="600" border="1">
		  <tr>
		    <th width="91"> <div align="center">House Number </div></th>
		    <th width="98"> <div align="center">Name</div></th>
        <th width="98"> <div align="center">Available From </div></th>
        <th width="98"> <div align="center">Available To </div></th>
        <th width="198"> <div align="center">Address </div></th>
		    <th width="198"> <div align="center">City </div></th>
		   		  </tr>	
			<%while((rec!=null) && (rec.next())) { %>
                        
<tr>
				    <td><div align="center"><%=rec.getString("House_no")%></div></td>
				    <td><%=rec.getString("name")%></td>
                                     <td><%=rec.getString("availablefrom")%></td>
                                      <td><%=rec.getString("availableto")%></td>
                                    <td><%=rec.getString("address")%></td>
				    <td><%=rec.getString("city")%></td>
				    
				  </tr>
                                  
                                                                <%}%>
	  	</table>      
                                                                </pre>
	    <%	
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
	%>
        
        
                       
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