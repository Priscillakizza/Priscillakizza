/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.health.administration;

public class SystemRegistration {
    public String Administer_Name;
    public String Email;
    public String password;
    public String confirmpassword;
    
    public String registering(String name, String email, String password1,String password2 ){
        this.Administer_Name = name;
        this.Email = email;
        this.password = password1;
        this.confirmpassword = password2;
        
       
    return "insert into student set fname='"+Administer_Name+"',sname='"+email+"',"
            + " course='"+password+"', studentno='"+confirmpassword+"'";
    }

    
}
