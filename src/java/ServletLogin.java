/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 * maat
 *
 * @author Rupali
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        RequestDispatcher rd;
        if (Login.validate(username, password)) {//for validating usernam and password,if username and passwprd is valid
            //then it will validate is  enterted user is admin 

            // here you were only checking whether user is Valid or not
            // if user is valid then you are showing the admin page
            // you were NOT checking whether USER is ADMIN
//            if (Login.isAdmin(username)) 
//                rd = request.getRequestDispatcher("welcomeAdmin.jsp");//if hes is admin then it wil show welcome   
//            else 
//                rd = request.getRequestDispatcher("welcomeUser.jsp");//else user 
            
            HttpSession session;
            session=request.getSession(true);
            session.setAttribute("username", username);
            boolean isAdmin;
            isAdmin = Login.isAdmin(username);
            session.setAttribute("isAdmin", isAdmin);

            rd = request.getRequestDispatcher("login.jsp");

        } else {

            // if user is invalid then you are showing the home page 
            // if user is invalid then you should show 
            // login page again with some error message
            String message = "There's somthng occured wrong";
            request.setAttribute("message", message);
            rd = request.getRequestDispatcher("index.jsp");
            request.setAttribute("isAdmin", false);

        }
        rd.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ServletLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
