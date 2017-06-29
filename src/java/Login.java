/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Rupali
 */
import java.sql.*;
import java.util.Objects;

public class Login {

    static Connection conn = null;
    static String url = "jdbc:mysql://localhost:3306/";
    static String dbName = "onlinemobilerecharge";
    static String driver = "com.mysql.jdbc.Driver";
    static String userName = "root";
    static String password = "root";

    // this function returns true when there is an enrty for 
    // the given username, password is found in database
    // this function is not checking weather the person is Admin samjhaab   aageeeee
    public static boolean validate(String username, String pass) throws SQLException {
        boolean isValid = false;

        PreparedStatement pst;
        ResultSet rs;

        try {
            Class.forName(driver).newInstance();
            conn = DriverManager
                    .getConnection(url + dbName, userName, password);
            pst = conn.prepareStatement("select * from login where username=? and password=?");
            pst.setString(1, username);
            pst.setString(2, pass);

            rs = pst.executeQuery();
            if (rs.next()) {
                isValid = true;
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        conn.close();
        return isValid;
    }

    // this function checks whether the user which is valid is an ADMIN or NOT
    public static boolean isAdmin(String username) throws SQLException {
        
        PreparedStatement pst;
        ResultSet rs;
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager
                    .getConnection(url + dbName, userName, password);
            pst = conn.prepareStatement("select IsAdmin from users where username=?");
            pst.setString(1, username);
            rs = pst.executeQuery();
            if (rs.next()) {
                 int adminval=rs.getInt("IsAdmin");
                 if(adminval == 1)
                     return true;
                 else
                     return false;
                
                
                // check value of IsAdmin column from the resultSet
                // if IsAdmin is true then return true
                // else return false
            }
            else{             
                conn.close();                   
            }
        }
        
        catch(Exception error){
            System.out.println(error);
        }
        return false;
    
}
}
