

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
    <style>

        .inputs {
            background: #D6EAF8;
            font-size: 0.9rem;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            border: none;
            padding: 7px 10px;
            width: 200px;
            margin-bottom: 20px;
            box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
            clear: both;
        }

        .inputs:focus {
            background: #fff;
            box-shadow: 0 0 0 3px #2cadff, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
            outline: none;
        }
        .inputss {
            background: #D6EAF8;
            font-size: 0.9rem;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            border: none;
            padding: 10px 10px;
            width: 220px;
            margin-bottom: 20px;
            box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
            clear: both;
        }

        .inputss:focus {
            background: #fff;
            box-shadow: 0 0 0 3px #2cadff, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
            outline: none;
        }
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 8px 27px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
        }
        .buttonn {
            background-color: crimson; /* Green */
            border: none;
            color: white;
            padding: 8px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
        }
    </style>
    <%
        if (request.getParameter("msgg") != null) {
    %>
    <script>alert('Verification Failed');</script>
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
                            <li><a href="file_de1.jsp">File Request</a></li>
                            <li class="active"><a href="down.jsp">Download</a></li>
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
                    <div class="mainbar">
                        <div class="article">
                            <!--- Start Body ------>

                            <br><center><font style="font-family: fantasy; font-size: x-large; color: #595959; font-style: inherit">Please Give a MAC Code</font><br>
                                        <br><form action="login.jsp" method="get">

                                                <input type="password" class="inputs" name="pass" required="" placeholder="MAC CODE" /><br>
                                                    <input type="hidden" value="4" name="status" />
                                                    <input type="Submit" value="VERIFY" class="button" >
                                                        </form></center>
                                                        <br><br><br><br>

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
                                                                                        <li><a href="down.jsp">Download</a></li>
                                                                                        <li><a href="index.jsp">Logout</a></li>
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

