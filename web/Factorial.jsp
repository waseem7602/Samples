<%-- 
    Document   : Factorial
    Created on : 23 Mar, 2021, 3:03:06 PM
    Author     : wasee
--%>

<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="get" action="">
          Enter a Number:  <input type="text" name="fact" required>
          <input type="submit" value="Find Factorial">
            
        </form>
        <%! int FindFactorial(int n){
            if(n==0)
            {
                return 1;
            }
            int num=1;
            while(n>0){
                num=num*n;
                n--;
            }
            return num;
        }
        
        %>
        
        <%  
            String n=request.getParameter("fact");
            int n1=0;
            if(n!=null)
            {
                 n1=Integer.parseInt(n);
                //out.println("Factorial of "+n1+" is "+FindFactorial(n1));
            }
            
        
        
        %>
        
       This is from Expression <%= FindFactorial(n1)%>
        
        
    </body>
</html>
