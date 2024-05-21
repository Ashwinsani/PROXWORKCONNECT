<%-- 
    Document   : Location.jsp
    Created on : 7 Dec, 2023, 10:50:40 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Location</title>
    </head>
    <body>
      <%
       if(request.getParameter("btnsave") != null)  
       {
            String insqry = "insert into tbl_location(location_name,place_id)values('"+request.getParameter("txtloc")+"','"+request.getParameter("selpla")+"')";
            con.executeCommand(insqry);
       }
       if (request.getParameter("did") != null) {
                String delqry = "delete from tbl_location where location_id='" + request.getParameter("did") + "'";
                con.executeCommand(delqry);
                response.sendRedirect("Location.jsp");
       }
        %>
       <form method="post">
            <table border="1" align="center">
                <tr>
                    <td>District</td>
                    <td>
                        <select name="ddist" onchange="getPlace(this.value)">
                            <option>---select district---</option>
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
                <tr>
                    <td>place</td>
                    <td>
                <select name="selpla" id="selplace">
                    <option>--select place--</option>
                    
                </select>
                    </td>
                </tr>
                <tr>
                    <td>Location</td>
                     <td><input type="text" name="txtloc"></td>
                     <td><input type='hidden' name='locationid'></td>
                </tr> 
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btnsave" value="Save">
                        <input  type="reset" name="btnc" value="Cancel"></td>
                </tr>
            </table><br>
                <table border="1" align="center">
                <tr>
                    <th>SL.no</th>
                    <th>District name</th>
                    <th>place</th>
                    <th>Location</th>
                    <th>Action</th>
                </tr>
                <%
                    String selectqry = "select * from tbl_location l inner join tbl_place p on p.place_id=l.place_id inner join tbl_district d on d.district_id=p.district_id";
                    ResultSet r2 = con.selectCommand(selectqry);
                    int i=0;
                    while(r2.next())
                    {
                        i++;
                    %>
                    <tr>
                    <td><%=i%></td>
                    <td><%=r2.getString("district_name")%></td>
                    <td><%=r2.getString("place_name")%></td>
                    <td><%=r2.getString("location_name")%></td>
                    <td><a href="Location.jsp?did=<%=r2.getString("location_id")%>">
                            Delete</a></td>
               
                            
                     </tr>
                <%
                    }
                %>
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
                           
                        
            
                            </script>
                            
    
</html>
