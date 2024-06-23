

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
            padding: 10px 10px;
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
            padding: 8px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
        .buttonn {
            background-color: crimson; /* Green */
            border: none;
            color: white;
            padding: 8px 30px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }
    </style>
    <%
        if (request.getParameter("msg") != null) {
    %>
    <script>alert('Registration Successfully');</script>
    <%            }
    %>
    <%
        if (request.getParameter("msgg") != null) {
    %>
    <script>alert('Registration Error');</script>
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
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="user.jsp">User</a></li>
                            <li><a href="cloud.jsp">Cloud</a></li>
                            <li class="active"><a href="reg.jsp">Registration</a></li>
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
                <div class="content_resize"> <img src="images/slide_1.jpg" width="958" height="245" alt="" class="hbg_img" />
                    <div class="mainbar">
                        <div class="article">
                            <!--- Start Body ------>

                            <br><center><font style="font-family: fantasy; font-size: x-large; color: #595959; font-style: inherit">REGISTRATION</font><br>
                                        <br><form action="login.jsp" method="get">
                                                <input type="text" class="inputs" name="name" required="" placeholder="Your Name" />&nbsp;&nbsp;&nbsp;
                                                <input type="password" class="inputs" name="pass" required="" placeholder="Password" /><br>
                                                    <input type="email" class="inputs" name="email" required="" placeholder="e-mail" />&nbsp;&nbsp;&nbsp;
                                                    <input type="date" class="inputs" name="dob" required="" placeholder="Date Of Birth" /><br>
                                                        <select class="inputss" required="" name="gen" >
                                                            <option value="select">Gender</option>
                                                            <option value="male">Male</option>
                                                            <option value="female">Female</option>
                                                        </select>&nbsp;&nbsp;&nbsp;
                                                        <input type="text" class="inputs" name="phone" required="" placeholder="Contact No" /><br>
                                                            <input type="text"class="inputs" name="state" required="" placeholder="State" />&nbsp;&nbsp;&nbsp;
                                                            <input type="text"class="inputs" name="country" required="" placeholder="Country" /><br>
                                                                <input type="hidden" value="2" name="status" />
                                                                <input type="Submit" value="REGISTER" class="button" >&nbsp;&nbsp;&nbsp;<input type="Submit" value="CLEAR" class="buttonn" >
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
                                                                                                        <li><a href="index.jsp">Home</a></li>
                                                                                                        <li><a href="user.jsp">User</a></li>
                                                                                                        <li><a href="cloud.jsp">Cloud</a></li>
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
                                                                                                <p class="lf">Copyright &copy; 2023</p>
                                                                                                <div class="clr"></div>
                                                                                            </div>
                                                                                        </div>
                                                                                        </div>
                                                                                        </body>
                                                                                        </html>

