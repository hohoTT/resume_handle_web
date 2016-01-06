/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.boot.dao;

import com.boot.entity.Employee;
import com.boot.util.HibernateUtil;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class EmployeeService {
    
      public static boolean register(Employee e){
            try{
                SessionFactory sf=HibernateUtil.getSessionFactory();
                Session s=sf.openSession();
                Transaction tc=s.beginTransaction();
                s.save(e);
                tc.commit();
                s.close();
            }catch(Exception ex){
                return false;
            }
                return true;
      }
      
      public static boolean isExisted(int int_id,String password){
           SessionFactory sf=HibernateUtil.getSessionFactory();
           Session s=sf.openSession();
           Transaction tc=s.beginTransaction();
           Query q=s.createQuery("from Employee where id='"+int_id+"' and password='"+password+"'");
           tc.commit();
        
           List l=q.list();
           for(int i=0;i<l.size();i++){
                if(l.get(i)!=null){
                    return true;
                }else{
                    return false;
                }
           }
           
           s.close();
           return false;
      }
     public static Employee query(int int_id){
           SessionFactory sf=HibernateUtil.getSessionFactory();
           Session s=sf.openSession();
           Transaction tc=s.beginTransaction();
           Query q=s.createQuery("from Employee where id='"+int_id+"'");
           tc.commit();
           Employee e=null;
           List l=q.list();
           for(int i=0;i<l.size();i++){
               e=(Employee)l.get(i);
           }
          return e;
     }
}
