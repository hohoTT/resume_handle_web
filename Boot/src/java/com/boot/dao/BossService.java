/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.boot.dao;

import com.boot.entity.Boss;
import com.boot.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class BossService {
    
    public static boolean isExisted(String id,String password){
        SessionFactory sf=HibernateUtil.getSessionFactory();
        Session s=sf.openSession();
        Transaction tc=s.beginTransaction();
        Query q=s.createQuery("from Boss where id='"+id+"' and password='"+password+"'");
        List l=q.list();
        for(int i=0;i<l.size();i++){
            if(l.get(i)!=null){
                return true;
            }else{
                return false;
            }
        }
        return false;
    }
    
    public static String queryName(String id){
        SessionFactory sf=HibernateUtil.getSessionFactory();
        Session s=sf.openSession();
        Transaction tc=s.beginTransaction();
        Query q=s.createQuery("from Boss where id='"+id+"'");
        List l=q.list();
        String name=null;
        for(int i=0;i<l.size();i++){
            Boss b=(Boss)l.get(i);
            name=b.getName();
        }
         return name;
    }
    
}
