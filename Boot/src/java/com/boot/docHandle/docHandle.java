package com.boot.docHandle;

import com.boot.entity.EmpDetails;
import com.boot.util.HibernateUtil;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class docHandle extends HttpServlet {
    
    private Configuration configuration = new Configuration();
    
    public Iterator<EmpDetails> Query_emp_details(){
        SessionFactory factory = HibernateUtil.getSessionFactory();
        Session session = factory.openSession();
        
        Query query = session.createQuery("FROM EmpDetails");
        Iterator<EmpDetails> iterator = query.iterate();
        
        return iterator;
    }
    
    public void CreateDoc(Map<String, Object> dataMap, String fileName) throws FileNotFoundException{
        configuration.setDefaultEncoding("utf-8"); 
        
        configuration.setServletContextForTemplateLoading(this.getServletContext(), "/template");
        
        Template template = null;
        
        try {
            template = configuration.getTemplate("template.ftl");
        } catch (Exception e) {
            System.out.println("template : " + e);
        }
        
        File outFile = new File(fileName);
        Writer out = null;
        FileOutputStream fos=null;
        
        try {
            fos = new FileOutputStream(outFile);
            OutputStreamWriter oWriter = new OutputStreamWriter(fos, "UTF-8");
            out = new BufferedWriter(oWriter); 
        } catch (Exception e) {
            System.out.println("fos : " + e);
        }
        
        try {  
            template.process(dataMap, out);  
            out.close();  
            fos.close();  
        } catch (TemplateException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
        
    }
    
    public Map<String, Object> handle_dataMap(EmpDetails empDetails){
        Map<String, Object> dataMap = new HashMap<String, Object>();
        
        System.out.println("query name : " + empDetails.getName());
        
        dataMap.put("title", empDetails.getName());
        dataMap.put("name", empDetails.getName());
        dataMap.put("birthday", empDetails.getBirthday());
        dataMap.put("qualification", empDetails.getQualification());
        dataMap.put("school", empDetails.getSchool());
        dataMap.put("skill", empDetails.getSkill());
        dataMap.put("address", empDetails.getAddress());
        dataMap.put("mobile", empDetails.getMobile());
        dataMap.put("qq", empDetails.getQq());
        dataMap.put("email", empDetails.getEmail());
        dataMap.put("desiredCity", empDetails.getDesiredCity());
        dataMap.put("salary", empDetails.getSalary());
        
        return dataMap;
    }
    
    public void listfile(File file,Map<String,String> map){
        if(!file.isFile()){
            File files[] = file.listFiles();
            
            for(File f : files){
                listfile(f,map);
            }
        }else{
            String realName = file.getName().substring(file.getName().indexOf("_")+1);
            map.put(file.getName(), realName);
        }
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Iterator<EmpDetails> iterator = Query_emp_details();
        
        String savePath = this.getServletContext().getRealPath("/WEB-INF/uploads");
        
        System.out.println("path-------------" + savePath);
         
        File file = new File(savePath);

        if (!file.exists() && !file.isDirectory()) {
            System.out.println(savePath + "目录不存在，需要创建");
            file.mkdir();
        }
        
        while(iterator.hasNext()){
            EmpDetails empDetails = iterator.next();
            
            Map<String, Object> dataMap = handle_dataMap(empDetails);
           
            String filename = empDetails.getName();
            
            String uploadFilePath = savePath + "\\" + filename + "的简历.doc";
            
            CreateDoc(dataMap, uploadFilePath);
        }
        
        
        String uploadFilePath = this.getServletContext().getRealPath("/WEB-INF/uploads");
        Map<String,String> fileNameMap = new HashMap<String,String>();
        listfile(new File(uploadFilePath),fileNameMap);
        request.setAttribute("fileNameMap", fileNameMap);
        
        request.getRequestDispatcher("details.jsp").forward(request, response);
        
        
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            
            System.out.println("jpojopojo");
            
            System.out.println(this.getServletContext());
            
//            response.sendRedirect("details.jsp");
            
            
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
