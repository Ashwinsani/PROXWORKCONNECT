<%-- 
    Document   : Request.jsp
    Created on : 16 May, 2024, 1:02:37 AM
    Author     : ashwi
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request</title>
    </head>
    <%@include file="Head.jsp" %>
    <body>
        <%
          if(request.getParameter("request")!=null){
                       String insqry="insert into tbl_workrequest(request_details,address,work_date,request_date,worker_id,user_id)values('"+request.getParameter("txt_details")+"','"+request.getParameter("txt_address")+"','"+request.getParameter("date")+"',curdate(),'"+request.getParameter("eid")+"','"+session.getAttribute("uid")+"')";
              con.executeCommand(insqry);
              
        %>
        <script>
                alert("Request Successfull");
              //  window.location="HomePageUser.jsp";
            </script>
         <%
          }
          %>
        <form method="post">
            <table border="3" align="center">
        <tr>
                        <td>Details</td>
                        <td align="center">
                            <textarea name="txt_details" id="txt_details" cols="45" rows="5"></textarea></td>
                    </tr>
                     <tr>
                        <td>Address</td>
                        <td align="center">
                            <textarea name="txt_address" id="txt_address" cols="45" rows="5"></textarea></td>
                    </tr>
                     <tr>
                    <td>Work Date</td>
                    <td>
                        <input type="date" name="date" placeholder="Enter Date of Work" required>
                    </td>
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
     <%@include file="Foot.jsp" %>
</html>