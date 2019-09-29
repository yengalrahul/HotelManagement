<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Details</title>
    </head>
    <body>
                 <%
try{

String name =request.getParameter("name");
String email =request.getParameter("email");
String mob =request.getParameter("mob");
String add =request.getParameter("add");
String bday =request.getParameter("bday");
String gender =request.getParameter("gender");
String pass =request.getParameter("pass");
String city =request.getParameter("city");
          
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostel","root","");
         Statement stmt = con.createStatement();
         
        stmt.executeUpdate("insert into sregister (name,mobile,address,email,password,bday,gender,city)values"
                + "('"+name+"','"+mob+"','"+add+"','"+email+"','"+pass+"','"+bday+"','"+gender+"','"+city+"')");
         out.println("inserted");
    
    
}catch(Exception e){}

    
     %>
    </body>
</html>
