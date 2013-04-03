<%@include file="includes/header.jsp" %>
				<div class="post">
					<h2 class="title"><a href="#">Login</a></h2>
					<div class="entry">
						<form name="login" action="Logging" method="post">
                                                <table align="center">
                                                    <tr>
                                                        <td>Username: </td>
                                                        <td><input type="text" name="username" required ="required"/><br/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Password: </td>
                                                        <td><input type="password" name="password" required ="required"/><br/></td>
                                                    </tr>
                                                    <tr>
                                                        <td></td>
                                                        <td><input type="submit" value="Submit"/></td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </div>
				</div>
			
<%@include file="includes/sidebar.jsp" %>
<%@include file="includes/footer.jsp" %>
