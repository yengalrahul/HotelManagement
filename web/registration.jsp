<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Travel Registration</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
        
       
        <script>
   
       function trim(s) 
       {
           return s.replace( /^s*/, "" ).replace( /s*$/, "" );
       }
    function validate()
    {
    	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        var phoneNo=/^\d{10}$/;
       
    	if(trim(document.frmRegistration.name.value)=="")
    	{
    		var div_ref = document.all("errName");
            div_ref.style.visibility = "visible";
            document.frmRegistration.name.focus();
            document.frmRegistration.name.value=="";
            return false;
       	}
        else if(!phoneNo.test(document.frmRegistration.mob.value))
         {
             
             var div_ref2 = document.all("errName");
             div_ref2.style.visibility = "hidden"; 
    		 var div_ref1 = document.all("errMobileno");
             div_ref1.style.visibility = "visible"; 
             document.frmRegistration.mob.focus();
             document.frmRegistration.mob.value=="";
           return false;
         }
         
         else if(document.frmRegistration.gender.value== "-1")
         {
             var div_ref4 = document.all("errName");
             div_ref4.style.visibility = "hidden"; 
    		 var div_ref3 = document.all("errMobileno");
             div_ref3.style.visibility = "visible"; 
    		 var div_ref2 = document.all("errGender");
             div_ref2.style.visibility = "visible"; 
    		 document.frmRegistration.gender.focus();
             document.frmRegistration.gender.value=="";
           return false;
         }
        else if(!filter.test(document.frmRegistration.email.value))
         {
             var div_ref = document.all("errName");
            div_ref.style.visibility = "hidden";
    		 var div_ref4 = document.all("errMailid");
             div_ref4.style.visibility = "visible"; 
             document.frmRegistration.email.focus();
             document.frmRegistration.email.value=="";
           return false;
         }
         
         
          else if(trim(document.frmRegistration.pass.value)=="")
         {
             var div_ref4 = document.all("errMailid");
             div_ref4.style.visibility = "hidden";
    		 var div_ref3 = document.all("errpassword");
             div_ref3.style.visibility = "visible"; 
             document.frmRegistration.pass.focus();
             document.frmRegistration.pass.value=="";
           return false;
         }
         else if(trim(document.frmRegistration.conpass.value)=="")
         {
             var div_ref4 = document.all("errMailid");
             div_ref4.style.visibility = "hidden";
    		 var div_ref3 = document.all("errpassword1");
             div_ref3.style.visibility = "visible"; 
             document.frmRegistration.conpass.focus();
             document.frmRegistration.conpass.value=="";
           return false;
         }
         if(trim(document.frmRegistration.add.value)=="")
    	{
            var div_ref4 = document.all("errMailid");
             div_ref4.style.visibility = "hidden";
    		 var div_ref3 = document.all("errpassword1");
             div_ref3.style.visibility = "visible"; 
            var div_ref = document.all("errAddress");
            div_ref.style.visibility = "visible";
            document.frmRegistration.add.focus();
            document.frmRegistration.add.value=="";
            return false;
       	}
    }
        
      </script>  
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
          <pre>
        <form action="register" method="post" onSubmit="return validate();" name="frmRegistration">
            
        <label class="main">Name : </label>              <input type="text" placeholder="Name" name="name" id="name">
    <td><div id="errName" style="visibility: hidden;"><label style="color: #FF0000"> Enter Name</label></div>
</td>
                 
<label class="main">Mobile : </label>            <input type="text" placeholder="Mobile" name="mob" id="mob">
        <td style="padding-left:25px "><div id="errMobileno" style="visibility: hidden;"><label style="color: #FF0000">Enter Mobile Number</label></div></td>
                    
        Gender: <input type="radio" name="gender" value="male" checked> Male<input type="radio" name="gender" value="female">Female <input type="radio" name="gender" value="other"> Other
                
            
                <label class="main">Eamil: </label>              <input type="text" placeholder="email" name="email" id="email">
                <td><div id="errMailid" style="visibility: hidden;"><label style="color: #FF0000"> Enter valid Email Id</label></div></td>
           
                <label class="main">Password: </label>           <input type="password" placeholder="password" name="pass" id="pass"><br>
                <td><div id="errpassword" style="visibility: hidden;"><label style="color: #FF0000"> Enter Password</label></div></td>
                <label class="main">Conpassword</label> &nbsp;        <input type="password" placeholder="Conformpassword" name="conpass" id="conpass"></br>
                <td><div id="errpassword1" style="visibility: hidden;"><label style="color: #FF0000"> Enter Password</label></div></td>
        Birthday:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="bday"><br>
        <label class="main">Address: </label>          <input type="text" placeholder="address" name="add" id="add"><br>
        <td><div id="errAddress" style="visibility: hidden;"><label style="color: #FF0000"> Enter Address</label></div>
</td>
		City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="city">
  <option value="Paris">Paris</option>
  <option value="Lyon">Lyon</option>
  <option value="Nantes">Nantes</option>
 </select>
                        
                 <input type="submit" value="Register"style="background: #30122b;
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
