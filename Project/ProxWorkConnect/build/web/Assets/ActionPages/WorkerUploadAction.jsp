<%-- 
    Document   : WorkerUploadAction
    Created on : 4 Jan, 2024, 11:34:02 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%

            File savedFile = null;
            FileItem f_item = null;

            String field_name = "";
            String file_name = "";
            String ph = "";
            String pr ="";

            String field[] = new String[20];
            String value[] = new String[20];
//enctype="multipart/form-data"
//checking if request cotains multipart data
            boolean isMultipart = ServletFileUpload.isMultipartContent(request);

            if (isMultipart) {
                System.out.println("ifff");

                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);

                //declaring a list of form fields
                List items_list = null;

                //assigning fields to list 'items_list'
                try {
                    items_list = upload.parseRequest(request);
                } catch (FileUploadException ex) {
                    out.println(ex);
                }

                //declaring iterator
                Iterator itr = items_list.iterator();
                int k = 0;
                //iterating through the list 'items_list'
                while (itr.hasNext()) {

                    //typecasting next element in items_list as fileitem
                    f_item = (FileItem) itr.next();

                    //checking if 'f_item' contains a formfield(common controls like textbox,dropdown,radio buttonetc)
                    if (f_item.isFormField()) {

                        //getting fieldname and value
                        field[k] = f_item.getFieldName();
                        value[k] = f_item.getString();

                        k++;
                    } else {

           //f_item=(FileItem)itr.next();
                        file_name = f_item.getName();
                        field_name = f_item.getFieldName();
                        if (field_name.equals("photo")) {
                            String ext = file_name.substring(file_name.lastIndexOf("."));
                            //setting path to store image
                            File proj_path = new File(config.getServletContext().getRealPath("/"));
                            String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\Assets\\Files\\WorkerPhoto\\";
                            Random r = new Random();
                            int r_num = r.nextInt(1111) + 999;

                            ph = "WorkerPhoto_" + r_num + ext;
                            //creating a file object
                            savedFile = new File(file_path + ph);
                            try {
                                //writing the file object
                                f_item.write(savedFile);

                            } catch (Exception ex) {
                                out.println(ex);
                            }
                        }
                        
                        if (field_name.equals("proof")) {
                            String ext = file_name.substring(file_name.lastIndexOf("."));
                            //setting path to store image
                            File proj_path = new File(config.getServletContext().getRealPath("/"));
                            String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\Assets\\Files\\WorkerProof\\";
                            Random r = new Random();
                            int r_num = r.nextInt(1111) + 999;

                            pr = "WorkerProof_" + r_num + ext;
                            //creating a file object
                            savedFile = new File(file_path + pr);
                            try {
                                //writing the file object
                                f_item.write(savedFile);

                            } catch (Exception ex) {
                                out.println(ex);
                            }
                        }
                        

                    }

                }
                 System.out.println(value[2]);       
                if(value[5].equals(value[6]))
                {
                                                
                String str1 = "insert into tbl_worker(worker_name,worker_contact,worker_email,worker_address,worker_photo,worker_proof,worker_dob,worker_password,place_id,workertype_id,worker_doj)"
                        + "values('" + value[0] + "','" + value[1] + "','" + value[2] + "','" + value[3] + "','" + ph + "','" + pr + "','" + value[4] + "','" + value[5] + "','" + value[8] + "','" + value[9] + "',curdate())";

                System.out.println(str1);       

                boolean status = con.executeCommand(str1);

                if (status == true) {
        %>
        <script type="text/javascript" >
            alert("Upload Successfully..");
            setTimeout(function() {
                window.location.href = '../../Guest/WorkerRegistration.jsp'
            }, 100);
        </script>
        <%
                }
            }
                else
                {
                 %>
        <script type="text/javascript" >
            alert("Mismatch Password..");
            setTimeout(function() {
              window.location.href = '../../Guest/WorkerRegistration.jsp'
            }, 100);
        </script>
        <%
            }

            }

        %>
    </body>
</html>