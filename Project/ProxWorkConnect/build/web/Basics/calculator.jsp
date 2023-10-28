<%-- 
    Document   : calculator
    Created on : 26 Oct, 2023, 11:09:34 AM
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
            int num1=0,num2=0,result=0;
            if(request.getParameter("add")!=null)
            {
                num1=Integer.parseInt(request.getParameter("num1"));  
                num2=Integer.parseInt(request.getParameter("num2"));
                result=num1+num2;
            }
            if(request.getParameter("sub")!=null)
            {
                num1=Integer.parseInt(request.getParameter("num1"));  
                num2=Integer.parseInt(request.getParameter("num2"));
                result=num1-num2;
            }
            if(request.getParameter("multi")!=null)
            {
                num1=Integer.parseInt(request.getParameter("num1"));  
                num2=Integer.parseInt(request.getParameter("num2"));
                result=num1*num2;
            }
            if(request.getParameter("div")!=null)
            {
                num1=Integer.parseInt(request.getParameter("num1"));  
                num2=Integer.parseInt(request.getParameter("num2"));
                result=num1/num2;
            }
            %>
        <form method="post">
            <table border="3">
                <tr>
                    <td>Enter number 1</td>
                    <td><input type="text" name="num1" value="<%=num1%>"></td>
              
                </tr>
                <tr>
                    <td>enter number 2</td>
                    <td><input type="text" name="num2" value="<%=num2%>"></td>
                  
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="+" name="add">
                         <input type="submit" value="-" name="sub">
                          <input type="submit" value="*" name="multi">
                           <input type="submit" value="/" name="div">
                    </td>
                </tr>
                <tr>
                    <td>result</td>
                    <td><%=result%></td>
                </tr>
            </table>
        </form>
    </body>
</html>
