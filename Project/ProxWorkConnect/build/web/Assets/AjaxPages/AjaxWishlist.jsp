<%-- 
    Document   : AjaxWishlist
    Created on : 21 May, 2024, 3:53:32 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wishlist</title>
    </head>
    <body>
        <%
            String sqry="select * from tbl_wishlist where workpost_id='"+request.getParameter("pid")+"' and user_id='"+session.getAttribute("uid")+"'";
            ResultSet rs=con.selectCommand(sqry);   
            if(rs.next())
            {
              String delqry="delete from tbl_wishlist where workpost_id='"+request.getParameter("pid")+"' and user_id='"+session.getAttribute("uid")+"'";
              con.executeCommand(delqry);
//              out.println("delete");
              
            }
            else
            {
              String inqry="insert into tbl_wishlist(user_id,workpost_id)values('"+session.getAttribute("uid")+"','"+request.getParameter("pid")+"')";
              con.executeCommand(inqry); 
//              out.println(inqry);
            }
        %>
    </body>
</html>

