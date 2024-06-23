


<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="Network.SplitFile"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="Network.NewServlet" %>

<%
    String fname = (String) session.getAttribute("filenames");
    String fpath = (String) session.getAttribute("filepathh");
    String f1, f2, f3;
    String CeasarBlock1, CeasarBlock2, CeasarBlock3, CeasarBlock, Ceasar;
    int ID = 1;
    String files = request.getParameter("files");
    Ceasar = new CaesarCipher().encrypt(files.toString(), ID);
    session.setAttribute("Ceasar", Ceasar);
    Connection con = DbConnection.getConnection();
    Statement st3 = con.createStatement();
    ResultSet rt3 = st3.executeQuery("select * from file_storage where file='" + Ceasar + "'");
    if (rt3.next()) {
        response.sendRedirect("upload2.jsp?msgg=This file Already Uploaded");
    } else {
        SplitFile splitFile = new SplitFile();
        splitFile.split(fpath + "\\" + fname);
        f1 = fpath + "\\" + fname + "1";
        f2 = fpath + "\\" + fname + "2";
        f3 = fpath + "\\" + fname + "3";

        BufferedReader br = new BufferedReader(new FileReader(f1));
        BufferedReader br1 = new BufferedReader(new FileReader(f2));
        BufferedReader br2 = new BufferedReader(new FileReader(f3));

        StringBuffer sb = new StringBuffer();
        StringBuffer sb1 = new StringBuffer();
        StringBuffer sb2 = new StringBuffer();
        String temp = null;
        String temp1 = null;
        String temp2 = null;

        while ((temp = br.readLine()) != null) {
            sb.append(temp);
        }
        while ((temp1 = br1.readLine()) != null) {
            sb1.append(temp1);
        }
        while ((temp2 = br2.readLine()) != null) {
            sb2.append(temp2);
        }

        int IDS = 1, IDS1 = 1, IDS2 = 1;
        CeasarBlock1 = new CaesarCipher().encrypt(sb.toString(), IDS);
        CeasarBlock2 = new CaesarCipher().encrypt(sb1.toString(), IDS1);
        CeasarBlock3 = new CaesarCipher().encrypt(sb2.toString(), IDS2);
        System.out.println("Ceaser :" + CeasarBlock1);
        CeasarBlock = new CaesarCipher().encrypt(files.toString(), IDS);
        session.setAttribute("CipherText", CeasarBlock);
%>


<%
    String mac1 = null, mac2 = null, mac3 = null;
    Random RANDOM = new SecureRandom();
    int mac1_LENGTH = 20;
    String letters = "0123456789zxcvbnmasdfghjklqwertyuiop";
    String uid = "";
    for (int i = 0; i < mac1_LENGTH; i++) {
        int index = (int) (RANDOM.nextDouble() * letters.length());
        uid += letters.substring(index, index + 1);
    }
    mac1 = uid;

    System.out.println("mac1 Print :" + mac1);

    Random RANDO = new SecureRandom();
    int mac2_LENGTH = 20;
    String letter = "0123456789zxcvbnmasdfghjklqwertyuiop";
    String uid1 = "";
    for (int i = 0; i < mac2_LENGTH; i++) {
        int inde = (int) (RANDO.nextDouble() * letter.length());
        uid1 += letter.substring(inde, inde + 1);
    }
    mac2 = uid1;

    System.out.println("mac2 Print :" + mac2);

    Random RAND = new SecureRandom();
    int mac3_LENGTH = 20;
    String lette = "0123456789zxcvbnmasdfghjklqwertyuiop";
    String uid2 = "";
    for (int i = 0; i < mac3_LENGTH; i++) {
        int ind = (int) (RAND.nextDouble() * lette.length());
        uid2 += lette.substring(ind, ind + 1);
    }
    mac3 = uid2;

    System.out.println("mac3 Print :" + mac3);

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
                            <li class="active"><a href="upload.jsp">File Upload</a></li>
                            <li><a href="file_de.jsp">File View</a></li>
                            <li><a href="file_de1.jsp">File Update</a></li>
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

                            <br><center><font style="font-family: fantasy; font-size: x-large; color: #595959; font-style: inherit">File Upload to Cloud</font><br>
                                        <font style="font-family: fantasy; font-size: large; color: crimson; font-style: inherit">File Name :</font>&nbsp;&nbsp;<font style="font-family: fantasy; font-size: large; color: #4CAF50; font-style: inherit"><%=fname%></font><br>
                                            <br><form action="NewServlet"  enctype="multipart/form-data" method="post" >
                                                    <font style="font-family: fantasy; font-size: large; color: crimson; font-style: inherit">MAC1 :</font>
                                                    <input type="text" class="inputs" name="mac1" value="<%=mac1%>" readonly=""  /><br>
                                                        <font style="font-family: fantasy; font-size: large; color: #40b5ff; font-style: inherit">Block1 :</font><br>
                                                            <textarea rows="5" name="block1" readonly="" cols="50"><%=CeasarBlock1%></textarea><br><br>
                                                                    <font style="font-family: fantasy; font-size: large; color: crimson; font-style: inherit">MAC2 :</font>
                                                                    <input type="text" class="inputs" name="mac2" value="<%=mac2%>" readonly=""  /><br>
                                                                        <font style="font-family: fantasy; font-size: large; color: #40b5ff; font-style: inherit">Block2 :</font><br>
                                                                            <textarea rows="5" name="block2" readonly="" cols="50"><%=CeasarBlock2%></textarea><br><br>
                                                                                    <font style="font-family: fantasy; font-size: large; color: crimson; font-style: inherit">MAC3 :</font>
                                                                                    <input type="text" class="inputs" name="mac3" value="<%=mac3%>" readonly=""  /><br>
                                                                                        <font style="font-family: fantasy; font-size: large; color: #40b5ff; font-style: inherit">Block3 :</font><br>
                                                                                            <textarea rows="5" name="block3" readonly="" cols="50"><%=CeasarBlock3%></textarea><br>
                                                                                                <input type="Submit" value="UPLOAD" class="button" >
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
                                                                                                                    <%}%>
                                                                                                                    </body>
                                                                                                                    </html>
