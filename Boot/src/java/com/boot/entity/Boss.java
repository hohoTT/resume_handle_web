package com.boot.entity;

public class Boss  implements java.io.Serializable {


     private String id;
     private String password;
     private String name;

    public Boss() {
    }

    public Boss(String id, String password, String name) {
       this.id = id;
       this.password = password;
       this.name = name;
    }
   
    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }




}


