<%-- 
    Document   : accessForm
    Created on : 04 1, 13, 1:37:04 AM
    Author     : Nancy
--%>

<%@page import="Models.CSOA_Form"%>
<%@page import="DAO.CSOA_FormDAOsetter"%>
<%@page import="java.util.ArrayList"%>
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
                                <%
                                    CSOA_Form f = (CSOA_Form)request.getAttribute("accessingForm");
                                %>
				<div class="post">
					<h2 class="title"><a href="#"></a> Community Service <br/>
                                            Outreach Activity Form</h2>
                                    <p class="meta">CSOA Form ID <font color="red"> <%=f.getIdCSF()%> </font><br/>
                                                    STATUS <font color="red"> <%=f.getStatus()%> </font></p>
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
                                                    <td><input type="text" required="true"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Comments</td>
                                                    <td colspan="3"><textarea cols="25" rows="2" placeholder="comments"></textarea></td>
                                                </tr>
                                                
                                                </form>
                                            </table>
                                                <%}%>
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
