


<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>A Three-Layer Privacy Preserving Cloud Storage Scheme</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/radius.js"></script>
    </head>
    <%
        if (request.getParameter("msg") != null) {
    %>
    <script>alert('Your Request sent Successfully..');</script>
    <%            }
    %>
    <body>
        <div class="main">
            <div class="header">
                <div class="header_resize">
                    <div class="logo">
                        <br><h2><font style="font-size: 24px; font-style: inherit; font-family: fantasy; color: black">A Three-Layer Privacy Preserving Cloud Storage Scheme Based on Computational Intelligence in Fog Computing</font></h2>
                    </div>
                    <div class="clr"></div>
                    <div class="menu_nav">
                        <ul>
                            <li><a href="uhome.jsp">User Home</a></li>
                            <li><a href="upload.jsp">File Upload</a></li>
                            <li><a href="file_de.jsp">File View</a></li>
                            <li class="active"><a href="file_de1.jsp">File Request</a></li>
                            <li><a href="down.jsp">Download</a></li>
                            <li><a href="index.jsp">Logout</a></li>
                        </ul>
                        <div class="searchform">
                            <form id="formsearch" name="formsearch" method="post" action="search.jsp">
                                <span>
                                    <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
                                </span>
                                <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
                            </form>
                        </div>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize"> <img src="images/up.jpg" width="958" height="245" alt="" class="hbg_img" />

                    <!--- Start Body ------>
                    <center><h3><font style="font-size: 20px; color: #2cadff ">File Details</font></h3></center>
                    <table border="1" style="text-align: center;margin-left: 220px">
                        <tr>
                            <th style="text-align: center;width: 70px; color: black; font-size: 14px ">File Name</th>
                            <th style="text-align: center;width: 100px;color: black; font-size: 14px">Time</th>
                            <th style="text-align: center;width: 100px;color: black; font-size: 14px">User Name</th>
                            <th style="text-align: center;width: 100px;color: black; font-size: 14px">File Status</th>
                            <th style="text-align: center;width: 100px;color: crimson; font-size: 14px">Request</th>

                        </tr>

                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            String user = (String) session.getAttribute("sssname");
                            try {
                                con = DbConnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from file_view where username!='" + user + "' and status='No'");
                                while (rs.next()) {

                        %>
                        <tr>
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("file_name")%></td>
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("time")%></td>
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("username")%></td>
                            <td style="color: midnightblue; font-size: 16px"><%=rs.getString("file_status")%></td>
                            <td style="color: #4CAF50; font-size: 16px"><a href="request_sent.jsp?id=<%=rs.getString("id")%>"><font style="color: green">Sent</a></td>

                        </tr><tr />
                        <% }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                    </table><br><br><br><br><br><br><br><br><br><br><br>

                                                                <!--- End Body ------>



                                                                <div class="clr"></div>
                                                                </div>
                                                                </div>
                                                                <div class="fbg">

                                                                </div>
                                                                <div class="footer">
                                                                    <div class="footer_resize">
                                                                        <p class="lf">Copyright &copy; 2024</p>
                                                                        <div class="clr"></div>
                                                                    </div>
                                                                </div>
                                                                </div>
                                                                </body>
                                                                </html>


