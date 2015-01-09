

<%@ page import="com.bayalpatra.hrm.EmployeeTraining" %>
<html>
<head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <meta name="layout" content="main_hrm" />
      <g:set var="entityName" value="${message(code: 'employeeTraining.label', default: 'Employee Training')}" />
      <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
%{--  <div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
    <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
    <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
</div>--}%
<div class="body">
      <h4><g:message code="default.edit.label" args="[entityName]" /></h4>
      <g:render template='/employee/menu'></g:render>
      <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
      </g:if>
      <div class="personal_detail">
            <g:hasErrors bean="${employeeTrainingInstance}">
                  <div class="errors">
                        <g:renderErrors bean="${employeeTrainingInstance}" as="list" />
                  </div>
            </g:hasErrors>
            <g:form method="post" action="update" >
                  <g:hiddenField name="id" value="${employeeTrainingInstance?.id}" />
                  <g:hiddenField name="version" value="${employeeTrainingInstance?.version}" />
                  <div class="dialog">
                        <table>
                              <tbody>

                              <tr class="prop">
                                    <td valign="top" class="name">
                                          <label for="title"><g:message code="employeeTraining.title.label" default="Title *" /></label>
                                    </td>
                                    <td valign="top" class="value ${hasErrors(bean: employeeTrainingInstance, field: 'title', 'errors')}">
                                          <g:textField name="title" value="${employeeTrainingInstance?.title}" />
                                    </td>
                              </tr>

                              <tr class="prop">
                                    <td valign="top" class="name">
                                          <label for="startDate"><g:message code="employeeTraining.startDate.label" default="Start Date" /></label>
                                    </td>
                                    <td valign="top" class="value ${hasErrors(bean: employeeTrainingInstance, field: 'startDate', 'errors')}">
                                          <g:set var="startYr" value="${new GregorianCalendar().get(Calendar.YEAR)-50}"/>
                                          <g:set var="endYr" value="${new GregorianCalendar().get(Calendar.YEAR) + 50}"/>

                                          <g:datePicker name="startDate" precision="day" value="${employeeTrainingInstance?.startDate}" years="${startYr..endYr}" />
                                    </td>
                              </tr>

                              <tr class="prop">
                                    <td valign="top" class="name">
                                          <label for="endDate"><g:message code="employeeTraining.endDate.label" default="End Date" /></label>
                                    </td>
                                    <td valign="top" class="value ${hasErrors(bean: employeeTrainingInstance, field: 'endDate', 'errors')}">
                                          <g:set var="startYr" value="${new GregorianCalendar().get(Calendar.YEAR)-50}"/>
                                          <g:set var="endYr" value="${new GregorianCalendar().get(Calendar.YEAR) + 50}"/>

                                          <g:datePicker name="endDate" precision="day" value="${employeeTrainingInstance?.endDate}" years="${startYr..endYr}" />
                                    </td>
                              </tr>

                              <tr class="prop">
                                    <td valign="top" class="name">
                                          <label for="boundPeriodFrom"><g:message code="employeeTraining.boundPeriodFrom.label" default="Bound Period From *" /></label>
                                    </td>
                                    <td valign="top" class="value ${hasErrors(bean: employeeTrainingInstance, field: 'boundPeriodFrom', 'errors')}">
                                          <g:set var="startYr" value="${new GregorianCalendar().get(Calendar.YEAR)-50}"/>
                                          <g:set var="endYr" value="${new GregorianCalendar().get(Calendar.YEAR) + 50}"/>

                                          <g:datePicker name="boundPeriodFrom" precision="day" value="${employeeTrainingInstance?.boundPeriodFrom}" years="${startYr..endYr}" noSelection="['null':'--']" default="none" />
                                    </td>
                              </tr>

                              <tr class="prop">
                                    <td valign="top" class="name">
                                          <label for="boundPeriodTo"><g:message code="employeeTraining.boundPeriodTo.label" default="Bound Period To" /></label>
                                    </td>
                                    <td valign="top" class="value ${hasErrors(bean: employeeTrainingInstance, field: 'boundPeriodTo', 'errors')}">
                                          <g:set var="startYr" value="${new GregorianCalendar().get(Calendar.YEAR)-50}"/>
                                          <g:set var="endYr" value="${new GregorianCalendar().get(Calendar.YEAR) +50}"/>

                                          <g:datePicker name="boundPeriodTo" precision="day" value="${employeeTrainingInstance?.boundPeriodTo}" years="${startYr..endYr}" noSelection="['null':'--']" default="none" />
                                    </td>
                              </tr>

                              %{--  <tr class="prop">
                                  <td valign="top" class="name">
                                    <label for="employee"><g:message code="employeeTraining.employee.label" default="Employee" /></label>
                                  </td>
                                  <td valign="top" class="value ${hasErrors(bean: employeeTrainingInstance, field: 'employee', 'errors')}">
                                      <g:select name="employee.id" from="${hrm.Employee.list()}" optionKey="id" value="${employeeTrainingInstance?.employee?.id}"  />
                                  </td>
                              </tr>--}%
                              <g:hiddenField name="employee.id" value="${employeeInstance.id}"/>
                              </tbody>
                        </table>
                  </div>
                  <div class="employee_education" align="left">

                        <g:actionSubmit class="savebutton" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}"  />  %{--button-align--}%
                        %{--<g:actionSubmit class="deletebutton" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
                  </div>
            </g:form>
      </div>
</div>
</body>
</html>