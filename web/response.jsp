

<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="DataBaseCon.Mail"%>

<%

    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    String id =request.getParameter("id");
    
     ResultSet rs = null;
     ResultSet rs1 = null;
     
     
     String mac2=null;
     String email=null;
     String name=(String) session.getAttribute("sssname");
     rs = st.executeQuery("select * from register where name='"+name+"'");
                                while (rs.next()) {
                                     email=rs.getString("email");
                                }

               rs1=st.executeQuery("select * from file_view where id='"+id+"'");
                while (rs1.next()) {
                                     mac2="Your Requested MAC ID id "+rs1.getString("mac2");
                                }
               
//    String mac2 = request.getParameter("mac2");
//     String email = request.getParameter("email");
//     String name = request.getParameter("name");
     
    
      Mail mail = new Mail();
    mail.secretMail(mac2, name, email);
   
    int i = st.executeUpdate("update file_view set status='Yes' where id = '" + id + "'");
    if (i != 0) {
        response.sendRedirect("user_req.jsp?msg=successfully...");
    } else {
        response.sendRedirect("user_req.jsp?msg=Error");
    }
%>
 