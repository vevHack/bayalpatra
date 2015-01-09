

<%@ page import="com.bayalpatra.hrm.EmployeeDependents"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main_hrm" />
<g:set var="entityName"
	value="${message(code: 'employeeDependents.label', default: 'Employee Dependents')}" />
<title><g:message code="default.create.label"
		args="[entityName]" />
</title>
</head>
<body>
	%{--
	<div class="nav">
		<span class="menuButton"><a class="home"
			href="${createLink(uri: '/')}"><g:message
					code="default.home.label" />
		</a>
		</span> <span class="menuButton"><g:link class="list" action="list">
				<g:message code="default.list.label" args="[entityName]" />
			</g:link>
		</span>
	</div>
	--}%
	<div class="body">

		<h4>
			<g:message code="default.create.label" args="[entityName]" />
		</h4>
		<g:render template='/employee/menu'></g:render>
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
		<div class="personal_detail">
			<g:hasErrors bean="${employeeDependentsInstance}">
				<div class="errors">
					<g:renderErrors bean="${employeeDependentsInstance}" as="list" />
				</div>
			</g:hasErrors>

			<g:form action="save" enctype="multipart/form-data">
				<div class="dialogDependent">
					<table>
						<tr>
							<td>
								<table>

									<tr class="prop">
										<td valign="top" class="name"><label for="fatherName"><g:message
													code="employeeDependents.fatherName.label"
													default="Father Name" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'fatherName', 'errors')}">
											<g:textField name="fatherName"
												value="${employeeDependentsInstance?.fatherName}" /></td>
									</tr>

									<tr class="prop">
										<td valign="top" class="name"><label for="fatherDob"><g:message
													code="employeeDependents.fatherDob.label"
													default="Year of Birth" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'fatherDob', 'errors')}">
											<g:set var="startYr"
												value="${new GregorianCalendar().get(Calendar.YEAR)-85}" />
											<g:set var="endYr"
												value="${new GregorianCalendar().get(Calendar.YEAR)}" /> <g:datePicker
												name="fatherDob" precision="year"
												value="${employeeDependentsInstance?.fatherDob}"
												years="${startYr..endYr}" /></td>
									</tr>

									<tr class="prop">
										<td valign="top" class="name"><label for="fatherAddress"><g:message
													code="employeeDependents.fatherAddress.label"
													default="Father Address" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'fatherAddress', 'errors')}">
											<g:textField name="fatherAddress"
												value="${employeeDependentsInstance?.fatherAddress}" /></td>
									</tr>

								</table></td>
							<td><img
								src="${resource(dir: 'images/employee', file: 'defaultImage.jpg')}"
								alt="" width="150" height="140"><br>
							</td>
						</tr>
					</table>

					<table>
						<tr>
							<td>
								<table>
									<tr class="prop">
										<td valign="top" class="name"><label for="motherName"><g:message
													code="employeeDependents.motherName.label"
													default="Mother Name" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'motherName', 'errors')}">
											<g:textField name="motherName"
												value="${employeeDependentsInstance?.motherName}" /></td>
									</tr>


									<tr class="prop">
										<td valign="top" class="name"><label for="motherDob"><g:message
													code="employeeDependents.motherDob.label"
													default="Year of Birth" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'motherDob', 'errors')}">
											<g:set var="startYr"
												value="${new GregorianCalendar().get(Calendar.YEAR)-85}" />
											<g:set var="endYr"
												value="${new GregorianCalendar().get(Calendar.YEAR)}" /> <g:datePicker
												name="motherDob" precision="year"
												value="${employeeDependentsInstance?.motherDob}"
												years="${startYr..endYr}" /></td>
									</tr>


