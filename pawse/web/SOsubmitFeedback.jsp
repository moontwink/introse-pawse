<%-- 
    Document   : submitFeedback
    Created on : 04 2, 13, 3:50:45 PM
    Author     : Nancy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Models.Beneficiary"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>
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
					<li class="last"> <a href="#">Search Beneficiary</a> </li>
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
				<!--START FEEDBACK FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="#">Submit Feedback</a></h2>
					<div class="entry">
						<form name="formFeedback" action="addFeedback" method="post">
                                                <table align="center">
                                                    <tr>
                                                        <td>Beneficiary </td>
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
                                                        <td>Feedback (limit to 180 chars)</td>
                                                        <td><textarea name ="feedback" rows ="4" cols ="40"></textarea></td>
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
							<li><a href="SOviewBeneficiary.jsp">View Feedback</a></li>
							<li><a href="SOsubmitFeedback.jsp">Submit Feedback</a></li>
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
