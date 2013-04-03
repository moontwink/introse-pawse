<%-- 
    Document   : genViewBeneficiary
    Created on : 03 28, 13, 11:43:12 PM
    Author     : Nancy
    **Note: this is the viewBeneficiary for GENERAL USERS 
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>
<%@include file="includes/Cheader.jsp" %>
<%@include file="includes/slider.jsp" %>				<!--START VIEW BENEFICIARY SECTION-->
				<div class="post">
					<h2 class="title"><a href="#"></a> View Beneficiaries </h2>
					<p class="meta">Posted by <a href="#">COSCA</a> as of March 28, 2013</p>
					<div class="entry">
                                            
                                            <table>
                                                <tr class ="benefitTable">
                                                    <td class ="benefitTableRow">__#__</td>
                                                    <td class ="benefitTableRow">_________BENEFICIARY NAME_________</td>
                                                    <td>________________ADDRESS________________</td>
                                                </tr>
                                                <%
                                                    BeneficiaryDAOsetter dao = new BeneficiaryDAOsetter();
                                                    ArrayList<Beneficiary> s = dao.getAllBeneficiaries();
                                                    for(Beneficiary p : s){
                                                %>
                                                <tr class ="benefitCol">
                                                    <td class ="benefitTableRow"><%=s.indexOf(p)+1%></td>
                                                    <td class ="benefitTableRow"><a href="" title="Contact Number: <%=p.getTelephone()%>"><%=p.getName()%></a></td>
                                                    <td class ="benefitTableRow"><%=p.getAddress()%></td>
                                                </tr>

                                                <%}%>
                                                
                                            </table>    
                                            
                                        </div>
				</div>
                            <!--END VIEW BENEFICIARY SECTION-->
                            
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
		<!-- end #content -->
	<%@include file="includes/Csidebar.jsp" %>
<%@include file="includes/Cfooter.jsp" %>
