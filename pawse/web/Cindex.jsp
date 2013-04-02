<%-- 
    Document   : Cindex
    Created on : 03 28, 13, 10:34:46 PM
    Author     : Nancy
    **Note: this is the index for ADMIN (COSCA)
--%>

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
    
    <%Coordinator user = (Coordinator)session.getAttribute("user");%>
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
			<li class="current_page_item"><a href="Cindex.jsp"><span>Homepage</span></a></li>
			<li><span>Beneficiary</span>
				<ul>
					<li class="first"> <a href="addBeneficiary.jsp">Add Beneficiary</a> </li>
					<li><a href="delBeneficiary.jsp">Remove Beneficiary</a> </li>
                                        <li class="last"><a href="viewBeneficiary.jsp">View Beneficiaries</a> </li>
				</ul>
			</li>
			<li><span>CSOA Form</span>
                            <ul>
                                <li class="first"><a href="viewFormPending.jsp">On Pending</a></li>
                                <li><a href="viewFormApproved.jsp">Approved</a></li>
                                <li class="last"><a href="viewForm.jsp">Previously Submitted</a></li>
                            </ul>
                        </li>
			<li><a href="cosca.jsp"><span>COSCA</span></a></li>
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
				<div class="post">
					<h2 class="title"><a href="#">Welcome to Outracker</a> v.1</h2>
					<div class="entry">
						<p>This is <strong>Outracker</strong> v.1, 
                                                tracking outreach activities of the different University Organizations from planning to execution; 
                                                providing the students the necessary information they need to 
                                                know for outreach activities as well as the requirements they need to do prior and posterior the outreach.
                                                </p>
                                        </div>
				</div>
				<div class="post">
					<h2 class="title"><a href="#">Team PAWSE</a></h2>
					<p class="meta">Posted by <a href="#">PAWSE</a> on March 28, 2013</p>
                                        <div class="entry">
						<p>
                                                Team Leader:    Nancy Reena S. Naval <br/>
                                                Requirements Analyst Manager:   Miguel Gabriel C. Tanedo <br/>
                                                Software Design Manager:    Gil Paulo Melendez <br/>
                                                User Interface Manager:     Earlniel L. Robles <br/>
                                                Quality Assurance Manager:  Nancy Reena S. Naval <br/>
                                                </p>
					</div>
				</div>
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
                                                    <center class ="accountname"><%=user.getUsername()%></center>
                                                </p>
					</li>
					<li>
						<h2>Feedback</h2>
						<ul>
							<li><a href="viewBeneficiary.jsp">View Feedback</a></li>
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
