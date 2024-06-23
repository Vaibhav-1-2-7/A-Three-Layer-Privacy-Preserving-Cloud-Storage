/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Network;

import Algorithm.CaesarCipher;
import DataBaseCon.DbConnection;
import DataBaseCon.Ftpcon;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.oreilly.servlet.multipart.MultipartParser;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;

/**
 *
 * @author java4
 */
public class NewServlet extends HttpServlet {

    File file;
    final String filepath = "D:/";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession user = request.getSession(true);
            String fname = (String) user.getAttribute("filenames");
            String fpath = (String) user.getAttribute("filepathh");
            String f1, f2, f3, f4;
            f1 = fpath + "/" + fname;
            f2 = fpath + "\\" + fname + "2";
            f3 = fpath + "\\" + fname + "3";
            f4 = fpath + "\\" + fname + "1";
            System.out.println("--------->>" + f1);

            System.out.println("Welcome File Upload");
            MultipartRequest m = new MultipartRequest(request, filepath);
            String mac1 = m.getParameter("mac1");
            String mac2 = m.getParameter("mac2");
            String mac3 = m.getParameter("mac3");
            String block1 = m.getParameter("block1");
            String block2 = m.getParameter("block2");
            String block3 = m.getParameter("block3");
            String CeasarBlock;
            System.out.println("Print Value M1 :" + mac1 + "M2" + mac2 + "m3" + mac3 + "\nB1" + block1 + "\nB2" + block2 + "\nB3" + block3);
            String plain = (String) user.getAttribute("CipherText");
            

            int IDS = 1;
         //   String CaesarCipher = new CaesarCipher().encrypt(block1.toString(), IDS);
                FileWriter fw = new FileWriter(f4);
                fw.write(block1);
                fw.close();
                
           //     String CaesarCipher1 = new CaesarCipher().encrypt(block2.toString(), IDS);
                FileWriter fw1 = new FileWriter("D:\\demo1\\"+ fname + "2");
                fw1.write(block2);
                fw1.close();

            boolean status = new Ftpcon().upload(new File(f4));
            System.out.println("Status----->" + status);
            if(status){


                String users = user.getAttribute("sssname").toString();

                DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
                Date date = new Date();
                String time = dateFormat.format(date);

                PreparedStatement pstm1 = null;
                PreparedStatement pstm2 = null;
                Connection con = DbConnection.getConnection();

                String sq2 = "insert into file_storage (filename, file, block1, block2, block3, username, up_time, mac1, mac2, mac3) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
                pstm1 = con.prepareStatement(sq2);
                pstm1.setString(1, fname);
                pstm1.setString(2, plain);
                pstm1.setString(3, block1);
                pstm1.setString(4, block2);
                pstm1.setString(5, block3);
                pstm1.setString(6, users);
                pstm1.setString(7, time);
                pstm1.setString(8, mac1);
                pstm1.setString(9, mac2);
                pstm1.setString(10, mac3);

                boolean sd = pstm1.execute();
                System.out.println(sd);
                try {

                    String sql3 = "insert into file_view (file_name, username, mac1, mac2, mac3, time, file, status, file_status) values (?, ?, ?, ?, ?, ?, ?, ?, ?) ";
                    pstm2 = con.prepareStatement(sql3);
                    pstm2.setString(1, fname);
                    pstm2.setString(2, users);
                    pstm2.setString(3, mac1);
                    pstm2.setString(4, mac2);
                    pstm2.setString(5, mac3);
                    pstm2.setString(6, time);
                    pstm2.setString(7, plain);
                    pstm2.setString(8, "No");
                    pstm2.setString(9, "Original File");
                    boolean sdd = pstm2.execute();
                    System.out.println(sdd);
                    if (sdd = false) {
                        response.sendRedirect("upload.jsp?msg=File_upload_to_cloud");
                    } else {
                        response.sendRedirect("upload.jsp?msg=File_upload_to_cloud");
                    }

                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void split(String FilePath, long splitlen) {
        long leninfile = 0, leng = 0;
        int count = 1, data;
        try {
            File filename = new File(FilePath);
//RandomAccessFile infile = new RandomAccessFile(filename, "r");
            InputStream infile = new BufferedInputStream(new FileInputStream(filename));
            data = infile.read();
            while (data != -1) {
                filename = new File(FilePath + count + ".sp");
//RandomAccessFile outfile = new RandomAccessFile(filename, "rw");
                OutputStream outfile = new BufferedOutputStream(new FileOutputStream(filename));
                while (data != -1 && leng < splitlen) {
                    outfile.write(data);
                    leng++;
                    data = infile.read();
                }
                leninfile += leng;
                leng = 0;
                outfile.close();
                count++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
