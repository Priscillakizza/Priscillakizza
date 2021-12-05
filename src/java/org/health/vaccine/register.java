/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.vaccine;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author ADMIN
 */
public class register extends SimpleTagSupport {

    

    private String table;
    private String values;

    
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        
        try{
            try{
            Class.forName ("com.mysql.jd.bc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccination" , "root" , "");
            Statement s = con.createStatement();
            
            String[] newValues = values.split(",");
            if(newValues.length>1){
                
                int x = s.executeUpdate("insert into vaccination ( type_of_vaccine , number_of_vaccine "
                        + " date_of_arrival , inventory_status) values ( '"+ newValues[0] +" ' , '"+ newValues[1] +" ' , '"+ newValues[2] +" '"
                                + "'"+ newValues[3] +" '" );
                
                out.println ("Vaccine successfully inserted");
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
    }
        catch (java.io.IOException ex) {
        throw new JspException("Error in registerr tag", ex);
        }
    }
        
       
                   
            
            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
         

    /**
     *
     * @param table
     *        
     */
    public void setTable(String table) {
        this.table = table;
    }

    public void setValues(String values) {
        this.values = values;
    }
    
}
        