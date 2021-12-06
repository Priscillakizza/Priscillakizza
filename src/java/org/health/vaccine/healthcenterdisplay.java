/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.vaccine;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author ADMIN
 */
public class healthcenterdisplay extends SimpleTagSupport {

    private String table;
    private String where;
    private String displayformat;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        try {
            // TODO: insert code to write html before writing the body content.
            // e.g.:
            //
            // out.println("<strong>" + attribute_1 + "</strong>");
            // out.println("    <blockquote>");
 Class.forName ("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e){
            out.println(e);
        }
        try {
            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccination" , "root" , "");
            Statement s = con.createStatement();
            
            ResultSet res = s.executeQuery("SELECT * FROM " +table);
            out.print("<table>");
            out.print( "<tr>" + "<th>name_of_hospital</th>"+"<th>vaccine_type</th>"+"<th>amount_of_vaccines</th>"+"</tr>");

            while (res.next()){
                
                 String name_of_hospital = res.getString("name_of_hospital");
                String vaccine_type = res.getString("vaccine_type");
                 String amount_of_vaccines  = res.getString("amount_of_vaccines");
                
                
                
                out.println("<tr>"
                        +"<td>"+name_of_hospital+"</td>"
                        +"<td>"+vaccine_type+"</td>"
                        +"<td>"+amount_of_vaccines+"</td>"
                );                
                out.println("<a href='display.jsp?id="+
                        res.getString("name_of_hospital") +"&status=" +
                        res.getString("vaccine_type") +"&status=" +
                        res.getString("amount_of_vaccines") +"'>edit</a>");
            }
            
            out.println("</table>");
        }
        catch (SQLException e){
            out.println(e);
        }
    }                       
        

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
        

    public void setTable(String table) {
        this.table = table;
    }

    public void setWhere(String where) {
        this.where = where;
    }

    public void setDisplayformat(String displayformat) {
        this.displayformat = displayformat;
    }
    
}
