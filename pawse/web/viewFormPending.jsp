<%-- 
    Document   : viewFormPending
    Created on : 04 1, 13, 12:47:18 AM
    Author     : Nancy
--%>

<%@page import="Models.CSOA_Form"%>
<%@page import="DAO.CSOA_FormDAOsetter"%>
<%@page import="java.util.ArrayList"%>
<%@include file="includes/Cheader.jsp" %>
				<!--START CSOA FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="javascript:void(0)"> Pending Community Service <br/>
                                            Outreach Activity Forms</a></h2>
					<p class="meta">CSOA Forms Submitted By Student Organizations<br/>
                                            **listed according to earliest submitted**</p>
					<div class="entry">
                                            
                                            <table align="center">
                                                <tr class="benefitTable">
                                                    <td>__File Number__</td>
                                                    <td>____Sponsoring Organization____</td>
                                                    <td>__Activity Date__</td>
                                                    <td>___Status___</td>
                                                </tr>
                                                
                                                <%
                                                    CSOA_FormDAOsetter csDAO = new CSOA_FormDAOsetter();
                                                    ArrayList<CSOA_Form> s = csDAO.getAllFormsByPending();
                                                    for(CSOA_Form f : s){
                                                %>
                                                <tr class="benefitCol">
                                                    <td><a href="<%=request.getContextPath()%>/SelectForm?formAccess=<%=f.getIdCSF()%>"><%=f.getIdCSF()%></a></td>
                                                    
                                                    <td><%=f.getSponsor().getName()%></td>
                                                    <td><%=f.getActivityDate()%></td>
                                                    
                                                    <td>
                                                        <%=f.getStatus()%>
                                                    </td>
                                                </tr>
                                                
                                                <%}%>
                                            </table>
                                        </div>
				</div>
                            <!--END CSOA FORM SECTION-->
		<%@include file="includes/Csidebar.jsp" %>
                <%@include file="includes/footer.jsp" %>