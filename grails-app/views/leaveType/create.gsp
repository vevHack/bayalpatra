

<%@ page import="com.bayalpatra.hrm.LeaveType" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main_hrm" />
        <g:set var="entityName" value="${message(code: 'leaveType.label', default: 'Leave Type')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        %{--<div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>--}%
        <div class="body">
            <h4><g:message code="default.create.label" args="[entityName]" /></h4>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${leaveTypeInstance}">
            <div class="errors">
                <g:renderErrors bean="${leaveTypeInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="leaveType"><g:message code="leaveType.leaveType.label" default="Leave Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: leaveTypeInstance, field: 'leaveType', 'errors')}">
                                    <g:textField name="leaveType" value="${leaveTypeInstance?.leaveType}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="status"><g:message code="leaveType.status.label" default="Status" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: leaveTypeInstance, field: 'status', 'errors')}">
                                    <g:select name="status" from="${leaveTypeInstance.constraints.status.inList}" value="${leaveTypeInstance?.status}" valueMessagePrefix="leaveType.status"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paidUnpaid"><g:message code="leaveType.paidUnpaid.label" default="Paid/Unpaid" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: leaveTypeInstance, field: 'paidUnpaid', 'errors')}">
                                    <g:select name="paidUnpaid" from="${leaveTypeInstance.constraints.paidUnpaid.inList}" value="${leaveTypeInstance?.paidUnpaid}" valueMessagePrefix="leaveType.paidUnpaid"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="days"><g:message code="leaveType.days.label" default="Days" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: leaveTypeInstance, field: 'days', 'errors')}">
                                    <g:textField name="days" value="${fieldValue(bean: leaveTypeInstance, field: 'days')}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="createbuttons">
                    <g:submitButton name="create"  class="savebutton" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </div>
            </g:form>
        </div>
    </body>
</html>
