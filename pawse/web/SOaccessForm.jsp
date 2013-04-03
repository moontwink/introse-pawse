
<%@page import="Models.CSOA_Form"%>
<%@include file="includes/SOheader.jsp" %>
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
                                            
                                        </div>
				</div>
                            <!--END CSOA FORM SECTION-->
                            
<%@include file="includes/SOsidebar.jsp"%>
	
<%@include file="includes/footer.jsp" %>
                      