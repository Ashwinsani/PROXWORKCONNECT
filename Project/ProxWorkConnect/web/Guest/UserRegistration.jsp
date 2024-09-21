
<%-- 
    Document   : UserRegistration
    Created on : 11 Dec, 2023, 10:26:41 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
     <style>
         .bg-img{
            background-image:url("../Assets/Templates/Main/images/user reg2.jpg");
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
            .button{
                background-color: #e0e032c2;
            }
        
        </style>                
    </head>
     
       <div class="bg-img">
            <div style="background-color: #000000b8 !important;">
              
    <%@include file="Head.jsp" %>
       <body>
        <div class="font">
    <body>
        <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/UserUploadAction.jsp">
            
            <table align="center" cellpadding="15">
                <tr>
                    <td>Name</td>
                    <td>
                        <input required type="text" class="text-box" name="name" placeholder="Enter Name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$">
                   </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input required type="text" class="text-box" name="contact" placeholder="Enter Contact No" title="Phone number with 7-9 and remaining 9 digit with 0-9" pattern="[7-9]{1}[0-9]{9}">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input required type="email"  class="text-box"  class="text-box" name="email" placeholder="Enter Email-Id">
                    </td>
                </tr>
                
                
                 <tr><td>Address</td>
                     <td><textarea name="address" rows="3" cols="10" class="text-box"  required></textarea>
                 </tr>
                
                    <tr>
                    <td>DOB</td>
                    <td>
                    <input required class="text-box" type="date" name="dob" placeholder="Enter DateOfBirth" required pattern="^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/\d{4}$" title="Please enter a date in DD/MM/YYYY format.">

                    </td>
                </tr>
                 <tr>
                    <td>Photo</td>
                    <td align="center">
                        <input required type="file" name="photo">
                    </td>
                </tr>
                <tr>
                  <td>Gender</td>
                    <td>
                        Male<input required type="radio" name="gender">
                        Female<input type="radio" name="gender">
                        Others<input type="radio" name="gender">
                    </td>
                </tr>
              
       <tr>
                 <tr>
                    <td>Password</td>
                    <td>
                        <input type="password" class="text-box" required name="psswd" placeholder="Enter Password"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                    </td>
                </tr>
                 <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input type="password"  name="repass" placeholder="Re-enter Password" class="text-box">
                    </td>
                </tr>
                <tr>
                    <td>District</td>
                    <td>
                        <select name="ddldis" onchange="getPlace(this.value)" required>
                            <option value="">--select--</option>
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
                </tr>
                <tr>
                    <td>Place</td>
                    <td>

<select name="ddlplace" id="selplace" onchange="getLocation(this.value)" required>
                            <option value="">--select--</option>
                            <%
                              String selqry="select * from tbl_place";
                              ResultSet rs=con.selectCommand(selqry);
                              while(rs.next())
                              {
                              
                            %>
                            <option value="<%=rs.getString("place_id")%>"><%=rs.getString("place_name")%></option>
                            <%
                              }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td>
                        <select name="ddlloc" id="sellocation" required>
                            <option value="">--select--</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="save" value="Save">
                        <input type="reset" name="cancel" value="Cancel">
                    </td>
                </tr>
            </table>
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
                             function getLocation(did)
                            {
                              
                           //  alert(did);  
                                $.ajax({url:"../Assets/AjaxPages/AjaxLocation.jsp?pid=" + did,
                                success: function(result){
                                    $("#sellocation").html(result);
                                }
                            })
                            }
                           
                        </script>
          <br><br><br><br><br><br><br><br>
                    
    <%@include file="Foot.jsp" %>
       </div>
        </div> 
       </div>
