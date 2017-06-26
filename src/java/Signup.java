/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Signup {

    static Connection conn = null;
    static String url = "jdbc:mysql://localhost:3306/";
    static String dbName = "onlinemobilerecharge";
    static String driver = "com.mysql.jdbc.Driver";
    static String userName = "root";
    static String password = "root";

    public static boolean createUser(String name, String username, int contactnumber,
            String email, String Password, String confirmpassword, boolean IsAdmin) {

        PreparedStatement signupPst;
        PreparedStatement loginPst;

        try {
            Class.forName(driver).newInstance();
            conn = DriverManager
                    .getConnection(url + dbName, userName, password);

            signupPst = conn.prepareStatement("insert into users values(?,?,?,?,?,?)");
            signupPst.setString(2, name);
            signupPst.setString(1, username);
            signupPst.setInt(3, contactnumber);
            signupPst.setString(4, email);
            signupPst.setString(5, Password);
            signupPst.setBoolean(6, IsAdmin);

            loginPst = conn.prepareStatement("insert into login values(?,?)");
            loginPst.setString(1, username);
            loginPst.setString(2, Password);

            if (signupPst.executeUpdate() == 1 && loginPst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception e) {
            Logger.getLogger(Signup.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(Signup.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }
}
