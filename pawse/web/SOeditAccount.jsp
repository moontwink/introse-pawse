<%@include file="includes/SOheader.jsp" %>
				<!--START VIEW/EDIT ACCOUNT FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="javascript:void(0)">View/Edit Account</a></h2>
					<div class="entry">
						<form name="editaccount" action="editAccount" method="post">
                                                <table align="center">
                                                    <tr>
                                                        <%String message = (String)request.getAttribute("message");
                                                            if(message != null){
                                                        %>
                                                        <td class ="successmsg" colspan="3"><%=message%>
                                                            <br/><br/></td><%}%>
                                                    </tr>
                                                    <tr>
                                                        <td>Organization Name </td>
                                                        <td><input readonly="true" name="orgname" value="<%=user.getName()%>"/><br/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Username (limit to 16 chars) </td>
                                                        <td><input type="text" name="orgusername" value="<%=user.getUsername()%>"/><br/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Password: </td>
                                                        <td><input type="password" name="orgpassword" value="<%=user.getPassword()%>"/><br/></td>
                                                    </tr>
                                                    <tr>
                                                        <td><input name ="button" type="submit" value="Cancel"/></td>
                                                        <td><input name ="button" type="submit" value="Edit"/></td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </div>
				</div>
                                <!--END VIEW/EDIT ACCOUNT FORM SECTION-->
                            
<%@include file="includes/SOsidebar.jsp"%>
	
<%@include file="includes/footer.jsp" %>