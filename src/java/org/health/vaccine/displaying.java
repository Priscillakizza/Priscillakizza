/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/TagHandler.java to edit this template
 */
package org.health.vaccine;

import com.mysql.cj.protocol.Resultset;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.sql.ResultSet;

        

/**
 *
 * @author ADMIN
 */
public class displaying extends SimpleTagSupport {

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
        
        // TODO: insert code to write html before writing the body content.
        // e.g.:
        //
        // out.println("<strong>" + attribute_1 + "</strong>");
        // out.println("    <blockquote>");
        try{
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
            out.print( "<tr>" + "<th>type_of_vaccine</th>"+"<th>number_of_vaccine</th>"+"<th>date_of_arrival</th>"+"<th>inventory_status</th>"+"</tr>");

            while (res.next()){
                String type_of_vaccine = res.getString("type_of_vaccine");
                String number_of_vaccine = res.getString("number_of_vaccine");
                String date_of_arrival = res.getString("date_of_arrival");
                String inventory_status  = res.getString("inventory_status");
                
                
                
                out.println("<tr>"
                        +"<td>"+type_of_vaccine+"</td>"
                        +"<td>"+number_of_vaccine+"</td>"
                        +"<td>"+date_of_arrival+"</td>"
                        +"<td>"+inventory_status+"</td>"
                );                
                out.println("<a href='display.jsp?id="+
                        res.getString("type_of_vaccine") +"&status=" +
                        res.getString("number_of_vaccine") +"&status=" +
                        res.getString("date_of_arrival") +"&status=" +
                        res.getString("inventory_status") +"'>edit</a>");
            }
            
            out.println("</table>");
        }
        catch (SQLException e){
            out.println(e);
        }
    }                       
    /**
     *
     * @param table
     */
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
