<%@include file="includes/Cheader.jsp" %>
				<!--START BENEFICIARY FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="javascript:void(0)"> Add Beneficiary </a></h2>
					<p class="meta">Posted by <a href="#">COSCA</a> on March 28, 2013</p>
					<div class="entry">
                                            <form name ="addBeneficiary" action ="addBeneficiary" method="post">
                                            <table>
                                                <tr>
                                                    <td>Name</td>
                                                    <td><input name ="beneficiaryName" type = "text" required="true"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Address</td>
                                                    <td><textarea name ="address" rows ="4" cols ="40" required ="true"/></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td>Telephone</td>
                                                    <td><input name="telephone" type ="text" required="true"/></td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td><input type ="submit"/></td>
                                                </tr>
                                            </table>      
                                            </form>
                                        </div>
				</div>
                            <!--END BENEFICIARY FORM SECTION-->                        
<%@include file="includes/Csidebar.jsp" %>
		<!-- end #sidebar -->
<%@include file="includes/footer.jsp" %>