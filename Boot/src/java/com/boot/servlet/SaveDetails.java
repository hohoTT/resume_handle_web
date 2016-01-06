/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.boot.servlet;

import com.boot.dao.DetailsService;
import com.boot.dao.EmployeeService;
import com.boot.entity.EmpDetails;
import com.boot.entity.Employee;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SaveDetails extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession hs=request.getSession();
        int int_id= (Integer)hs.getAttribute("userId");
    
        
        String name=request.getParameter("name");
        String birthday=request.getParameter("birthday");
        String qualification=request.getParameter("qualification");
        String school=request.getParameter("school");
        String skill=request.getParameter("skill");
        String address=request.getParameter("address");
        String mobile=request.getParameter("mobile");
        String qq=request.getParameter("qq");
        String email=request.getParameter("email");
        String desiredCity=request.getParameter("desiredCity");
        String salary=request.getParameter("salary");
        int salary_int=Integer.parseInt(salary);
        
        Employee e=EmployeeService.query(int_id);
        EmpDetails d=new EmpDetails(name,e,birthday,qualification,school,skill,address,mobile,qq,email,desiredCity,salary_int);
        
        if(DetailsService.addDetails(d)){
            response.sendRedirect("jsp/success.jsp");
        }else{
            response.sendRedirect("jsp/error.jsp");
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
