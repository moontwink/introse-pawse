<%-- 
    Document   : genViewBeneficiary
    Created on : 03 28, 13, 11:43:12 PM
    Author     : Nancy
    **Note: this is the viewBeneficiary for Student Organizations
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>
<%@page import="Models.Beneficiary"%>
<%@include file="includes/SOheader.jsp" %>
<%@include file="includes/slider.jsp" %>
				<!--START VIEW BENEFICIARY SECTION-->
				<div class="post">
					<h2 class="title"><a href="javascript:void(0)"> View Beneficiaries</a> </h2>
					<p class="meta">Posted by <a href="#">COSCA</a> as of March 28, 2013</p>
					<div class="entry">
                                            
                                            <table>
                                                <tr class ="benefitTable">
                                                    <td>__#__</td>
                                                    <td>_________BENEFICIARY NAME_________</td>
                                                    <td>________________ADDRESS________________</td>
                                                </tr>
                                                <%
                                                    BeneficiaryDAOsetter dao = new BeneficiaryDAOsetter();
                                                    ArrayList<Beneficiary> s = dao.getAllBeneficiaries();
                                                    for(Beneficiary p : s){
                                                %>
                                                <tr class ="benefitCol">
                                                    <td><%=s.indexOf(p)+1%></td>
                                                    <td><a href="<%=request.getContextPath()%>/SelectFeed?benefitlist=<%=p.getName()%>" 
                                                           title="Contact Number: <%=p.getTelephone()%>"><%=p.getName()%></a></td>
                                                    <td><%=p.getAddress()%></td>
                                                </tr>

                                                <%}%>
                                                
                                            </table>    
                                        </div>
				</div>
                            <!--END VIEW BENEFICIARY SECTION-->
                            
			
			<%@include file="includes/SOsidebar.jsp" %>
	
<%@include file="includes/footer.jsp" %>