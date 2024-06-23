

<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

    String CeasarCipher = null, fname = null, file = null;
    String mac1 = request.getParameter("mac1");
    session.setAttribute("macc", mac1);
    Connection con = DbConnection.getConnection();
    Statement st3 = con.createStatement();
    ResultSet rs = st3.executeQuery("select * from file_storage where mac1='" + mac1 + "'");
    if (rs.next()) {
        file = rs.getString("file");
        fname = rs.getString("filename");
        int IDS = 1;
        CeasarCipher = new CaesarCipher().decrypt(file.toString(), IDS);
        System.out.println("Ceaser :" + CeasarCipher);

    }
%>
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
        if (request.getParameter("ssss") != null) {
    %>
    <script>alert('File Uploaded to HQDrive...');</script>
    <%            }
    %>
    <%
        if (request.getParameter("msggss") != null) {
    %>
    <script>alert('File Upload Failed...');</script>
    <%            }
    %>
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
        if (request.getParameter("msg") != null) {
    %>
    <script>alert('File Uploaded to Drive HQ..');</script>
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
                            <li><a href="file_de.jsp">Back</a></li>
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

                    <br> <center><h3><font style="font-size: 20px; color: #2cadff ">File Update here!!</font></h3></center>
                        <center><h3><font style="font-size: 20px; color: crimson ">File Name :</font>&nbsp;&nbsp;<font style="font-size: 20px; color: #4CAF50"><%=fname%></font></h3></center>
                        <center>
                            <br><form action="update1.jsp"  method="get">
                                    <textarea name="files" cols="60" rows="5"><%=CeasarCipher%></textarea><br>
                                        <input type="Submit" value="UPDATE" class="button" >
                                            </form></center>

                                            <!--- End Body ------>



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


