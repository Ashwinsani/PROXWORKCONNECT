<%-- 
    Document   : largest smallest
    Created on : 26 Oct, 2023, 12:06:07 PM
    Author     : ashwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            int num1=0,num2=0,num3=0,large=0,small=0;
            if(request.getParameter("result")!=null)
            {
                num1=Integer.parseInt(request.getParameter("num1"));
                 num2=Integer.parseInt(request.getParameter("num2"));
                  num3=Integer.parseInt(request.getParameter("num3"));
            
                if(num1>num2 && num1>num3)
                {
                    large=num1;
                    if(num2>num3)
                    {
                        small=num3;
                    }
                    else
                    {
                        small=num2;
                    }
                }
                else if(num2>num1 && num2>num3)
                {
                    large=num2;
                    if(num1>num3)
                    {
                        small=num3;
                    }
                    else
                    {
                        small=num1;
                    }
                }
                else
                {
                    large=num3;
                    if(num2>num1)
                    {
                        small=num1;
                    }
                    else
                    {
                        small=num2;
                    }
                }
                
            }
                
        %>
        <form method="post">
            <table border="3">
                <tr>
                    <td>Enter number 1</td>
                    <td><input type="text" name="num1" value="<%=num1%>"</td>
                </tr>      
                <tr>
                    <td>Enter number 2</td>
                    <td><input type="text" name="num2" value="<%=num2%>"</td>
                </tr>
                 <tr>
                    <td>Enter number 3</td>
                    <td><input type="text" name="num3" value="<%=num3%>"</td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit"  name="result" value="Result">
                    </td>
                </tr>
                 <tr>
                    <td>largest</td>
                    <td><%=large%></td>
                     <tr>
                    <td>Smallest</td>
                    <td><%=small%></td>
                </tr>
                </tr>
        </form>
    </body>
</html>
