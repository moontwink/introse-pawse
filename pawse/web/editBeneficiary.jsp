<%-- 
    Document   : editBeneficiary
    Created on : 03 31, 13, 10:28:27 PM
    Author     : Nancy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Models.Beneficiary"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>
<%@include file="includes/Cheader.jsp" %>

				<!--START BENEFICIARY FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="#"></a> Edit Beneficiary </h2>
					<p class="meta">**edit beneficiary information**</p>
					<div class="entry">
                                            <form name ="editBeneficiary" action ="EditBeneficiary" method="post">
                                            <table>
                                                <tr>
                                                    <%
                                                    Beneficiary b = (Beneficiary)request.getAttribute("editingBenefit");
                                                    %>
                                                    <td>Beneficiary</td>
                                                    <td>
                                                        <input name="benefitname" type="text" readonly="true" size ="<%=b.getName().length()%>" value="<%=b.getName()%>"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Address</td>
                                                    <td><textarea name ="address" rows ="4" cols ="40" required ="true"/><%=b.getAddress()%></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td>Telephone</td>
                                                    <td><input name="telephone" type ="text" required="true" value="<%=b.getTelephone()%>"/></td>
                                                </tr>
                                                <tr>
                                                    <td><input type ="submit" value="Cancel"/></td>
                                                    <td><input type ="submit" value="Edit"/></td>
                                                </tr>
                                            </table>      
                                            </form>
                                        </div>
				</div>
                            <!--END BENEFICIARY FORM SECTION-->
                      			<%@include file="includes/Csidebar.jsp" %>
<%@include file="includes/footer.jsp" %>
