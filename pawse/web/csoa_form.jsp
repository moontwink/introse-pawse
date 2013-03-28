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
			<li><a href="index.jsp"><span>Homepage</span></a></li>
			<li><span>Beneficiary</span>
				<ul>
					<li class="first"> <a href="index">Maecenas luctus lectus</a> </li>
					<li> <a href="search">Integer gravida</a> </li>
					<li class="last"> <a href="about">Feedback</a> </li>
				</ul>
			</li>
			<li class="current_page_item"><a href="#"><span>CSOA Form</span></a></li>
			<li><a href="#"><span>COSCA</span></a></li>
                        <li><a href="#"><span>Contact</span></a></li>
			<li><span>sign in</span>
				<ul>
					<li class="first"> <a href="index">Log in</a> </li>
					<li class="last"> <a href="about">Create Account</a> </li>
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
					<p class="meta">Posted by <a href="#">COSCA</a> on March 28, 2013</p>
					<div class="csoaform">
                                            
                                            <form>
                                            <table>
                                                <tr>
                                                    <td>Activity Type</td>
                                                    <td><select name ="actype">
                                                            <option value="Resource Mobilization" 
                                                                    title="fund raising for a specific cause; donation of disaster relief items; donation of books and school supplies; cash/check donation; etc.">
                                                                    Resource Mobilization</option>
                                                            <option value ="Education for Youth"
                                                                    title ="tutorial; values formation; skills enhancement; etc.">
                                                                    Education for Youth</option>
                                                            <option value ="Education for Adults"
                                                                    title ="org dev't; local governance; adults literacy; etc.">
                                                                    Education for Adults</option>
                                                            <option value ="Advocacy Work"
                                                                    title ="mass mobilizations; exhibit; forum; distribution of information materials; etc.">
                                                                    Advocacy Work</option>
                                                            <option value ="Immersion/Interaction with Institutions"
                                                                    title ="orphanages; home for the aged; NGOs; etc.">
                                                                    Immersion/Interaction with Institutions</option>
                                                            <option value ="Immersion/Interaction with Communities"
                                                                    title ="COMDEV priority sites; NSTP-CWTS-TRED Community Partners">
                                                                    Immersion/Interaction with Communities</option>
                                                            <option value ="Environmental Related"
                                                                    title ="deforestation work; gathering of seedlings; etc.">
                                                                    Environmental Related</option>
                                                            <option value ="Health Related"
                                                                    title ="medical/dental mission; etc.">
                                                                    Health Related</option>
                                                            <option value ="Disaster Response Related"
                                                                    title ="relief operations; etc.">
                                                                    Disaster Response Related</option>
                                                            <option value ="Others">Others</option>
                                                    </select></td>
                                                </tr>
                                                <tr>
                                                    <td>Date Filled</td>
                                                    <td><input type ="date"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Sponsoring Organization</td>
                                                    <td><select name ="studentorg"></select>
                                                        <!--//get list of student orgs in sql--></td>
                                                </tr>
                                                <tr>
                                                    <td>Title of Activity</td>
                                                    <td><input type = "text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Date of Activity</td>
                                                    <td><input type ="date"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Time of Activity</td>
                                                    <td><input type ="time"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Beneficiary</td>
                                                    <td><select name ="studentorg"></select>
                                                        <!--//get list of beneficiaries in sql--></td>
                                                </tr>
                                                <tr>
                                                    <td>Total Projected Expense</td>
                                                    <td><input type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Faculty</td>
                                                    <td><input type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Faculty Cellphone Number</td>
                                                    <td><input type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Accomplisher Name</td>
                                                    <td><input type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Designation</td>
                                                    <td><input type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Cellphone Number</td>
                                                    <td><input type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>E-mail Address</td>
                                                    <td><input type ="email"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Objectives</td>
                                                    <td><textarea name ="objectives" rows ="4" cols ="40"></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td>Program Flow</td>
                                                    <td><textarea name ="objectives" rows ="4" cols ="40"></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td><input type ="submit"/></td>
                                                </tr>
                                                
                                                
                                            </table>      
                                            </form>
                                            
                                        </div>
				</div>
                            <!--END CSOA FORM SECTION-->
                            
				<div class="post">
					<h2 class="title"><a href="#">Lorem ipsum sed aliquam</a></h2>
					<p class="meta">Posted by <a href="#">Someone</a> on April 19, 2012
						&nbsp;&bull;&nbsp; <a href="#" class="comments">Comments (64)</a> &nbsp;&bull;&nbsp; <a href="#" class="permalink">Full article</a></p>
					<div class="entry">
						<p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum vel, tempor at, varius non, purus. Mauris vitae nisl nec metus placerat consectetuer. Donec ipsum. Proin imperdiet est. Phasellus <a href="#">dapibus semper urna</a>. Pellentesque ornare, consectetuer nisl felis ac diam. Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. Mauris vitae nisl nec metus placerat consectetuer. </p>
					</div>
				</div>
				<div class="post">
					<h2 class="title"><a href="#">Phasellus pellentesque turpis </a></h2>
					<p class="meta">Posted by <a href="#">Someone</a> on April 15, 2012
						&nbsp;&bull;&nbsp; <a href="#" class="comments">Comments (64)</a> &nbsp;&bull;&nbsp; <a href="#" class="permalink">Full article</a></p>
					<div class="entry">
						<p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum vel, tempor at, varius non, purus. Mauris vitae nisl nec metus placerat consectetuer. Donec ipsum. Proin imperdiet est. Pellentesque ornare, orci in consectetuer hendrerit, urna elit eleifend nunc. Donec ipsum. Proin imperdiet est. Pellentesque ornare, orci in consectetuer hendrerit, urna elit eleifend nunc.</p>
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
						<h2>Aliquam tempus</h2>
						<p>Mauris vitae nisl nec metus placerat perdiet est. Phasellus dapibus semper consectetuer hendrerit.</p>
					</li>
					<li>
						<h2>Categories</h2>
						<ul>
							<li><a href="#">Aliquam libero</a></li>
							<li><a href="#">Consectetuer adipiscing elit</a></li>
							<li><a href="#">Metus aliquam pellentesque</a></li>
							<li><a href="#">Suspendisse iaculis mauris</a></li>
							<li><a href="#">Urnanet non molestie semper</a></li>
							<li><a href="#">Proin gravida orci porttitor</a></li>
						</ul>
					</li>
					<li>
						<h2>Blogroll</h2>
						<ul>
							<li><a href="#">Aliquam libero</a></li>
							<li><a href="#">Consectetuer adipiscing elit</a></li>
							<li><a href="#">Metus aliquam pellentesque</a></li>
							<li><a href="#">Suspendisse iaculis mauris</a></li>
							<li><a href="#">Urnanet non molestie semper</a></li>
							<li><a href="#">Proin gravida orci porttitor</a></li>
						</ul>
					</li>
					<li>
						<h2>Archives</h2>
						<ul>
							<li><a href="#">Aliquam libero</a></li>
							<li><a href="#">Consectetuer adipiscing elit</a></li>
							<li><a href="#">Metus aliquam pellentesque</a></li>
							<li><a href="#">Suspendisse iaculis mauris</a></li>
							<li><a href="#">Urnanet non molestie semper</a></li>
							<li><a href="#">Proin gravida orci porttitor</a></li>
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
