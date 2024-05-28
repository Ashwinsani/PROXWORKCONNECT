<%-- 
    Document   : Wishlist
    Created on : 19 May, 2024, 11:39:38 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Wishlist</title>
    </head>
    <div class="bg-img">
        <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    <style>
        .fa-heart {
            font-size: 20px;
            margin-left: -76px;
            margin-right: 55px;
            cursor: pointer;
        }
        .red {
            color: red;
        }
    </style>
    <script>
        function toggleHeartColor(element) {
            element.classList.toggle('red');
        }
    </script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
             .bg-img{
            background-image:url("../Assets/Templates/Main/images/userhome1.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
            }
            .cont {
                    display: flex;
                    width: 200px;
                    justify-content: space-between;
            }
            .sub {
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    gap: 7px;
                    padding: 22px;
                    background-color: #E1F5FE;
                    border-radius: 17px;
            }
            .main {
                    display: flex;
                    flex-wrap: wrap;
                    justify-content: center;
                    align-items: center;
                    gap: 2rem;
            }
        </style>
    </head>
    
    <body>
        
        <div class="main">
        <%
             String sqry="select * from tbl_workpost p inner join tbl_wishlist l on l.workpost_id=p.workpost_id inner join tbl_worker w on w.worker_id=p.worker_id";  
             ResultSet r=con.selectCommand(sqry);
                
                 int i=0;
                 while(r.next())
                 {
                     i++;
                     %>
                     
                         <div class="sub">
                             <div><img src="../Assets/Files/WorkPostPhoto/<%=r.getString("workpost_image")%>" height="120" width="120"></div>
                             <div class="cont"><div>Details</div><div><%=r.getString("workpost_details")%></div></div>
                             <div class="cont"><div>Duration</div><div><%=r.getString("workpost_duration")%></div></div>
                             <div class="cont"><div>Worker</div><div><%=r.getString("worker_name")%></div></div>
                             <div class="cont"><div>Contact</div><div><%=r.getString("worker_contact")%></div></div>
                             <div class="cont"><div>Post Date</div><div><%=r.getString("workpost_date")%></div></div>
                             <div><a href="ViewWorkGallery.jsp?sid=<%=r.getString("workpost_id")%> ">View Gallery</a></div>
                             <div>
                                    <%
                                     String clr = "";
                                     String post_id=r.getString("workpost_id");
                                     String selqry="select count(*) as count from tbl_wishlist where workpost_id='"+post_id+"' and user_id='"+session.getAttribute("uid")+"'";
                                     //out.print(sqry);
                                     ResultSet rs=con.selectCommand(selqry);   
                                     rs.next();
                                     int count = Integer.parseInt(rs.getString("count"));
                                     if(count>0)
                                     {
                                     clr = "red";
                                     }
                                     %>
                                     <i class="fa-regular fa-heart <%=clr%>" style="font-size: 20px;font-size: 20px;margin-left: -76px;margin-right: 55px;" onclick="wishList(<%=r.getString("workpost_id")%>),toggleHeartColor(this)"></i>
                                  <a href="Booking.jsp?bid=<%=r.getString("workpost_id")%> ">Book Now</a></div>
                         </div>
                     <%
                 }
                
                  %>
                   </div>
    </body>
    <script src="../Assets/JQuery/jQuery.js"></script>         
                            <script>
                              function wishList(did)
                            {
                                $.ajax({url:"../Assets/AjaxPages/AjaxWishlist.jsp?pid=" + did,
                                success: function(result){
                                 window.location="Wishlist.jsp";   
                                }
                            })
                            }
                           
                        </script>
                        <br><br><br>
                         <%@include file="Foot.jsp" %>
        </div>
        </div>
</html>