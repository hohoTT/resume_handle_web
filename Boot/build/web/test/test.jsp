<%-- 
    Document   : test
    Created on : 2016-1-2, 20:37:10
    Author     : 庞宇
--%>

<%@page import="java.io.Serializable"%>
<%@page import="com.boot.entity.Employee"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.boot.util.HibernateUtil"%>
<%@page import="com.boot.util.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            SessionFactory sf=HibernateUtil.getSessionFactory();
            Session s=sf.openSession();
            Transaction tc=s.beginTransaction();
            Employee e=new Employee();
            e.setId(110);
            e.setPassword("110110");
            Serializable sl=s.save(e);
            tc.commit();
            out.println("保存成功，主键值为:"+sl);
            tc.begin();
            Employee ee=(Employee)s.load(Employee.class,sl);
            ee.setPassword("000000");
            s.update(ee);
            tc.commit();
            out.println("更新成功");
         %>
    </body>
</html>
