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
    </head>
    <body>
        <form method="post"  enctype="multipart/form-data" action="../Assets/ActionPages/UserUploadAction.jsp">>
            <table border="3" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <input type="text" name="name" placeholder="Enter Name"  title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$">
                        <input type="hidden" name="userid" >
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input required type="text" name="contact" placeholder="Enter Contact No"  pattern="[7-9]{1}[0-9]{9}" 
                title="Phone number with 7-9 and remaing 9 digit with 0-9">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input  required type="email" name="email" placeholder="Enter Email-Id">
                    </td>
                </tr>
                
                
                 <tr><td>Address</td>
                     <td><textarea required name="address" rows="3" cols="10"></textarea>
                 </tr>
                <tr>
                    <tr>
                    <td>DOB</td>
                    <td>
                        <input type="text" required name="dob"placeholder="Enter DateOfBirth" >
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
                        Male<input type="radio" name="gender">
                        Female<input type="radio" name="gender">
                        Others<input type="radio" name="gender">
                    </td>
                </tr>
              
                <tr>
                 <tr>
                    <td>Password</td>
                    <td>
                        <input type="password" required name="psswd" placeholder="Enter Password"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                    </td>
                </tr>
                 <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input type="password" name="repass" placeholder="Re-enter Password">
                    </td>
                </tr>
                <tr>
                    <td>District</td>
                    <td>
                        <select name="ddist" onchange="getPlace(this.value)">
                            <option value="">---select district---</option>
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
                        <select name="ddlplace" id="selplace" onchange="getlocation(this.value)">
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
                        <select name="ddlloc" id="sellocation">
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
                            
    
</html>