<%-- 
    Document   : genViewBeneficiary
    Created on : 03 28, 13, 11:43:12 PM
    Author     : Nancy
    **Note: this is the viewBeneficiary for GENERAL USERS 
--%>

<%@page import="Models.Beneficiary"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>
<%@include file="includes/header.jsp" %>
<%@include file="includes/slider.jsp" %>				
                                <!--START VIEW BENEFICIARY SECTION-->
				<div class="post">
					<h2 class="title"><a href="javascript: void(0)"> View Beneficiaries</a> </h2>
					<p class="meta">Posted by <a href="#">COSCA</a> as of March 28, 2013</p>
					<div class="entry">
                                            
                                            <table class="benefitTable" align="center">
                                                <tr class="benefitTableHead">
                                                    <td>  No  </td>
                                                    <td>Beneficiary Name</td>
                                                    <td>Address</td>
                                                </tr>
                                                <%
                                                    BeneficiaryDAOsetter dao = new BeneficiaryDAOsetter();
                                                    ArrayList<Beneficiary> s = dao.getAllBeneficiaries();
                                                    for(Beneficiary p : s){
                                                %>
                                                <tr class ="benefitCol">
                                                    <td class ="benefitTableRow"><%=s.indexOf(p)+1%></td>
                                                    <td class ="benefitTableRow"><a href="javascript: void(0)" title="Contact Number: <%=p.getTelephone()%>"><%=p.getName()%></a></td>
                                                    <td class ="benefitTableRow"><%=p.getAddress()%></td>
                                                </tr>

                                                <%}%>
                                                
                                            </table>    
                                            
                                        </div>
				</div>
                            <!--END VIEW BENEFICIARY SECTION-->
                            
			
		<!-- end #content -->
	<%@include file="includes/sidebar.jsp" %>
<%@include file="includes/footer.jsp" %>
