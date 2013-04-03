
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Beneficiary"%>
<%@page import="DAO.BeneficiaryDAOsetter"%>
<%@include file="includes/SOheader.jsp" %>
				<%@include file="includes/slider.jsp"%>
                            
                            <!--START CSOA FORM SECTION-->
				<div class="post">
					<h2 class="title"><a href="javascript:void(0)"> Community Service <br/>
                                            Outreach Activity Form</a></h2>
					<p class="meta">Posted by <a href="#">COSCA</a> on March 28, 2013</p>
					<div class="entry">
                                            
                                            <form name ="csoaform" action="addForm" method="post">
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
                                                    <td><input name ="datefiled" type ="date"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Sponsoring Organization</td>
                                                    <td><input name="sponsor" type ="text" value ="<%=user.getName()%>" readonly="true" size="<%=user.getName().length()%>"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Title of Activity</td>
                                                    <td><input name="actitle" type = "text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Date of Activity</td>
                                                    <td><input name="actdate" type ="date"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Beneficiary</td>
                                                    <td><select name ="selbenefit">
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
                                                    <td>Total Projected Expense</td>
                                                    <td><input name="expense" type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Faculty</td>
                                                    <td><input name ="faculty" type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Faculty Cellphone Number</td>
                                                    <td><input name="facultyno" type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Accomplisher Name</td>
                                                    <td><input name="accomplisher" type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Designation</td>
                                                    <td><input name="designation" type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Cellphone Number</td>
                                                    <td><input name="accompNo" type ="text"/></td>
                                                </tr>
                                                <tr>
                                                    <td>E-mail Address</td>
                                                    <td><input name="accompEmail" type ="email"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Objectives</td>
                                                    <td><textarea name ="objectives" rows ="4" cols ="40"></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td>Program Flow</td>
                                                    <td><textarea name ="program" rows ="4" cols ="40"></textarea></td>
                                                </tr>
                                                <tr><td><label>Begin Time:</label></td><td><input name = "beginTime" type = 'time' value=""></td></tr>
                                                <tr><td><label>End Time:</label></td><td><input name = "endTime" type = 'time' value=""></td></tr>
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
                            
				
		<%@include file="includes/SOsidebar.jsp"%>
<%@include file="includes/footer.jsp"%>