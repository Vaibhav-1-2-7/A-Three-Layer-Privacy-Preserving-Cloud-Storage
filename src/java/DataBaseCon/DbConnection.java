/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author java4
 */
package DataBaseCon;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Java4
 */
public class DbConnection {
    public static Connection getConnection()
    {
        Connection con = null;
        try{
             Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/multi_user?characterEncoding=latin1&useConfigs=maxPerformance", "root", "Krishna@11");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}
