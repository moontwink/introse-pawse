<%-- 
    Document   : SOviewFeedback
    Created on : 04 2, 13, 4:49:01 PM
    Author     : Nancy
--%>

<%@page import="Models.Feedback"%>
<%@page import="DAO.FeedbackDAOsetter"%>
<%@page import="java.util.ArrayList"%>
<%@include file="includes/SOheader.jsp"%>
				<%@include file="includes/slider.jsp"%>
				<!--START VIEW FEEDBACK SECTION-->
                                <%
                                    String benefitlist = (String)request.getAttribute("benefitlist");
                                %>
				<div class="post">
					<h2 class="title"><a href="#"></a><%=benefitlist%> feedbacks </h2>
					<p class="meta"></p>
					<div class="entry">
                                            <table>
                                                <tr class="benefitTable">
                                                    <td><u>AUTHOR</u></td>
                                                    <td></td>
                                                </tr>
                                                <%
                                                    FeedbackDAOsetter dao = new FeedbackDAOsetter();
                                                    ArrayList<Feedback> k = dao.getAllFeedbacksByBeneficiary(benefitlist);
                                                    for(Feedback b : k){
                                                %>
                                                <tr class="feedAuthor">
                                                    <td><%=b.getAuthor()%></td>
                                                    <td></td>
                                                </tr>
                                                <tr class="benefitCol">
                                                    <td></td>
                                                    <td><%=b.getFeedback()%></td>
                                                </tr>
                                                <%}%>
                                            </table>
                                        </div>
				</div>
                            <!--END VIEW FEEDBACK SECTION-->
				
<%@include file="includes/SOsidebar.jsp"%>

<%@include file="includes/footer.jsp"%>