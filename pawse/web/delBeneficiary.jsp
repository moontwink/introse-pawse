<%-- 
    Document   : delBeneficiary
    Created on : 03 29, 13, 2:44:04 AM
    Author     : Nancy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Models.Beneficiary"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>
<%@include file="includes/Cheader.jsp" %>
				<!--START BENEFICIARY FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="#"></a> Remove Beneficiary </h2>
					<p class="meta">**select a beneficiary to remove**</p>
					<div class="entry">
                                            <form name ="delBeneficiary" action ="delBeneficiary" method="post">
                                            <table align="center">
                                                <tr>
                                                    <td>Beneficiary</td>
                                                    <td>
                                                        <select name ="delBenefit">
                                                            <%
                                                                BeneficiaryDAOsetter dao = new BeneficiaryDAOsetter();
                                                                ArrayList<Beneficiary> results = dao.getAllBeneficiaries();
                                                                for(Beneficiary b : results){
                                                            %>
                                                            <option value ="<%=b.getName()%>" title="<%=b.getAddress()%>"><%=b.getName()%></option>
                                                            <%}%>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td><input type ="submit" value="Remove"/></td>
                                                </tr>
                                            </table>      
                                            </form>
                                        </div>
				</div>
                            <!--END BENEFICIARY FORM SECTION-->
                            
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
		<!-- end #content -->
		<%@include file="includes/Csidebar.jsp" %>
		<%@include file="includes/footer.jsp" %>