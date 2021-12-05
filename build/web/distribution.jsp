<%-- 
    Document   : distribution
    Created on : Dec 3, 2021, 2:28:37 PM
    Author     : ADMIN
--%>


<%@ page language = "java" contentType = "text/html;charset = ISO-8859-1" pageEncoding ="ISO-8859-1" %>
<%@page import = "java.sql.*,java.uti1.*"%>


<% 
String name_of_hosital = request.getParameter(" name_of_hosital");
String vaccine_type = request.getParameter("vaccine_type");
String amount_of_vaccines = request.getParameter(" amount_of_vaccines");


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%@taglib uri = "/WEB-INF/tlds/registering.tld" prefix="motoro"%>
        <motoro:distribute table= "healthcentre_distribution" values="${name_of_hosital},${vaccine_type}, 
                           ${amount_of_vaccines}" />
        
       <h1> the amount of vaccines distributed per hospital </h1>
        <h1>health center distribution</h1>
         <form  METHOD = "post" action="/Moto/VaccineRegister"> 
          Health center:  <input type="text" name="name_of_hospital"/>
            <br/> 
       Type of vaccine: <input type="text" name="vaccine_type" />
        <br/>
       number of vaccines given: <input type="text" name="amount_of_vaccines" />
        <br/>
        
        <input type="submit" value="register"/>
        </form>
    
</html>
