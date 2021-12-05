<%-- 
    Document   : registration
    Created on : Dec 2, 2021, 4:46:33 PM
    Author     : ADMIN
--%>
<%@page import="org.health.vaccine.register"%>
<%@ page language = "java" contentType = "text/html;charset = ISO-8859-1" pageEncoding ="ISO-8859-1" %>
<%@page import = "java.sql.*,java.uti1.*"%>


<% 
String type_of_vaccine = request.getParameter("type_of_vaccine");
String number_of_vaccine = request.getParameter("number_of_vaccine");
String date_of_arrival = request.getParameter("date_of_arrival");
String inventory_status= request.getParameter("inventory_status");


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@taglib uri = "/WEB-INF/tlds/registering.tld" prefix="motorola"%>
        <motorola:register table= "vaccine_inventory" values="${type_of_vaccine},
                           ${number_of_vaccine},${date_of_arrival},${inventory_status} " /> 
        
        
        <h1>vaccine inventory</h1>
        <form  METHOD = "post" action="/Moto/VaccineRegister"> 
        Type of vaccine:  <input type="text" name="type_of_vaccine"/>
        <br/> 
        Number of vaccine: <input type="text" name="number_of_vaccine" />
        <br/>
        Date of arrival: <input type="text" name="date_of_arrival" />
        <br/>
        Inventory status:<input type="text" name="inventory_status"/>
        <br/>
        <input type="submit" value="register"/>
        </form>
 
        
    </body>
</html>
