<%-- 
    Document   : view_form
    Created on : 03 31, 13, 8:26:32 PM
    Author     : Nancy
--%>

<%@page import="Models.CSOA_Form"%>
<%@page import="DAO.CSOA_FormDAOsetter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.StudentOrganization"%>
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
    <%StudentOrganization user = (StudentOrganization)session.getAttribute("user");%>
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
			<li><a href="SOindex.jsp"><span>Homepage</span></a></li>
			<li><span>Beneficiary</span>
				<ul>
					<li class="first"> <a href="SOviewBeneficiary.jsp">View Beneficiaries</a> </li>
					<li> <a href="#">Search Beneficiary</a> </li>
					<li class="last"> <a href="#">Feedback</a> </li>
				</ul>
			</li>
			<li><span>CSOA Form</span>
                            <ul>
                                <li class="first"><a href="SOcsoa_form.jsp">Submit Form</a></li>
                                <li class="last"><a href="SOview_form.jsp">View Previous Forms</a></li>
                            </ul>
                        </li>
			<li><a href="#"><span>COSCA</span></a></li>
			<li><span>sign out</span>
				<ul>
					<li class="first"> <a href="Login.jsp">Log out</a> </li>
					<li class="last"> <a href="SOeditAccount.jsp">View/Edit Account</a> </li>
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
				<div id="slider">
					<div class="viewer">
						<div class="reel">
							<div id="gallery">
								<div class="slide"> <a href="images/pics01.jpg"><img src="images/pics01.jpg" width="590" height="300" alt="" /></a> </div>
								<div class="slide"> <a href="images/pics02.jpg"><img src="images/pics02.jpg" width="590" height="300" alt="" /></a> </div>
								<div class="slide"> <a href="images/pics03.jpg"><img src="images/pics03.jpg" width="590" height="300" alt="" /></a> </div>
							</div>
						</div>
					</div>
				</div>
				<script type="text/javascript">
				$('#slider').slidertron({
					viewerSelector: '.viewer',
					reelSelector: '.viewer .reel',
					slidesSelector: '.viewer .reel .slide',
					advanceDelay: 3000,
					speed: 'slow'
				});
			</script>
				<script type="text/javascript">
				$('#gallery').poptrox({
					overlayColor: '#222222',
					overlayOpacity: 0.75,
					popupCloserBackgroundColor: '#560969',
					popupBackgroundColor: '#FFFFFF',
					popupTextColor: '#aaaaaa',
					popupPadding: 20
				});
			</script>
                            
                            <!--START CSOA FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="#"></a> Community Service <br/>
                                            Outreach Activity Form</h2>
					<p class="meta">Previous Forms Submitted</p>
					<div class="entry">
                                            
                                            <table align="center">
                                                <tr class="benefitTable">
                                                    <td>____Activity Title____</td>
                                                    <td>__Activity Date__</td>
                                                    <td>______Beneficiary______</td>
                                                    <td>___Status___</td>
                                                </tr>
                                                
                                                <%
                                                    CSOA_FormDAOsetter csDAO = new CSOA_FormDAOsetter();
                                                    ArrayList<CSOA_Form> s = csDAO.getAllFormsByOrg(user.getName());
                                                    for(CSOA_Form f : s){
                                                %>
                                                <tr class="benefitCol">
                                                    <td><%=f.getActivityTitle()%></td>
                                                    <td><%=f.getActivityDate()%></td>
                                                    <td><%=f.getBeneficiary().getName()%></td>
                                                    <td><%
                                                        if(f.getStatus().equals("Rejected")){
                                                        %>
                                                        <a href="" title="Comment: <%=f.getComments()%>"><%=f.getStatus()%></a>
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
						<p>You are currently logged in as: <br/>
                                                    <center class ="accountname"><a href ="SOeditAccount.jsp"><%=user.getName()%></a></center>
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
