

<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="Network.NewServlet" %>

<%
    String file1 = (String) session.getAttribute("Ceasar");
    String filename = null, mac1 = null, mac2 = null, mac3 = null, time = null, file = null, file_status = null;
    
    String user=(String)session.getAttribute("sssname");
    try {
        Connection con = DbConnection.getConnection();
        Statement st3 = con.createStatement();
        Statement st = con.createStatement();
        ResultSet rs = st3.executeQuery("select * from file_storage where file='" + file1 + "'");
        if (rs.next()) {
            filename = rs.getString("filename");
            
            mac1 = rs.getString("mac1");
            mac2 = rs.getString("mac2");
            mac3 = rs.getString("mac3");
            time = rs.getString("up_time");
            file = rs.getString("file");
            System.out.println("Print Valuas" + filename + user + mac1 + mac2 + mac3 + time + file);
            int in = st.executeUpdate("insert into file_view (file_name, username, mac1, mac2, mac3, time, file, status, file_status) values ('" + filename + "','" + user + "','" + mac1 + "','" + mac2 + "','" + mac3 + "','" + time + "','" + file + "','No', 'Deduplicate File')");
            if (in != 0) {

                response.sendRedirect("upload.jsp?msgg=This file Already Uploaded");
            } else {
            }
        }
    } catch (Exception rx) {
        rx.printStackTrace();
    }
%>
