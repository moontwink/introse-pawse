<%-- 
    Document   : editBeneficiary
    Created on : 03 31, 13, 10:28:27 PM
    Author     : Nancy
--%>

<%@page import="Models.Feedback"%>
<%@page import="DAO.FeedbackDAOsetter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Beneficiary"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>
<%@include file="includes/Cheader.jsp" %>

				<!--START EDIT BENEFICIARY FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="javascript:void(0)"> Edit Beneficiary </a></h2>
					<p class="meta">**edit beneficiary information**</p>
					<div class="entry">
                                            <form name ="editBeneficiary" action ="EditBeneficiary" method="post">
                                            <table>
                                                <tr>
                                                    <%
                                                    Beneficiary b = (Beneficiary)request.getAttribute("currentBenefit");
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
                            <!--END EDIT BENEFICIARY FORM SECTION-->
                            <!--START VIEW FEEDBACK SECTION-->
                            <div class="post">
					<h2 class="title"><a href="javascript:void(0)"><%=b.getName()%> feedbacks</a> </h2>
					<p class="meta"></p>
					<div class="entry">
                                            <table>
                                                <tr>
                                                    <%String message = (String)request.getAttribute("message");
                                                        if(message != null){
                                                    %>
                                                    <td class ="successmsg" colspan="4"><%=message%>
                                                        <br/><br/></td><%}%>
                                                </tr>
                                                <tr class="feedHead">
                                                    <td><u>AUTHOR</u></td>
                                                    <td></td>
                                                </tr>
                                                <%
                                                    FeedbackDAOsetter dao = new FeedbackDAOsetter();
                                                    ArrayList<Feedback> k = dao.getAllFeedbacksByBeneficiary(b.getName());
                                                    for(Feedback f : k){
                                                %>
                                                <tr class="feedAuthor">
                                                    <td><%=f.getAuthor()%></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="benefitCol">
                                                    <td></td>
                                                    <td><%=f.getFeedback()%></td>
                                                </tr>
                                                <%}%>
                                            </table>
                                        </div>
				</div>
                            <!--END VIEW FEEDBACK SECTION-->
<%@include file="includes/Csidebar.jsp" %>
<%@include file="includes/footer.jsp" %>
