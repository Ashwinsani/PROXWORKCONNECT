<%-- 
    Document   : userregistration.jsp
    Created on : 15 Dec, 2023, 1:42:46 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>User registration</title>
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
        <form method="post"  enctype="multipart/form-data" action="../Assets/ActionPages/UserUploadAction.jsp" >
            <br> 
           
            <table align="center" cellpadding="15">
                
                <tr>
                    <td>Name</td>
                    <td>
                        <input type="text" name="name" class="text-box" placeholder="Enter Name"  title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$"
                               
                    </td>
                </tr>
                
                <tr>
                    <td>Contact</td>
                    <td>
                        <input required type="text" class="text-box" name="contact" placeholder="Enter Contact No"  pattern="[7-9]{1}[0-9]{9}" 
                title="Phone number with 7-9 and remaing 9 digit with 0-9">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input  required type="email" class="text-box" name="email" placeholder="Enter Email-Id">
                    </td>
                </tr>
                
                
                 <tr><td>Address</td>
                     <td><textarea required name="address" rows="3" cols="10" class="text-box"></textarea>
                 </tr>
                <tr>
                    <tr>
                    <td>DOB</td>
                    <td>
                        <input type="text" class="text-box" required name="dob"placeholder="Enter DateOfBirth" >
                    </td>
                </tr>
                 <tr>
                    <td>Photo</td>
                    <td align="center">
                        <input  required type="file" name="photo">
                    </td>
                </tr>
                <tr>
                  <td>Gender</td>
                    <td>
                        Male<input type="radio" name="gender">
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
                        <select name="ddist" onchange="getPlace(this.value)"class="text-box">
                            <option value="" ">---select district---</option>
                                     <%
                        String selqry="select * from tbl_district";
                        ResultSet rs=con.selectCommand(selqry);
                        while(rs.next())
                        {
                            %>
                            <option value="<%=rs.getString("district_id")%>"><%=rs.getString("district_name")%></option>
                              <%
                        }
                        %>                        
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Place</td>
                    <td>
                        <select name="ddlplace" class="text-box" id="selplace" onchange="getlocation(this.value)">
                             <option value="">--select--</option>
                              <%
                        String selqry1="select * from tbl_place";
                        ResultSet rs1=con.selectCommand(selqry1);
                        while(rs1.next())
                        {
                            %>
                            <option value="<%=rs1.getString("place_id")%>"><%=rs1.getString("place_name")%></option>
                              <%
                        }
                        %>                        
                           
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td>
                        <select name="ddlloc" class="text-box" id="sellocation">
                            <option value="">--select--</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" >
                        <input type="submit" name="save" value="Save" class="button">
                        <input type="reset" name="cancel" value="Cancel" class="button">
                    </td>
                </tr>
                
            </table> 
            
        </form>
          
     </body>
      <script src="../Assets/JQuery/jQuery.js"></script>         
                            <script>
                              function getPlace(did)
                            {
                              
                           // alert(did);  
                                $.ajax({url:"../Assets/AjaxPages/AjaxPlaces.jsp?pid=" + did,
                                success: function(result){
                                    //alert(result);
                                    $("#selplace").html(result);
                                }
                            })
                            }
                           
                          function getlocation(did)
                            {
                              
                           // alert(did);  
                                $.ajax({url:"../Assets/AjaxPages/AjaxLocation.jsp?pid=" + did,
                                success: function(result){
                                    //alert(result);
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
</html>