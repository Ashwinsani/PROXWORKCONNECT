<%-- 
    Document   : WorkerRegistration
    Created on : 4 Jan, 2024, 11:23:48 AM
    Author     : ashwi
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Worker Registration</title>
    </head>
    <body>
        <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/WorkerUploadAction.jsp">
            <table border="3" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <input required type="text" name="name" placeholder="Enter Name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$" >
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input required type="text" name="contact" placeholder="Enter Contact No" pattern="[7-9]{1}[0-9]{9}" 
                title="Phone number with 7-9 and remaing 9 digit with 0-9">
                    </td>
                </tr>
                <tr>   
                    <td>Email</td>
                    <td>
                        <input type="email" required name="email" placeholder="Enter Email-Id">
                    </td>
                </tr>
                
                
                 <tr><td>Address</td>
                     <td><textarea name="address" rows="3" cols="10" required></textarea>
                 </tr>
                    
                 <tr>
                    <td>Photo</td>
                    <td align="center">
                        <input  required type="file" name="photo">
                    </td>
                </tr>
                <tr>
                    <td>Proof</td>
                    <td>
                        <input required type="file" name="proof" >
                    </td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td>
                        <input required  type="text" name="dob"placeholder="Enter DateOfBirth" >
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="password" name="psswd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required >
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
                        <select name="ddis" onchange="getPlace(this.value)">
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
                        <select name="ddlplace" id="selplace">
                            <option>--select--</option>
                            
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Worker Type</td>
                    <td>
                        <select name="ddltype">
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
                           
                        </script>
</html>