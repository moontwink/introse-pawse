<%-- 
    Document   : viewBeneficiary
    Created on : 03 28, 13, 11:43:12 PM
    Author     : Nancy
--%>

<%@page import="DAO.BeneficiaryDAOsetter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Beneficiary"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <select>
            <%
                ArrayList<Beneficiary> s = BeneficiaryDAOsetter.getAllBeneficiaries(); //?????????
                for(Beneficiary p : s){
            %>
            <option value ="<%=p.getUsername()%>"><%=p.getUsername()%></option>

            <%}%>
        </select>
    </body>
</html>
