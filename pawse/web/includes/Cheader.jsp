<%-- 
    Document   : addBeneficiary
    Created on : 03 29, 13, 1:20:41 AM
    Author     : Nancy
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
    
    
    <% Coordinator c = null;
        if(!(session.getAttribute("user") instanceof Coordinator)){
        %>
        <jsp:forward page="./Login.jsp"/>
        <%
                
    }
    else {
       c = (Coordinator)session.getAttribute("user");
    }
%>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header">
			<div id="logo">
				<h1><a href="Cindex.jsp">Outracker</a> v.1</h1>
				<p>web system by <a href="#">PAWSE</a></p>
			</div>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu-wrapper">
		<ul id="menu">
			<li><a href="Cindex.jsp"><span>Homepage</span></a></li>
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
			<li><a href="Ccosca.jsp"><span>COSCA</span></a></li>
			<li><span>sign out</span>
				<ul>
					<li class="first"> <a href="Logout">Log out</a> </li>
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