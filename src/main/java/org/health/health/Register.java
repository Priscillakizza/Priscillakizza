/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.health.health;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author nakas
 */
public class Register extends SimpleTagSupport {

    private String table;
    private String value1;
    private String value2;
    private String value3;
    private String value4;
   

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException, IOException {
        JspWriter out = getJspContext().getOut();
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            out.println(ex);
        }
        
        try{
            Connection con = DriverManager.getConnection(
                               "jdbc:mysql://localhost:3306/vaccination",
                               "root",
                               ""
                            );
            String query = "INSERT INTO " + table + "(healthCentreName,district,vaccinesReceived,vaccinesAvailable) VALUES('" + value1 + "','" + value2 + "'," + value3 + "," + value4 + ")";
            
            // String queryUpdate = "UPDATE " + table + " SET name="+ value1 + ",district="+value2+" WHERE healthCentreId = " + where;
            PreparedStatement preparedStmt = con.prepareStatement(query);
            preparedStmt.execute();       
            
        } catch (SQLException ex) {
            out.println(ex);
        }
    }

    public void setTable(String table) {
        this.table = table;
    }

    public void setValue1(String value1) {
        this.value1 = value1;
    }
    
    public void setValue2(String value2) {
        this.value2 = value2;
    } 
    
    public void setValue3(String value3) {
        this.value3 = value3;
    } 
    public void setValue4(String value4) {
        this.value4 = value4;
    } 
}
