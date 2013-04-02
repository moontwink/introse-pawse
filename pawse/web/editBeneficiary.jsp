<%-- 
    Document   : editBeneficiary
    Created on : 03 31, 13, 10:28:27 PM
    Author     : Nancy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Models.Beneficiary"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>

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
                            
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
		<!-- end #content -->
		<div id="sidebar-bg">
			<div id="sidebar">
				<ul>
					<li>
						<h2>Tracking</h2>
						<p>You are currently logged in as: 
                                                    <strong><%=c.getUsername()%></strong>
                                                </p>
					</li>
					<li>
						<h2>Feedback</h2>
						<ul>
							<li><a href="#">View Feedback</a></li>
							<li><a href="#">Submit Feedback</a></li>
						</ul>
					</li>
					<li>
						<h2>Contact COSCA</h2>
						<ul>
                                                        <li><strong>Joseph Rosal</strong></li>
							<li>Coordinator for Community Engagement</li>
							<li>(0922)899-2558</li>
                                                        <li>rosalj@dlsu.edu.ph</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p>Selection of free web templates <a href="http://www.websitetemplatesonline.com" target="_blank">at this site</a>.</p>
	<p>2012. Sitename.com. All rights reserved. Design by <a href="http://www.freecsstemplates.org/" rel="nofollow">FCT</a>.</p>
</div>
<!-- end #footer -->
</body>
</html>
