<%-- 
    Document   : view_form
    Created on : 03 31, 13, 8:26:32 PM
    Author     : Nancy
--%>

<%@page import="Models.CSOA_Form"%>
<%@page import="DAO.CSOA_FormDAOsetter"%>
<%@page import="java.util.ArrayList"%>
<%@include file="includes/SOheader.jsp"%>

				<%@include file="includes/slider.jsp"%>
                            
                            <!--START CSOA FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="javascript:void(0)"> Community Service <br/>
                                            Outreach Activity Form</a></h2>
					<p class="meta">Previous Forms Submitted</p>
					<div class="entry">
                                            
                                            <table align="center">
                                                <tr class="benefitTable">
                                                    <td>__File Number__</td>
                                                    <td>____Activity Title____</td>
                                                    <td>__Activity Date__</td>
                                                    <td>___Status___</td>
                                                </tr>
                                                
                                                <%
                                                    CSOA_FormDAOsetter csDAO = new CSOA_FormDAOsetter();
                                                    ArrayList<CSOA_Form> s = csDAO.getAllFormsByOrg(user.getName());
                                                    for(CSOA_Form f : s){
                                                %>
                                                <tr class="benefitCol">
                                                    <td><a href="<%=request.getContextPath()%>/SOselectForm?formAccess=<%=f.getIdCSF()%>"><%=f.getIdCSF()%></a></td>
                                                    
                                                    <td><%=f.getActivityTitle()%></td>
                                                    <td><%=f.getActivityDate()%></td>
                                                    
                                                    
                                                    <td>
                                                        <%
                                                        if(f.getStatus().equals("Rejected") && (f.getComments() == null)){
                                                        %>
                                                            <a href="" title="No comment">
                                                            <%=f.getStatus()%></a>
                                                            
                                                        <%
                                                        } else if(f.getStatus().equals("Rejected") && !f.getComments().isEmpty()){
                                                        %>
                                                           <a href="" title="Comment: <%=f.getComments()%>">
                                                           <%=f.getStatus()%></a>
                                                            
                                                        <%}else if(f.getStatus().equals("Approved")){%>
                                                            <%=f.getStatus()%>
                                                        <%}else{%>
                                                            <%=f.getStatus()%>
                                                        <%}%>
                                                    </td>
                                                </tr>
                                                
                                                <%}%>
                                            </table>
                                        </div>
				</div>
                            <!--END CSOA FORM SECTION-->
                            
				
		<%@include file="includes/SOsidebar.jsp"%>
	
<%@include file="includes/footer.jsp"%>

