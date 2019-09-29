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
				<div >
                                    <h1>Home Exchange management system</h1>
				</div>
				<div id="navigation">
					<ul>
						<li>
							<a href="index.html">Home</a>
						</li>
						<li>
							<a href="about.html">About</a>
						</li>
						<li>
							<a href="search.jsp">Search</a>
						</li>
						
						
						<li>
							<a href="registration.jsp">Join Us</a>
						</li>
						<li>
							<a href="contact.html">Contact</a>
						</li>
					</ul>
				</div>
			</div>
        <div style="margin-left: 500px;">
 <%-- <a href="allot.jsp">Insert data in allot</a>--%>
  <br>
  
   <a href="search.jsp">Enter Booking Details...</a>
    <br>
 
  <br>
  
  
   </div>
        
        <h1 style="margin-left: 200px;">DELETE USER</h1>
        <div>
            <pre>
            <form action="delete.jsp" method="post">
                
                <input type="text" name="name" placeholder="enter user name">
                
                <input type="submit" value="delete user"/>
                
            </form>
          </pre>
        </div>
        <h1 style="margin-left: 200px;">Insert USER</h1>
           <div>
            <pre> 
              
            <form action="insertuser.jsp" method="post">
                
        <label class="main">Name : </label>              <input type="text" placeholder="Name" name="name">
                 
        <label class="main">Mobile : </label>            <input type="text" placeholder="Mobile" name="mob">
                    
        Gender:              <input type="radio" name="gender" value="male" checked> Male<input type="radio" name="gender" value="female">Female <input type="radio" name="gender" value="other"> Other
            
        <label class="main">Eamil: </label>              <input type="text" placeholder="email" name="email">
           
        <label class="main">Password: </label>           <input type="password" placeholder="password" name="pass"><br>
        <label class="main">Conpassword</label> &nbsp;        <input type="password" placeholder="Conformpassword" name="conpass"></br>
        Birthday:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="bday"><br>
          <label class="main">Address: </label>          <input type="text" placeholder="address" name="add"><br>
		City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select  name="city">
  <option value="Paris">Paris</option>
  <option value="Lyon">Lyon</option>
  <option value="Nantes">Nantes</option>
 </select>
                
                <input type="submit" value="insert user"/>
                
            </form>
          </pre>
        </div>
           <%--  <h1 style="margin-left: 200px;">delete staff</h1>
         <div>
            <pre>
            <form action="deletestaff.jsp" method="post">
                
                <input type="text" name="name" placeholder="enter name">
                
<input type="submit" value="delete staff"/>--%>
                
            </form>
          </pre>
        </div>
        
       
    </body>
</html>
