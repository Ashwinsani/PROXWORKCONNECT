<%-- 
    Document   : Searchworker.jsp
    Created on : 15 Feb, 2024, 11:03:25 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Searchworker</title>
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
                    background-color: #65720866;
                    border-radius: 17px;
            }
            .main {
                    display: flex;
                    flex-wrap: wrap;
                    justify-content: center;
                    align-items: center;
                    gap: 2rem;
            }
         .bg-img{
            background-image:url("../Assets/Templates/Main/images/userhome1.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
            }
             .text-box{
                background-color: transparent;
                width: 275px;
                height:50px; 
                color:white;
                border-radius: 2px;
            }    
                
                
            .font{
                font-family: "Poppins", sans-serif;
                color: #ffef19b8;
            }
                  
            .font1{
                font-family: "Poppins", sans-serif;
                color: white;
                font-weight: bold;
            }
            .button{
                background-color: #e0e032c2;
            }
            </style>
    </head>
    <div class="bg-img">
         <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    <body>
        <br><br><br>
        <div class="font">
        <form method="post">
        <table cellpadding="10" align="center">
         <tr>
                    <td>District</td>
                    <td>
                        <select name="ddldis" onchange="getPlace(this.value)" required>
                            <option>--select--</option>
                            <%
                              String selqry1="select * from tbl_district";
                              ResultSet rs1=con.selectCommand(selqry1);
                              while(rs1.next())
                              {
                              
                            %>
                            <option value="<%=rs1.getString("district_id")%>"><%=rs1.getString("district_name")%></option>
                            <%
                              }
                            %>
                            
                        </select>
                    </td>
                <tr>
                    <td>Place</td>
                    <td>
                        <select name="ddlplace" id="selplace" required>
                            <option>--select--</option>
                            
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Worker Type</td>
                    <td>
                        <select name="ddltype" required>
                            <option>--select--</option>
                            <%
                              String selqry2="select * from tbl_workertype";
                              ResultSet rs2=con.selectCommand(selqry2);
                              while(rs2.next())
                              {
                              
                            %>
                            <option value="<%=rs2.getString("workertype_id")%>"><%=rs2.getString("workertype_name")%></option>
                            <%
                              }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="search" value="Search" class="button">
                        <input type="reset" name="cancel" value="Cancel" class="button">
                    </td>
                </tr>
        </table><br>
        <div class="main">
           
               <!-- <tr>
                    <th class="font1">Sl.no</th>
                    <th  class="font1">Name</th>
                    <th  class="font1">Workertype</th>
                    <th  class="font1">Contact</th>
                    <th  class="font1">Works</th>
                    <th  class="font1">Request</th>
                </tr>-->
                <%
                  if(request.getParameter("search")!=null){
                 String selectqry="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id inner join tbl_district d on d.district_id=p.district_id where p.place_id='"+request.getParameter("ddlplace")+"' and t.workertype_id='"+request.getParameter("ddltype")+"'";
                 ResultSet r=con.selectCommand(selectqry);
                
                 int i=0;
                 while(r.next())
                 {
                     i++;
                     %>
                      <div class="sub">
                   <!--  <tr>
                         <td class="font"><%=i%></td>-->
                    <div><img src="../Assets/Files/WorkerPhoto/<%=r.getString("worker_photo")%>" height="120" width="120"></div>
                   <div class="cont"><div>Name</div><div><%=r.getString("worker_name")%></div></div>
                   <div class="cont"><div>Workertype</div><div><%=r.getString("workertype_name")%></div></div>
                   <div class="cont"><div>Contact</div><div><%=r.getString("worker_contact")%></div></div>
                
                    <div><a href="ViewWork.jsp?sid=<%=r.getString("worker_id")%> ">View Works</a></div>
                    <div><a href="ViewReview.jsp?gid=<%=r.getString("worker_id")%> ">View Ratings</a></div>
                    <div><a href="Request.jsp?rid=<%=r.getString("worker_id")%>">Request Now</a></div>
                      </div>
                  <%
                 }
                  }
                  %>
        </div>
              
    </form>
    </body>
    <script src="../Assets/JQuery/jQuery.js"></script>         
                            <script>
                              function getPlace(did)
                            {
                              
                           //  alert(did);  
                                $.ajax({url:"../Assets/AjaxPages/AjaxPlaces.jsp?pid=" + did,
                                success: function(result){
                                    $("#selplace").html(result);
                                }
                            })
                            }
                           
                        </script>
                        <br><br><br><br>
         </div>
                         <%@include file="Foot.jsp" %>
    </div>
</html>
