<%-- 
    Document   : Location.jsp
    Created on : 7 Dec, 2023, 10:50:40 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Location</title>
     <style>
         .bg-img{
            background-image:url("../Assets/Templates/Main/images/Admin.jpg");
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
                 .fonth{
                 font-family: "Poppins", sans-serif;
                color: white;
                font-weight: bold; 
                font-weight: italic; 
                 }
                
            .fonty{
                font-family: "Poppins", sans-serif;
                color: #ffef19b8;
            }
            .button{
                background-color: #e0e032c2;
            }
            .fontw{
                font-family: "Poppins", sans-serif;
                color: white;
            }
            </style>
    <div class="bg-img">
        <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    </head>
    <body>
        <%
             if(request.getParameter("save")!=null)
             {
                                  
                   String insqry="insert into tbl_location(location_name,place_id)values('"+request.getParameter("locname")+"','"+request.getParameter("selpla")+"')";
                   con.executeCommand(insqry);
             }                      
                    
             if(request.getParameter("did")!=null)
            {
              String delqry="delete from tbl_location where location_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("Location.jsp");
            }
         
        %>
        <form method="post">
            <br>
            <table cellpadding="10" align="center">
                <tr>
                    <td class="fonty">District</td>
                    <td><select name="seldis" onchange="getPlace(this.value)">
                            <option>--select district--</option>
                            <%
                            
                                String sel="select * from tbl_district";
                                ResultSet rs=con.selectCommand(sel);
                                while(rs.next())
                                {
                                    %>
                                    <option value="<%=rs.getString("district_id")%>"><%=rs.getString("district_name")%></option>
                                    <%
                                    
                                }
                                    
                            
                            %>
                        </select></td>
                </tr>
                 <tr>
                    <td class="fonty">Place</td>
                    <td><select name="selpla" id="selplace">
                            <option>--select place--</option>
                            
                        </select></td>
                </tr>
                <tr>
                    <td class="fonty">Location</td>
                    <td><input type="text" name="locname" placeholder="Enter Location"></td>
                    <td><input type="hidden" name="locid"></td>
                    
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit"  class="button"name="save" value="Save">
                        <input type="reset" name="cancel"  class="button" value="Cancel"></td>
                </tr>
            </table>
        </form>
                        <br><br>
        <table cellpadding="10" align="center">
                <tr>
                    <th class="fontw"> Sl.no</th>
                    <th class="fontw">District</th>
                    <th class="fontw">Place</th>
                    <th class="fontw">Location</th>
                    <th class="fontw">Action</th>
                </tr>
                <%
                 String selectqry="select * from tbl_location t inner join tbl_place p on p.place_id = t.place_id inner join tbl_district d on d.district_id=p.district_id ";
                 ResultSet r=con.selectCommand(selectqry);
                 int i=0;
                 while(r.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td class="fonty"><%=i%></td>
                   <td class="fonty"><%=r.getString("district_name")%></td> 
                 <td class="fonty"><%=r.getString("place_name")%></td> 
                 <td class="fonty"><%=r.getString("location_name")%></td> 
                 <td><a href="Location.jsp?did=<%=r.getString("location_id")%>">Delete</a>
                 </td></tr>
                  <%
                 }
                  %>
        </table>
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
                        <br><br>
 <%@include file="Foot.jsp" %>
     </div>
    </div>
</html>

