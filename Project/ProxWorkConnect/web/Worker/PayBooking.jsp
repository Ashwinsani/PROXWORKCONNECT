<%-- 
    Document   : PayBooking
    Created on : 19 May, 2024, 11:42:43 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          if(request.getParameter("request")!=null){
              String amount=request.getParameter("amt");
              String remarks=request.getParameter("txt_remarks");
              String upsqry="update tbl_workpostrequest set request_amount='"+amount+"',request_remarks='"+remarks+"' where request_id='"+request.getParameter("nid")+"'";
              con.executeCommand(upsqry);
        %>
        <script>
                alert("Payment Requested");
                window.location="BookingAction.jsp";
            </script>
         <%
          }
          %>
        <form method="post">
            <table border="3" align="center">
        <tr>
                        <td>Amount</td>
                        <td align="center">
                            <input type="text" name="amt" placeholder="Enter amount to pay"></td>
                            
                    </tr>
                    <tr>
                        <td>Remarks</td>
                        <td align="center">
                            <textarea name="txt_remarks" cols="45" rows="5"></textarea></td>
                            
                    </tr>
                     
                     
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="request" value="Request">
                        <input type="reset" name="cancel" value="Cancel">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>