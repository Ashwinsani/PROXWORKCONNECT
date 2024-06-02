<%-- 
    Document   : AdminHomepage.jsp
    Created on : 18 Jan, 2024, 11:38:21 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Homepage</title>
        <style>
            .bg-img {
                background-image: url("../Assets/Templates/Main/images/Admin.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
            }
            h1 {
                font-family: "Audiowide", sans-serif;
            }
            .banner {
                font-family: 'Lovato Light', serif;
                font-size: 100px;
                text-align: center;
                color: #ffef19b8;
                margin: 50px 0;
                font-style: italic;
            }
            .button {
                background-color: yellow; /* Yellow background */
                border: none; /* Remove borders */
                color: white; /* White text */
                padding: 15px 32px; /* Some padding */
                text-align: center; /* Center the text */
                text-decoration: none; /* Remove underline */
                display: inline-block; /* Make the button inline-block */
                font-size: 16px; /* Increase font size */
                margin: 4px 2px; /* Some margin */
                cursor: pointer; /* Pointer/hand icon */
                border-radius: 8px; /* Rounded corners */
                transition: background-color 0.3s ease, transform 0.3s ease; /* Animation */
            }
            .button:hover {
                background-color: whitesmoke; /* Darker background on hover */
                transform: scale(1.05); /* Slightly increase size on hover */
            }
            .button:active {
                background-color: white; /* Even darker background on click */
                transform: scale(0.95); /* Slightly decrease size on click */
            }
            .fontw {
                font-family: "Poppins", sans-serif;
                color: white;
            }
            .center-text {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="bg-img">
            <div style="background-color: #000000b8 !important;">
                <%@include file="Head.jsp" %>
                <h1 class="banner">Welcome <%=session.getAttribute("aname")%></h1>
                <%
                    String s = "select sum(request_amount) as amount from tbl_workrequest where request_status='7'";
                    ResultSet rs = con.selectCommand(s);
                    rs.next();
                    int total_amt = Integer.parseInt(rs.getString("amount"));
                    double perc = total_amt * 0.05;

                    String sel = "select sum(workpost_amount) as amount from tbl_workpost p inner join tbl_workpostrequest wp on wp.workpost_id=p.workpost_id where wp.request_status='6'";
                    ResultSet rs1 = con.selectCommand(sel);
                    rs1.next();
                    int amt = Integer.parseInt(rs1.getString("amount"));
                    double percent = amt * 0.05;
                    double total = perc + percent;

                    String selqry = "select count(user_id) as count from tbl_user where user_status='1'";
                    ResultSet rs2 = con.selectCommand(selqry);
                    rs2.next();
                    int reg_amt = Integer.parseInt(rs2.getString("count"));
                    double reg = 149 * reg_amt;
                %>
                <div class="fontw center-text">
                    <p>Overall Allowance: <%= total %> <a href="Commission.jsp">Know more details</a></p>
                    <p>Total SignUp Fee: <%= reg %></p>
                    <div>
                        <a href="../index.html" class="button">LOG OUT</a>
                    </div>
                </div>
                    <br><br><br>
                <%@include file="Foot.jsp" %>
            </div>
        </div>
    </body>
</html>
