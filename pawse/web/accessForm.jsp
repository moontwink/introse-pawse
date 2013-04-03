<%-- 
    Document   : accessForm
    Created on : 04 1, 13, 1:37:04 AM
    Author     : Nancy
--%>

<%@page import="Models.CSOA_Form"%>
<%@include file="includes/Cheader.jsp" %>
				<!--START CSOA FORM SECTION-->
                                <%
                                    CSOA_Form f = (CSOA_Form)request.getAttribute("accessingForm");
                                %>
				<div class="post">
					<h2 class="title"><a href="#"></a> Community Service <br/>
                                            Outreach Activity Form</h2>
                                    <p class="meta">CSOA Form ID <font color="red"> <%=f.getIdCSF()%> </font><br/>
                                                    STATUS <font color="red"> <%=f.getStatus()%> </font><br/>
                                                    <%if(f.getStatus().equalsIgnoreCase("Approved")){%>
                                                    APPROVED BY  <font color="red"> <%=f.getApprovedBy()%> </font>
                                                    <%} else if(f.getStatus().equalsIgnoreCase("Rejected")){%>
                                                    REJECTED BY  <font color="red"> <%=f.getApprovedBy()%> </font><br/>
                                                    COMMENTS  <font color="red"> <%=f.getComments()%> </font>  <%}%></p>
					<div class="entry">
                                            
                                            <table align ="center">
                                                <tr>
                                                    <td class="formtable">Activity Type </td>
                                                    <td> <%=f.getActivityType()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Date Filed </td>
                                                    <td> <%=f.getDateFiled()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Sponsoring Organization </td>
                                                    <td> <%=f.getSponsor().getName()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Title of Activity </td>
                                                    <td> <%=f.getActivityTitle()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Date of Activity </td>
                                                    <td> <%=f.getActivityDate()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Beneficiary </td>
                                                    <td> <%=f.getBeneficiary().getName()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Total Projected Expense </td>
                                                    <td> <%=f.getExpense()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Faculty </td>
                                                    <td> <%=f.getFaculty_name()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Faculty Cellphone Number </td>
                                                    <td> <%=f.getFaculty_cellno()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Accomplisher Name </td>
                                                    <td> <%=f.getAccomplisher()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Designation </td>
                                                    <td> <%=f.getAccomplisherDesignation()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Cellphone Number </td>
                                                    <td> <%=f.getAccomplisherNo()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">E-mail Address </td>
                                                    <td> <%=f.getAccomplisherEmail()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Objectives </td>
                                                    <td> <%=f.getObjectives()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Program Flow </td>
                                                    <td> <%=f.getProgramFlow()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">Begin Time </td>
                                                    <td> <%=f.getBeginTime()%> </td>
                                                </tr>
                                                <tr>
                                                    <td class="formtable">End Time </td>
                                                    <td> <%=f.getEndTime()%> </td>
                                                </tr>
                                                <tr><td><br/></td></tr>
                                            </table>
                                                
                                                <%
                                                      if(f.getStatus().compareToIgnoreCase("Pending") == 0){
                                                %>
                                            <hr/>
                                            <table align="center">    
                                                <form name="formProcess" action="ProcessForm?formAccess=<%=f.getIdCSF()%>" method="post">
                                                <tr>
                                                    
                                                    <td></td>
                                                    <td><input type="submit" name="act" value="Reject"/></td>
                                                    <td><input type="submit" name="act" value="Approve"/></td>
                                                    <td></td>
                                                    
                                                </tr>
                                                <tr>
                                                    <td colspan="2">Coordinator in charge</td>
                                                    <td><input name="incharge" type="text" required="true"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Comments</td>
                                                    <td colspan="3"><textarea name="comments" cols="25" rows="2" placeholder="comments"></textarea></td>
                                                </tr>
                                                
                                                </form>
                                            </table>
                                                <%}%>
                                        </div>
				</div>
                            <!--END CSOA FORM SECTION-->
                            
				<%@include file="includes/Csidebar.jsp" %>
<%@include file="includes/footer.jsp" %>