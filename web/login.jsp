

<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    String skey = request.getParameter("skey");
    String Eamil = request.getParameter("email");
    String dob = request.getParameter("dob");
    String Gender = request.getParameter("gen");
    String phone = request.getParameter("phone");
    String State = request.getParameter("state");
    String Country = request.getParameter("country");
    
    System.out.println("User Details" + phone + Gender + dob + State + Eamil + name + pass + Country);


    int status = Integer.parseInt(request.getParameter("status"));
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                    rs = st.executeQuery("select * from register where name='" + name + "' AND pass='" + pass + "' AND status='Yes' AND skey='" + skey + "'");
                    if (rs.next()) {
                        session.setAttribute("sssname", rs.getString("name"));
                        session.setAttribute("sssemail", rs.getString("email"));
                        session.setAttribute("sssstate", rs.getString("state"));
                        session.setAttribute("ssscountry", rs.getString("country"));

                        response.sendRedirect("uhome.jsp?msg=success");
                    } else {
                        response.sendRedirect("user.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 2:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into register(name, pass, email, dob, gen, phone, state, country, status) values ('" + name + "','" + pass + "','" + Eamil + "','" + dob + "','" + Gender + "','" + phone + "','" + State + "','" + Country + "','No')");
                    if (i != 0) {

                        response.sendRedirect("reg.jsp?msg=success");
                    } else {
                        response.sendRedirect("reg.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    response.sendRedirect("user_reg.jsp?msggg=failed");
                }
                break;

            case 3:
                try {
                    if (name.equalsIgnoreCase("cloud") && pass.equalsIgnoreCase("cloud")) {
                        response.sendRedirect("chome.jsp?msg=success");
                    } else {
                        response.sendRedirect("cloud.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 4:
                try {
                    rs = st.executeQuery("select * from file_storage where mac1='" + pass + "' OR mac2='" + pass + "' OR mac3='" + pass + "'");
                    if (rs.next()) {
                        session.setAttribute("passd", pass);
                        response.sendRedirect("download.jsp?msg=success");
                    } else {
                        response.sendRedirect("down.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>