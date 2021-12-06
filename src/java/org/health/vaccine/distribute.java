/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.vaccine;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author ADMIN
 */
public class distribute extends SimpleTagSupport {

    private String table;
    private String values;
    
public void setTable(String table) {
        this.table = table;
    }

    public void setValues(String values) {
        this.values = values;
    }
    
    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            // TODO: insert code to write html before writing the body content.
            // e.g.:
            //
            // out.println("<strong>" + attribute_1 + "</strong>");
            // out.println("    <blockquote>");
try{ 
 Class.forName ("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccination" , "root" , "");
 Statement s = con.createStatement();
  
 String[] nnewvalues = values.split(",");
 if (nnewvalues.length>1){
 s.executeUpdate("insert into "+table+"(  name_of_hosital , vaccine_type , date_of_arrival) values ( '"+  nnewvalues[0] +" ' , '"+ nnewvalues[1] +" ' , '"+ nnewvalues[2]+"'); " );
 
 out.println ("information successfully registered");
 
    }
}
    catch (Exception e){
    System.out.println(e);
    e.printStackTrace();
    
    }
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in distribute tag", ex);
        }
    }

    
}
