<%-- 
    Document   : registration
    Created on : Dec 2, 2021, 4:46:33 PM
    Author     : ADMIN
--%>
<%@page import="org.health.vaccine.register"%>
<%@ page language = "java" contentType = "text/html;charset = ISO-8859-1" pageEncoding ="ISO-8859-1" %>
<%@page import = "java.sql.*,java.uti1.*"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> registration Page</title>
        <style> body { background-color : pink ;}
            h1 {color : blue;}
            input {
              width : 100%;
            padding : 10px;
   
            }
            
            </style>
    </head>
    <body>
        <%@taglib uri = "/WEB-INF/tlds/registering.tld" prefix="motorola"%>
        <h1>vaccine inventory</h1>
        <form  METHOD = "post" action="/Moto/VaccineRegister" > 
        Type of vaccine:  <input type='text' name='type_of_vaccine'/>
        <br/> 
        Number of vaccine: <input type='number' name='number_of_vaccine' />
        <br/>
        Date of arrival: <input type='date' name='date_of_arrival' />
        <br/>
        Inventory status:<input type='text' name='inventory_status'/>
        <br/>
        <input type='submit' value='register'/>
        </form>
        
        <%
        String typeOfVaccine = request.getParameter("type_of_vaccine");
        String numberOfVaccine = request.getParameter("number_of_vaccine");   
        String dateOfArrival = request.getParameter("date_of_arrival");
        String InventoryStatus  = request.getParameter("inventory_status");
        
        %>
 
       
        <motorola:register table= "vaccine_inventory" values="${type_of_vaccine},
                           ${number_of_vaccine},${date_of_arrival},${inventory_status} " /> 
        
    </body>
</html>
