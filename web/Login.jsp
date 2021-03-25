<%-- 
    Document   : Login
    Created on : 22 Mar, 2021, 10:33:24 AM
    Author     : wasee
--%>

<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="post" action="Login.jsp">
            Enter Username: <input type="text" name="uname" required><br/>
            Enter Password <input type="password" name="pass" required>
            <input type="submit" value="Login"/> <br>
            <%@include file="Date.jsp" %>
            
        </form>
        <%

            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
            if (uname != null && pass != null) {
                out.println("Welcome to User" + uname);
                out.println("Password is " + pass);
                if (uname.equals("Admin") && pass.equals("Admin")) {
        %>            
                   <p style="color:green">Login Successful</p>
                   
                   
        
                   <%   response.sendRedirect("Home.jsp");   } else {
%>
                   <p style="color:red">Login UnSuccessful Invalid Credentials </p>
            <%    }
            }
            
            %> 

            
            <% int i=2;
                if (i%2==0)
                { %>
                <p style="color:green">EVEN</p>
                
                
                    
             <%   } else { %>
             <p style="color:red">ODD</p>
             <%}%>

    </body>
    
</html>
