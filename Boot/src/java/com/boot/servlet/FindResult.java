/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.boot.servlet;

import com.boot.dao.DetailsService;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 庞宇
 */
public class FindResult {
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String desiredCity=request.getParameter("city");
        String name=request.getParameter("name");
        String skill=request.getParameter("skill");
        
        List l=DetailsService.result(desiredCity, name, skill);
        if(l!=null){
            request.setAttribute("result",l);
            RequestDispatcher dis=request.getRequestDispatcher("/result.jsp");
            dis.forward(request,response);
        }else{
            request.setAttribute("result",null);
            RequestDispatcher dis=request.getRequestDispatcher("/result.jsp");
            dis.forward(request,response);
        }
    }
}
