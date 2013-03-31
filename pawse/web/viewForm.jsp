<%-- 
    Document   : viewForm
    Created on : 04 1, 13, 12:20:13 AM
    Author     : Nancy
--%>

<%@page import="Models.CSOA_Form"%>
<%@page import="DAO.CSOA_FormDAOsetter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>
<%@page import="Models.Beneficiary"%>
<%@page import="Models.Coordinator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Outracker</title>
<link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="./js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="./js/jquery.slidertron-1.0.js"></script>
<script type="text/javascript" src="./js/jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="./js/jquery.poptrox-1.0.js"></script>
</head>
<body>
    
    <%Coordinator c = (Coordinator)session.getAttribute("user");%>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				<h1><a href="#">Outracker</a> v.1</h1>
				<p>web system by <a href="#">PAWSE</a></p>
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu-wrapper">
		<ul id="menu">
			<li><a href="Cindex.jsp"><span>Homepage</span></a></li>
			<li class="current_page_item"><span>Beneficiary</span>
				<ul>
					<li class="first"> <a href="addBeneficiary.jsp">Add Beneficiary</a> </li>
					<li> <a href="delBeneficiary.jsp">Remove Beneficiary</a> </li>
                                        <li> <a href="viewBeneficiary.jsp">View Beneficiaries</a> </li>
					<li class="last"> <a href="#">Feedback</a> </li>
				</ul>
			</li>
			<li><a href=""><span>CSOA Form</span></a></li>
			<li><a href="#"><span>COSCA</span></a></li>
			<li><span>sign out</span>
				<ul>
					<li class="first"> <a href="index.jsp">Log out</a> </li>
					<li class="last"> <a href="createAccount.jsp">Create Account</a> </li>
				</ul>
			</li>
		</ul>
		<script type="text/javascript">
			$('#menu').dropotron();
		</script>
	</div>
	<!-- end #menu -->
	<div id="page">
		<div id="content"><div class="ic"></div>
			<div class="contentbg">
				<!--START CSOA FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="#"></a> Community Service <br/>
                                            Outreach Activity Form</h2>
					<p class="meta">CSOA Forms Submitted By Student Organizations</p>
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
                                                    ArrayList<CSOA_Form> s = csDAO.getAllForms();
                                                    for(CSOA_Form f : s){
                                                %>
                                                <tr class="benefitCol">
                                                    <td><a href="<%=request.getContextPath()%>/SelectForm?formAccess=<%=f.getIdCSF()%>"><%=f.getIdCSF()%></a></td>
                                                    
                                                    <td><%=f.getSponsor().getName()%></td>
                                                    <td><%=f.getActivityDate()%></td>
                                                    
                                                    <td>
                                                        <%
                                                        if(f.getStatus().equals("Rejected")){
                                                        %>
                                                        <a href="" title="Comment: <%=f.getComments()%>"><%=f.getStatus()%></a>
                                                        <%}else if(f.getStatus().equals("Approved")){%>
                                                            <%=f.getStatus()%>
                                                        <%}else{%>
                                                            <%=f.getStatus()%>
                                                        <%}%>
                                                    </td>
                                                </tr>
                                                
                                                <%}%>
                                            </table>
                                            
                                            <%--
                                            <table>
                                                <tr>
                                                    <td>Activity Type</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Date Filled</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Sponsoring Organization</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Title of Activity</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Date of Activity</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Beneficiary</td>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Total Projected Expense</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Faculty</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Faculty Cellphone Number</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Accomplisher Name</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Designation</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Cellphone Number</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>E-mail Address</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Objectives</td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td>Program Flow</td>
                                                    <td></td>
                                                </tr>
                                                <tr><td><label>Begin Time:</label></td><td>
                                                        
                                                    </td></tr>
                                                <tr><td><label>End Time:</label></td><td>
                                                        
                                                    </td></tr>
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                            </table>
                                            --%>
                                            
                                        </div>
				</div>
                            <!--END CSOA FORM SECTION-->
                            
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
