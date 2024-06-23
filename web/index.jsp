

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
                            <li class="active"><a href="index.jsp">Home</a></li>
                            <li><a href="user.jsp">User</a></li>
                            <li><a href="cloud.jsp">Cloud</a></li>
                            <li><a href="reg.jsp">Registration</a></li>
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
                <div class="content_resize"> <img src="images/slide.jpg" width="958" height="245" alt="" class="hbg_img" />
                    <!--- Start Body ------>
                    <div class="mainbar">
                        <div class="article">
                            <h2><font  style="margin-left: 10px; color: black; font-size: 20px; font-family:  fantasy">ABSTRACT</font></h2>
                            <p style="margin-left: 10px;margin-right: 10px; text-align: justify;"><font style="font-size: 16px; ">Recent years witness the development of cloud computing technology. With the explosive growth of unstructured data, cloud storage technology gets more attention and better development. However, in current storage schema, user’s data is totally stored in cloud servers. In other words, users lose their right of control on data and face privacy leakage risk. Traditional privacy protection schemes are usually based on encryption technology, but these kinds of methods cannot effectively resist attack from the inside of cloud server. In order to solve this problem, we propose a three-layer storage framework based on fog computing. The proposed framework can both take full advantage of cloud storage and protect the privacy of data. Besides, Hash-Solomon code algorithm is designed to divide data into different parts. Then, we can put a small part of data in local machine and fog server in order to protect the privacy. Moreover, based on computational intelligence, this algorithm can compute the distribution proportion stored in cloud, fog, and local machine, respectively. Through the theoretical safety analysis and experimental evaluation, the feasibility of our scheme has been validated, which is really a powerful supplement to existing cloud storage scheme.
                                </font></p>
                        </div>
                    </div>
                    <!--- End Body ------>
                    <div class="sidebar">
                        <div class="gadget">
                            <h2 class="star"><span>Sidebar</span> Menu</h2>
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
