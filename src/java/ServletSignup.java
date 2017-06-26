/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rupali
 */
@WebServlet("/ServletSignup")
public class ServletSignup extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String username = request.getParameter("username");
        int contactnumber = Integer.parseInt(request.getParameter("contactnumber"));
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmpassword = request.getParameter("confirmpassword");
        boolean isAdmin = false;
        String adminSelected = request.getParameter("isAdmin");
      
        if(adminSelected != null){
            isAdmin =adminSelected.equalsIgnoreCase("on");
        }
     
        
        if(password.equals(confirmpassword)){
        if (!Signup.createUser(name,username,contactnumber,email,password,confirmpassword,isAdmin)) //On success, you can display a message to user on Home page
        {
            request.setAttribute("errMessage","sdv");
            request.getRequestDispatcher("Signup.jsp").forward(request, response);
        } else
            {
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                request.setAttribute("name", name);
                request.setAttribute("username", username);
                request.setAttribute("contactnumber", contactnumber);
                request.setAttribute("email", email);
                rd.forward(request,response);
                
            }
        }

        

        

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
