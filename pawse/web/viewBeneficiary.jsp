<%-- 
    Document   : viewBeneficiary
    Created on : 03 28, 13, 11:43:12 PM
    Author     : Nancy
    **Note: this is the viewBeneficiary for ADMIN (COSCA/Coordinator)
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>
<%@page import="Models.Beneficiary"%>
<%@include file="includes/Cheader.jsp" %>
				<!--START VIEW BENEFICIARY SECTION-->
				<div class="post">
					<h2 class="title"><a href="javascript:void(0)"> View Beneficiaries</a> </h2>
					<p class="meta">Updated by <a href="#">COSCA</a> as of March 28, 2013</p>
					<div class="entry">
                                            
                                            <table class="benefitTable" align="center">
                                                <tr>
                                                    <%String message = (String)request.getAttribute("message");
                                                        if(message != null){
                                                    %>
                                                    <td class ="successmsg" colspan="3"><%=message%>
                                                        <br/><br/></td><%}%>
                                                </tr>
                                                <tr class="benefitTableHead">
                                                    <td>  No  </td>
                                                    <td> Beneficiary Name </td>
                                                    <td>Address</td>
                                                </tr>
                                                <%
                                                    BeneficiaryDAOsetter dao = new BeneficiaryDAOsetter();
                                                    ArrayList<Beneficiary> s = dao.getAllBeneficiaries();
                                                    for(Beneficiary p : s){
                                                %>
                                                <tr class ="benefitCol">
                                                    <td class ="benefitCol"><%=s.indexOf(p)+1%></td>
                                                    <td><a href="<%=request.getContextPath()%>/SelectBeneficiary?benefitEdit=<%=p.getName()%>"><%=p.getName()%></a></td>
                                                    <td><%=p.getAddress()%></td>
                                                </tr>

                                                <%}%>
                                                
                                            </table>    
                                            
                                        </div>
				</div>
                            <!--END VIEW BENEFICIARY SECTION-->
                            
		<%@include file="includes/Csidebar.jsp" %>
                <%@include file="includes/footer.jsp" %>