package com.capstone;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
/**
 * ControllerServlet.java
 * This servlet acts as a page controller for the application, handling all
 * requests from the user.
 * @author www.codejava.net
 */
public class AgentControllerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AgentDao agentDao;
    private Policy_HolderDao policy_holderDao;
    private PolicyDao policyDao;
    private AdminDao adminDao;
 
    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
 
        agentDao = new AgentDao(jdbcURL, jdbcUsername, jdbcPassword);
        policy_holderDao = new Policy_HolderDao(jdbcURL, jdbcUsername,jdbcPassword);
        policyDao = new PolicyDao(jdbcURL, jdbcUsername,jdbcPassword);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
 
        try {
            switch (action) {
            case "/newagent":
                showNewForm(request, response);
                break;
            case "/insertagent":
                insertAgent(request, response);
                break;
            case "/deleteagent":
                deleteAgent(request, response);
                break;
            case "/editagent":
                showEditForm(request, response);
                break;
            case "/updateagent":
                updateAgent(request, response);
                break;
            case "/policyholderlist":
            	listPolicy_Holder(request, response);
                break;
            case "/newpolicyholder":
            	showNewPolicy_HolderForm(request, response);
                break;
            case "/insertpolicyholder":
                insertPolicy_Holder(request, response);
                break;
            case "/deletepolicyholder":
                deletePolicy_Holder(request, response);
                break;
            case "/editpolicyholder":
                showPolicy_HolderEditForm(request, response);
                break;
            case "/updatepolicyholder":
                updatePolicy_Holder(request, response);
                break;
            case "/agentpolicyholderlist":
            	AgentlistPolicy_Holder(request, response);
                break;
            case "/agentnewpolicyholder":
            	AgentshowNewPolicy_HolderForm(request, response);
                break;
            case "/agentinsertpolicyholder":
                AgentinsertPolicy_Holder(request, response);
                break;
            case "/agentdeletepolicyholder":
                AgentdeletePolicy_Holder(request, response);
                break;
            case "/agenteditpolicyholder":
                AgentshowPolicy_HolderEditForm(request, response);
                break;
            case "/agentupdatepolicyholder":
                AgentupdatePolicy_Holder(request, response);
                break;
            
            case "/policylist":
            	listPolicy(request, response);
                break;
            case "/newpolicy":
            	showNewPolicyForm(request, response);
                break;
            case "/insertpolicy":
                insertPolicy(request, response);
                break;
            case "/deletepolicy":
                deletePolicy(request, response);
                break;
            case "/editpolicy":
                showPolicyEditForm(request, response);
                break;
            case "/updatepolicy":
                updatePolicy(request, response);
                break;
            case "/agentpolicylist":
            	AgentlistPolicy(request, response);
                break;
           
            default:
                listAgent(request, response);
                break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
 
    private void listAgent(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Agent> listAgent = agentDao.listAllAgents();
        request.setAttribute("listAgent", listAgent);
        RequestDispatcher dispatcher = request.getRequestDispatcher("agentslist.jsp");
        dispatcher.forward(request, response);
    }
 
    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("agentsform.jsp");
        dispatcher.forward(request, response);
    }
 
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int agent_id = Integer.parseInt(request.getParameter("agent_id"));
        Agent existingAgent = agentDao.getAgent(agent_id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("agentsform.jsp");
        request.setAttribute("agent", existingAgent);
        dispatcher.forward(request, response);
 
    }
 
    private void insertAgent(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String emailAddress = request.getParameter("emailAddress");
 
        Agent newAgent = new Agent(firstName,middleName,lastName,password,phone, emailAddress);
        agentDao.insertAgent(newAgent);
        response.sendRedirect("listAgent");
    }
 
    private void updateAgent(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int agent_id = Integer.parseInt(request.getParameter("agent_id"));
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String emailAddress = request.getParameter("emailAddress");


        Agent agent = new Agent(agent_id, firstName, middleName, lastName,  password,  phone,  emailAddress);
        agentDao.updateAgent(agent);
        response.sendRedirect("listAgent");
    }
 
    private void deleteAgent(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int agent_id = Integer.parseInt(request.getParameter("agent_id"));
        Agent agent = new Agent(agent_id);
        agentDao.deleteAgent(agent);
        response.sendRedirect("listAgent");
 
    }
    private void listPolicy_Holder(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
    	List<Policy_Holder> listPolicy_Holder = policy_holderDao.listAllPolicy_Holders();
        request.setAttribute("listPolicy_Holder", listPolicy_Holder);
        RequestDispatcher dispatcher = request.getRequestDispatcher("policyholderlist.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewPolicy_HolderForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("policyholderform.jsp");
        dispatcher.forward(request, response);
    }
 
    private void showPolicy_HolderEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int PH_key = Integer.parseInt(request.getParameter("PH_key"));
        Policy_Holder existingPolicy_Holder = policy_holderDao.getPolicy_Holder(PH_key);
        RequestDispatcher dispatcher = request.getRequestDispatcher("policyholderform.jsp");
        request.setAttribute("policy_holder", existingPolicy_Holder);
        dispatcher.forward(request, response);
 
    }
 
    private void insertPolicy_Holder(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String DOB = request.getParameter("DOB");
        String password = request.getParameter("password");   
        String emailAddress = request.getParameter("emailAddress");
        int policy_key = Integer.parseInt(request.getParameter("policy_key"));
        Policy_Holder policy_holder = new Policy_Holder(firstName,middleName,lastName,DOB,password, emailAddress, policy_key);
        policy_holderDao.insertPolicy_Holder(policy_holder);
        response.sendRedirect("policyholderlist");
        
    }
 
    private void updatePolicy_Holder(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int PH_key = Integer.parseInt(request.getParameter("PH_key"));
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String DOB = request.getParameter("DOB");
        String password = request.getParameter("password");
        String emailAddress = request.getParameter("emailAddress");
        int policy_key = Integer.parseInt(request.getParameter("policy_key"));
        String type = request.getParameter("type");


 
        Policy_Holder policy_holder = new Policy_Holder(PH_key, firstName, middleName, lastName,  DOB, password ,  emailAddress,policy_key);
        policy_holderDao.updatePolicy_Holder(policy_holder);
        response.sendRedirect("policyholderlist");
    }
 
    private void deletePolicy_Holder(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int PH_key = Integer.parseInt(request.getParameter("PH_key"));
 
        Policy_Holder policy_holder = new Policy_Holder(PH_key);
        policy_holderDao.deletePolicy_Holder(policy_holder);
        response.sendRedirect("policyholderlist");
 
    }
    private void listPolicy(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
    	List<Policy> listPolicy = policyDao.listAllPolicy();
        request.setAttribute("listPolicy", listPolicy);
        RequestDispatcher dispatcher = request.getRequestDispatcher("policylist.jsp");
        dispatcher.forward(request, response);
    }
    private void showNewPolicyForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("policyform.jsp");
        dispatcher.forward(request, response);
    }
 
    private void showPolicyEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int policy_key = Integer.parseInt(request.getParameter("policy_key"));
        Policy existingPolicy = policyDao.getPolicy(policy_key);
        RequestDispatcher dispatcher = request.getRequestDispatcher("policyform.jsp");
        request.setAttribute("policy", existingPolicy);
        dispatcher.forward(request, response);
 
    }
 
    private void insertPolicy(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String type = request.getParameter("type");
        String time_period = request.getParameter("time_period");
      
        Policy policy = new Policy(type,time_period);
        policyDao.insertPolicy(policy);
        response.sendRedirect("policylist");
        
    }
 
    private void updatePolicy(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int policy_key = Integer.parseInt(request.getParameter("policy_key"));
        String time_period = request.getParameter("time_period");
        String type = request.getParameter("type");

        Policy policy = new Policy(policy_key, type, time_period);
        policyDao.updatePolicy(policy);
        response.sendRedirect("policylist");
    }
 
    private void deletePolicy(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int policy_key = Integer.parseInt(request.getParameter("policy_key"));
        Policy policy = new Policy(policy_key);
        policyDao.deletePolicy(policy);
        response.sendRedirect("policylist");
 
    }
    
    
    private void AgentlistPolicy_Holder(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
    	List<Policy_Holder> AgentlistPolicy_Holder = policy_holderDao.listAllPolicy_Holders();
        request.setAttribute("AgentlistPolicy_Holder", AgentlistPolicy_Holder);
        RequestDispatcher dispatcher = request.getRequestDispatcher("agentpolicyholderlist.jsp");
        dispatcher.forward(request, response);
    }

    private void AgentshowNewPolicy_HolderForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("agentpolicyholderform.jsp");
        dispatcher.forward(request, response);
    }
 
    private void AgentshowPolicy_HolderEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int PH_key = Integer.parseInt(request.getParameter("PH_key"));
        Policy_Holder existingPolicy_Holder = policy_holderDao.getPolicy_Holder(PH_key);
        RequestDispatcher dispatcher = request.getRequestDispatcher("agentpolicyholderform.jsp");
        request.setAttribute("policy_holder", existingPolicy_Holder);
        dispatcher.forward(request, response);
 
    }
 
    private void AgentinsertPolicy_Holder(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String DOB = request.getParameter("DOB");
        String password = request.getParameter("password");   
        String emailAddress = request.getParameter("emailAddress");
        int policy_key = Integer.parseInt(request.getParameter("policy_key"));
        Policy_Holder policy_holder = new Policy_Holder(firstName,middleName,lastName,DOB,password, emailAddress, policy_key);
        policy_holderDao.insertPolicy_Holder(policy_holder);
        response.sendRedirect("agentpolicyholderlist");
        
    }
 
    private void AgentupdatePolicy_Holder(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int PH_key = Integer.parseInt(request.getParameter("PH_key"));
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String DOB = request.getParameter("DOB");
        String password = request.getParameter("password");
        String emailAddress = request.getParameter("emailAddress");
        int policy_key = Integer.parseInt(request.getParameter("policy_key"));
        String type = request.getParameter("type");


 
        Policy_Holder policy_holder = new Policy_Holder(PH_key, firstName, middleName, lastName,  DOB, password ,  emailAddress,policy_key);
        policy_holderDao.updatePolicy_Holder(policy_holder);
        response.sendRedirect("agentpolicyholderlist");
    }
 
    private void AgentdeletePolicy_Holder(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int PH_key = Integer.parseInt(request.getParameter("PH_key"));
 
        Policy_Holder policy_holder = new Policy_Holder(PH_key);
        policy_holderDao.deletePolicy_Holder(policy_holder);
        response.sendRedirect("agentpolicyholderlist");
 
    }
    private void AgentlistPolicy(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
    	List<Policy> AgentlistPolicy = policyDao.listAllPolicy();
        request.setAttribute("AgentlistPolicy", AgentlistPolicy);
        RequestDispatcher dispatcher = request.getRequestDispatcher("agentpolicylist.jsp");
        dispatcher.forward(request, response);
    }
   
   
}