%{--									<tr class="prop">
										<td valign="top" class="name">Upload Image: <br>
											--}%%{--
											<p style="color: #ff0000">Image size must be: 150
												px(Width) by 140 px(Height)</p>--}%%{-- --}%%{--<g:message
												code="image.type.label" default="File" />--}%%{--</td>
										<td valign="top" class="value"><input type="file"
											name="mother_image" /></td>
									</tr>--}%
								</table></td>
							<td><img
								src="${resource(dir: 'images/employee', file: 'defaultImage.jpg')}"
								alt="" width="150" height="140"><br>
							</td>
						</tr>
					</table>
					<table>
						<tr>
							<td>
								<table>
									<tr class="prop">
										<td valign="top" class="name"><label for="spouseName"><g:message
													code="employeeDependents.spouseName.label"
													default="Spouse Name" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'spouseName', 'errors')}">
											<g:textField name="spouseName"
												value="${employeeDependentsInstance?.spouseName}" /></td>
									</tr>


									<tr class="prop">
										<td valign="top" class="name"><label for="spouseDob"><g:message
													code="employeeDependents.spouseDob.label"
													default="Year of Birth" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'spouseDob', 'errors')}">
											<g:set var="startYr"
												value="${new GregorianCalendar().get(Calendar.YEAR)-85}" />
											<g:set var="endYr"
												value="${new GregorianCalendar().get(Calendar.YEAR)}" /> <g:datePicker
												name="spouseDob" precision="year"
												value="${employeeDependentsInstance?.spouseDob}"
												years="${startYr..endYr}" /></td>
									</tr>
									%{--
									<tr class="prop">
										<td valign="top" class="name"><label for="spouseAge"><g:message
													code="employeeDependents.spouseAge.label"
													default="Spouse Age" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'spouseAge', 'errors')}">
											<g:textField name="spouseAge"
												value="${employeeDependentsInstance?.spouseAge}" /></td>
									</tr>
									--}%

									<tr class="prop">
										<td valign="top" class="name"><label for="spouseAddress"><g:message
													code="employeeDependents.spouseAddress.label"
													default="Spouse Address" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'spouseAddress', 'errors')}">
											<g:textField name="spouseAddress"
												value="${employeeDependentsInstance?.spouseAddress}" /></td>
									</tr>

								</table></td>
							<td><img
								src="${resource(dir: 'images/employee', file: 'defaultImage.jpg')}"
								alt="" width="150" height="140"><br>
							</td>
						</tr>
					</table>

					<table>
						<tr>
							<td>
								<table>
									<tr class="prop">
										<td valign="top" class="name"><label for="childName1"><g:message
													code="employeeDependents.childName1.label"
													default="Child Name1" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'childName1', 'errors')}">
											<g:textField name="childName1"
												value="${employeeDependentsInstance?.childName1}" /></td>
									</tr>

									<tr class="prop">
										<td valign="top" class="name"><label for="child1Dob"><g:message
													code="employeeDependents.child1Dob.label"
													default="Year of Birth" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'child1Dob', 'errors')}">
											<g:set var="startYr"
												value="${new GregorianCalendar().get(Calendar.YEAR)-70}" />
											<g:set var="endYr"
												value="${new GregorianCalendar().get(Calendar.YEAR)}" /> <g:datePicker
												name="child1Dob" precision="year"
												value="${employeeDependentsInstance?.child1Dob}"
												years="${startYr..endYr}" /></td>
									</tr>

									%{--
									<tr class="prop">
										<td valign="top" class="name"><label for="childAge1"><g:message
													code="employeeDependents.childAge1.label"
													default="Child Age1" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'childAge1', 'errors')}">
											<g:textField name="childAge1"
												value="${employeeDependentsInstance?.childAge1}" /></td>
									</tr>
									--}%

								</table></td>
							<td><img
								src="${resource(dir: 'images/employee', file: 'defaultImage.jpg')}"
								alt="" width="150" height="140"><br>
							</td>
						</tr>
					</table>

					<table>
						<tr>
							<td>
								<table>
									<tr class="prop">
										<td valign="top" class="name"><label for="childName2"><g:message
													code="employeeDependents.childName2.label"
													default="Child Name2" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'childName2', 'errors')}">
											<g:textField name="childName2"
												value="${employeeDependentsInstance?.childName2}" /></td>
									</tr>


									<tr class="prop">
										<td valign="top" class="name"><label for="child2Dob"><g:message
													code="employeeDependents.child2Dob.label"
													default="Year of Birth" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'child2Dob', 'errors')}">
											<g:set var="startYr"
												value="${new GregorianCalendar().get(Calendar.YEAR)-70}" />
											<g:set var="endYr"
												value="${new GregorianCalendar().get(Calendar.YEAR)}" /> <g:datePicker
												name="child2Dob" precision="year"
												value="${employeeDependentsInstance?.child2Dob}"
												years="${startYr..endYr}" /></td>
									</tr>

									%{--
									<tr class="prop">
										<td valign="top" class="name"><label for="childAge2"><g:message
													code="employeeDependents.childAge2.label"
													default="Child Age2" />
										</label></td>
										<td valign="top"
											class="value ${hasErrors(bean: employeeDependentsInstance, field: 'childAge2', 'errors')}">
											<g:textField name="childAge2"
												value="${employeeDependentsInstance?.childAge2}" /></td>
									</tr>
									--}%

								</table></td>
							<td><img
								src="${resource(dir: 'images/employee', file: 'defaultImage.jpg')}"
								alt="" width="150" height="140"><br>
							</td>
						</tr>
					</table>

					<g:hiddenField name="employee.id" value="${employeeInstance?.id}" />


					%{--
					<tr class="prop">
						--}% %{--
						<td valign="top" class="name">--}% %{--<label for="employee"><g:message
									code="employeeDependents.employee.label" default="Employee" />
						</label>--}% %{--</td>--}% %{--
						<td valign="top"
							class="value ${hasErrors(bean: employeeDependentsInstance, field: 'employee', 'errors')}">--}%
							%{--<g:select name="employee.id" from="${hrm.Employee.list()}"
								optionKey="id"
								value="${employeeDependentsInstance?.employee?.id}" />--}%
							%{--</td>--}% %{--
					</tr>
					--}%

					<div class="formbuttons_edit_employee1" style="border-top: 1px solid #999;">
						<g:submitButton name="create" class="savebutton"
							value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</div>

				</div>

			</g:form>
		</div>

	</div>
</body>
</html>
