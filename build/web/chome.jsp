
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
    <script>alert('Login Successfully');</script>
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
                            <li class="active"><a href="chome.jsp">Cloud Home</a></li>
                            <li><a href="user_de.jsp">Authentication</a></li>
                            <li><a href="file_de2.jsp">File Details</a></li>
                            <li><a href="user_req.jsp">User Request</a></li>
                            <li><a href="down_de.jsp">Download History</a></li>
                            <li><a href="index.jsp">Logout</a></li>
                        </ul>
                        <div class="searchform">
                            <form id="formsearch" name="formsearch" method="post" action="search.jsp">
                                <span>
                                    <input name="editbox_search" name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
                                </span>
                                <input name="button_search" id="button_search" src="images/search_btn.gif" class="button_search" type="image" />
                            </form>
                        </div>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">
                <div class="content_resize"> <img src="images/up.jpg" width="958" height="245" alt="" class="hbg_img" />
                    <div class="mainbar">
                        <div class="article">
                            <!--- Start Body ------>

                            <center><font style="font-family: fantasy; font-size: x-large; color: #40b5ff; font-style: inherit">Cloud Home&nbsp; </font>&nbsp;&nbsp;&nbsp;<font style="font-family: fantasy; font-size: x-large; color: #4CAF50; font-style: inherit"></font><br>
                                    <img src="images\user1.JPG" alt="" height="200" width="450"></center>
                                        <!--- End Body ------>
                                        </div>
                                        </div>

                                        <div class="sidebar">
                                            <div class="gadget">
                                                <BR><h2 class="star"><span>Sidebar</span> Menu</h2>
                                                    <div class="clr"></div>
                                                    <ul class="sb_menu">
                                                        <li><a href="uhome.jsp">User Home</a></li>
                                                        <li><a href="upload.jsp">File Upload</a></li>
                                                        <li><a href="file_de.jsp">File View</a></li>
                                                        <li><a href="file_de1.jsp">File Request</a></li>
                                                        <li><a href="reg.jsp">Registration</a></li>
                                                    </ul>
                                            </div>

                                        </div>
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

