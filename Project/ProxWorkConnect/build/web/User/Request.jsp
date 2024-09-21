<%-- 
    Document   : Request.jsp
    Created on : 16 May, 2024, 1:02:37 AM
    Author     : ashwi
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request</title>
        <style>
             .bg-img{
            background-image:url("../Assets/Templates/Main/images/userhome1.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
            }
             .text-box{
                background-color: transparent;
                color:white;
                border-width: 3px;
               border-radius: 5px;
            }    
             .font{
                font-family: "Poppins", sans-serif;
                color: #ffef19b8; 
            }
            .button{
                background-color: yellow;
            }
            
        </style>
    </head>
    <div class="bg-img">
         <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    <br><br>
    <div class="font">
    <body>
        
        <form method="post" id="form" enctype="multipart/form-data" action="../Assets/ActionPages/RequestUploadAction.jsp">
            <table cellpadding="10" align="center">
                
        
        <tr>
                        <td>Details</td>
                        <td align="center">
                            <textarea class="text-box" name="txt_details" id="txt_details" cols="45" rows="5"></textarea></td>
                    </tr>
                     <tr>
                    
                    <td>Photo</td>
                    <td align="center">
                        <input required type="file" name="photo">
                    </td>
       </tr>
                     <tr>
                        <td>Address</td>
                        <td align="center">
                            <textarea class="text-box" name="txt_address" id="txt_address" cols="45" rows="5"></textarea></td>
                    </tr>
                     <tr>
                    <td>Work Date</td>
                    <td>
                        <input type="text" id="workDate" name="date" placeholder="Enter Date of Work" required pattern="^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/\d{4}$" title="Please enter a date in DD/MM/YYYY format.">
                    </td>
                </tr>
                
           
                        <input type="hidden" name="workerid"  value="<%=request.getParameter("rid")%>"  placeholder="Enter Date of Work" required>
                    
       
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="request" value="Request" class="button">
                        <input type="reset" name="cancel" value="Cancel" class="button">
                    </td>
                </tr>
            </table>
        </form>
    </body>
    <script>
    document.getElementById('form').addEventListener('submit', function(event) {
        const dateInput = document.getElementById('workDate').value;
      
        // Split the date input into components
        const [day, month, year] = dateInput.split('/').map(Number);
        const inputDate = new Date(year, month - 1, day);
        const currentDate = new Date();

        // Check if the date is not in the past
        if (inputDate < currentDate.setHours(0, 0, 0, 0)) {
            alert('The date of work cannot be in the past.');
            event.preventDefault();
        }
    });
</script>
 </div>

     <%@include file="Foot.jsp" %>

         </div>

    </div>

    
</html>