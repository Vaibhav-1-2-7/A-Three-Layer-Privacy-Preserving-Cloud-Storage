
<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseCon.DbConnection"%>
<%

    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    String mac1 = (String) session.getAttribute("macc");
    String file = request.getParameter("files");
    int IDS = 1;
    String block1 = new CaesarCipher().encrypt(file.toString(), IDS);
    int i = st.executeUpdate("update file_storage set file='" + block1 + "' where mac1 = '" + mac1 + "'");
    if (i != 0) {
        response.sendRedirect("file_de.jsp?msg=File Update successfully...");
    } else {
        response.sendRedirect("file_de.jsp?msg=Error");
    }
%>
