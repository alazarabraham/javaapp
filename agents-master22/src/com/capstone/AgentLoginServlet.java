package com.capstone;


import java.io.*;
import java.sql.SQLException;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
 
@WebServlet("/agentlogin")
public class AgentLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public AgentLoginServlet() {
        super();
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
         
        AgentLoginDao agentLoginDao = new AgentLoginDao();
         
        try {
            Agent agent = agentLoginDao.checkLogin(email, password);
            String destPage = "agentlogin.jsp";
             
            if (agent != null) {
                HttpSession session = request.getSession();
                session.setAttribute("agent", agent);
                destPage = "agentloggedinpage.jsp";
            } else {
                String message = "Invalid email/password";
                request.setAttribute("message", message);
            }
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }
}