<%-- 
    Document   : submitFeedback
    Created on : 04 2, 13, 3:50:45 PM
    Author     : Nancy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Models.Beneficiary"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>
<%@include file="includes/SOheader.jsp" %>
				<div class="post">
					<h2 class="title"><a href="#">Submit Feedback</a></h2>
                                        <p class="meta">*required fields</p>
					<div class="entry">
						<form name="formFeedback" action="addFeedback" method="post">
                                                <table align="center">
                                                    <tr>
                                                        <td>*Beneficiary </td>
                                                        <td>
                                                            <select name ="feedbackbenefit">
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
                                                        <td>Author </td>
                                                        <td><input type="text" name="author"/><br/></td>
                                                    </tr>    
                                                    <tr>
                                                        <td>*Feedback (limit to 180 chars)</td>
                                                        <td><textarea name ="feedback" rows ="4" cols ="40" required="true" maxlength="180"></textarea></td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td></td>
                                                        <td><input type="submit" value="Submit"/></td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </div>
				</div>
                                <!--END FEEDBACK FORM SECTION-->
<%@include file="includes/SOsidebar.jsp"%>                         
<%@include file="includes/footer.jsp"%>