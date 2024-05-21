<%-- 
    Document   : WorkPost.jsp
    Created on : 18 Jan, 2024, 3:28:23 PM
    Author     : ashwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Work Post</title>
    </head>
    <body>
        <div align="center">
        <form method="POST" enctype="multipart/form-data" action="../Assets/ActionPages/WorkPostUploadAction.jsp">
            <table border="3" align="center">
                <tr>
                    <td>Photo</td>
                    <td><input type="file" required name="photo"></td>
                </tr>
                <tr>
                    <td>Details</td>
                    <td align="center">
                        <textarea name="txt_details" id="txt_details" cols="45" rows="5"></textarea></td>
                    </td>
                </tr>
                <tr>
                    <td>Duration</td>
                    <td><input required type="text box" name="duration" placeholder="Enter duration"></td>
                </tr>
                <tr>
                 <td colspan="2" align="center"><input type="submit" name="save" value="Save">
                        <input  type="reset" name="cancel" value="Cancel"></td>
                </tr>
            </table><br>
        </form>
        </div>
    </body>
</html>
          