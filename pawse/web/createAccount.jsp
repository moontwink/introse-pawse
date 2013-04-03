<%@include file="includes/header.jsp" %>
				<!--START CREATE ACCOUNT FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="#">Create Account</a></h2>
					<div class="entry">
						<form name="createaccount" action="createAccount" method="post">
                                                <table align="center">
                                                    <tr>
                                                        <td>Organization Name </td>
                                                        <td><input type="text" name="orgname" required ="required"/><br/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Username (limit to 16 chars) </td>
                                                        <td><input type="text" name="orgusername" required ="required"/><br/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Password: </td>
                                                        <td><input type="password" name="orgpassword" required ="required"/><br/></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td><input type="submit" value="Create"></td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </div>
				</div>
<%@include file="includes/sidebar.jsp" %>
<%@include file="includes/footer.jsp" %>
