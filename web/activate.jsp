
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="Algorithm.CaesarCipher"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="DataBaseCon.Mail"%>
<%

    String skey = null;
    Random RANDOM = new SecureRandom();
    int mac1_LENGTH = 4;
    String letters = "0123456789";
    String uid = "";
    for (int i = 0; i < mac1_LENGTH; i++) {
        int index = (int) (RANDOM.nextDouble() * letters.length());
        uid += letters.substring(index, index + 1);
    }
     String mac1 = request.getParameter("id");
     String email = request.getParameter("email");
     String name = request.getParameter("name");
     
    skey = uid;
    String msg="Secret Key :"+skey;
    Mail mail = new Mail();
    mail.secretMail(msg, name, email);

    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
   

    int i = st.executeUpdate("update register set status='Yes', skey='"+skey+"' where id = '" + mac1 + "'");
    if (i != 0) {
        response.sendRedirect("user_de.jsp?msg=Activation successfully...");
    } else {
        response.sendRedirect("user_de.jsp?msg=Error");
    }
%>
