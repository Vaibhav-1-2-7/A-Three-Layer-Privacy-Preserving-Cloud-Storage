

<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseCon.DbConnection"%>
<%

    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    String mac1 =request.getParameter("id");
     
   
    int i = st.executeUpdate("update file_view set status='request' where id = '" + mac1 + "'");
    if (i != 0) {
        response.sendRedirect("file_de1.jsp?msg=Request sent successfully...");
    } else {
        response.sendRedirect("file_de1.jsp?msg=Error");
    }
%>
