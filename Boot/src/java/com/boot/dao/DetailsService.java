
package com.boot.dao;

import com.boot.entity.EmpDetails;
import com.boot.entity.Employee;
import com.boot.util.HibernateUtil;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


public class DetailsService {
      public static boolean addDetails(EmpDetails d){
          try{
           SessionFactory sf=HibernateUtil.getSessionFactory();
           Session s=sf.openSession();
           Transaction tc=s.beginTransaction();
           s.saveOrUpdate(d);
           tc.commit();
           s.close();
          }catch(Exception ex){
              return false;
          }
          return true;
      }
      
       public static EmpDetails query(int int_id){
           SessionFactory sf=HibernateUtil.getSessionFactory();
           Session s=sf.openSession();
           Transaction tc=s.beginTransaction();
           Query q=s.createQuery("from Employee where id='"+int_id+"'");
           tc.commit();
           
           EmpDetails d=null;
           List l=q.list();
           for(int i=0;i<l.size();i++){
               Employee e=(Employee)l.get(i);
               Set<EmpDetails> eds=e.getEmpDetailses();
               for(EmpDetails ed:eds){
                   d=ed;
               }
           }
           return d;
     }
       
      public static List selectCity(){
           SessionFactory sf=HibernateUtil.getSessionFactory();
           Session s=sf.openSession();
           Transaction tc=s.beginTransaction();
           Query q=s.createQuery("select desiredCity from EmpDetails");
           tc.commit();
           List l=q.list();
           s.close();
           return l;
      }
      
        public static List selectName(){
           SessionFactory sf=HibernateUtil.getSessionFactory();
           Session s=sf.openSession();
           Transaction tc=s.beginTransaction();
           Query q=s.createQuery("select name from EmpDetails");
           tc.commit();
           List l=q.list();
           s.close();
           return l;
      }
        
        public static List selectSkill(){
           SessionFactory sf=HibernateUtil.getSessionFactory();
           Session s=sf.openSession();
           Transaction tc=s.beginTransaction();
           Query q=s.createQuery("select skill from EmpDetails");
           tc.commit();
           List l=q.list();
       
          
           s.close();
           return l;
      }
        
        public static List result(String desiredCity,String name,String skill){
            SessionFactory sf=HibernateUtil.getSessionFactory();
            Session s=sf.openSession();
            Transaction tc=s.beginTransaction();
            List l=null;
            if(desiredCity.equals("")){
                  if(name.equals("")){
                      if(skill.equals("")){
                          Query q=s.createQuery("From EmpDetails");
                          l=q.list();
                      }else{
                          Query q=s.createQuery("From EmpDetails where skill='"+skill+"'");
                          l=q.list();
                      }
                  }else{
                      if(skill.equals("")){
                          Query q=s.createQuery("From EmpDetails where name='"+name+"'");
                          l=q.list();
                      }else{
                          Query q=s.createQuery("From EmpDetails where  name='"+name+"' and skill='"+skill+"'");
                          l=q.list();
                      }
                  }
            }else{
                 if(name.equals("")){
                      if(skill.equals("")){
                         Query q=s.createQuery("From EmpDetails where desiredCity='"+desiredCity+"'");
                         l=q.list();
                      }else{
                         Query q=s.createQuery("From EmpDetails where desiredCity='"+desiredCity+"' and skill='"+skill+"'");
                         l=q.list();
                      }
                  }else{
                      if(skill.equals("")){
                         Query q=s.createQuery("From EmpDetails where desiredCity='"+desiredCity+"' and name='"+name+"'");
                         l=q.list();
                      }else{
                         Query q=s.createQuery("From EmpDetails where desiredCity='"+desiredCity+"' and name='"+name+"' and skill='"+skill+"'");
                         l=q.list();
                      }
                  }
            }
            tc.commit();
           
            return l;
        }
}
