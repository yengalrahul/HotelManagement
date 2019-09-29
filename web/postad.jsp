<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import=" java.io.PrintWriter" %>

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
	<			<div >
                                    <h1> TRAVEl WORLD FOR FREE</h1>
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
						<div class="body">
							<h1>Post your Ad</h1>
                                                        
                                                        
                                                        
                                                        <%--    <%
try{

String n =(String)session.getAttribute("name");
//out.println(n);
          
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
         Statement stmt = con.createStatement();
         
        ResultSet rs = stmt.executeQuery("select * from sregister where sid = '"+n+"'");
        
  rs.next();
  
    
}catch(Exception e){}
    
     %>         
               
                                                        <%                                       
                PreparedStatement st=null;
                String quer=null;
                PrintWriter out1=null;
 
		 
		 try
		 {
		 
		 MyDB db = new MyDB();
           Connection con =db.getCon();

            ResultSet rs;

String Emailid=(String)session.getAttribute("EMAILID");
response.setContentType("text/html;charset=UTF-8");
 out1 = response.getWriter();
 quer="select * from sreg where email='"+Emailid+"'" ;

	   st = con.prepareStatement(quer);
	   rs = st.executeQuery();
		
		 if(rs.next()){
			
			getServletContext().getRequestDispatcher("/posted.jsp").forward(request, response);
		 
		 }
		 else{
		
		 	
		 	
			 getServletContext().getRequestDispatcher("/home.html").forward(request, response);
		 	
		 	
		
		 }

		 }

		 catch(Exception e)
		 {}
                                  %>      --%>                
							<pre>
        <form action="posted.jsp" method="post">
            
        <label class="main">Name : </label>              <input type="text" placeholder="Name" name="name">
                 
        <label class="main">Mobile : </label>            <input type="text" placeholder="Mobile" name="mobile">
                    
 	    
        <label class="main">Eamil: </label>              <input type="text" placeholder="email" name="email">
           
        Available From:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="availablefrom"><br>
         Available To:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="availableto"><br>
         <label class="main">House Number : </label>     <input type="text" placeholder="House No" name="House_no"><br>
          <label class="main">Address: </label>          <input type="text" placeholder="address" name="address"><br>
		City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="city">
  <option value="Paris">Paris</option>
  <option value="Lyon">Lyon</option>
  <option value="Nantes">Nantes</option>
                </select><br>
                <label class="main">Dos: </label>        <input type="text" placeholder="Services" name="Dos"><br>
                <label class="main">Donot: </label>      <input type="text" placeholder="restricted" name="Donots"><br>
          
                
                <tr>
                    <td>Image 1 </td>
                    <td><input type="file" name="image1"</td>
                    
                </tr>
                 <tr>
                    <td>Image 2 </td>
                    <td><input type="file" name="image2"</td>
                    
                </tr>
                 <tr>
                    <td>Image 3 </td>
                    <td><input type="file" name="image3"</td>
                    
                </tr>
                        
                 <input type="submit" value="Post"style="background: #30122b;
  background-image: -webkit-linear-gradient(top, #30122b, #47340e);
  background-image: -moz-linear-gradient(top, #30122b, #47340e);
  background-image: -ms-linear-gradient(top, #30122b, #47340e);
  background-image: -o-linear-gradient(top, #30122b, #47340e);
  background-image: linear-gradient(to bottom, #30122b, #47340e);
  -webkit-border-radius: 28;
  -moz-border-radius: 28;
  border-radius: 28px;
  font-family: Arial;
  color: #ffffff;
  font-size: 27px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;"/>
                 
                 
                 

       </form>

        </pre>  
							<div class="ads">
								
							</div>
							
						</div>
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
					<li class="active">
						<a href="about.html">About</a>
					</li>
					
					<li>
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
				©  2018 by FREE Living. All Rights Reserved. All Rights Reserved
			
			</p>
		</div>
	</div>
</body>
</html>
