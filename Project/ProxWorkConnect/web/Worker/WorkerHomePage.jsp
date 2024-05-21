<%-- 
    Document   : Homepagew
    Created on : 12 Jan, 2024, 4:04:22 PM
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
        <h1>Hello  <%=session.getAttribute("wname")%></h1>
        <a href="Workerprofile.jsp">My Profile</a><br>
        <a href="EditProfileW.jsp">Edit profile</a><br>
        <a href="ChangePassword.jsp">Change Password</a><br>
        <a href="WorkPost.jsp">Add work</a> <br>
        <a href="WorkPostDisplay.jsp">Uploaded works</a> 
    </body>
</html>
