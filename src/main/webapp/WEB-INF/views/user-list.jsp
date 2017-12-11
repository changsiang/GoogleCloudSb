<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<h3>User List Page</h3>
<a href="${pageContext.request.contextPath}/admin/user/create">Add
	a New User</a>
<c:if test="${fn:length(userList) gt 0}">
<table style="cellspacing: 2; cellpadding: 2; border: 1;">
	<thead>
	<tr class="listHeading">
		<th>User ID</th>
		<th>User Name</th>
		<th>Password</th>
		<th>User Role</th>
		<th><spring:message code="caption.edit" /></th>
		<th><spring:message code="caption.delete" /></th>
	</tr>
	</thead>
	<tbody>

	<c:forEach var="users" items="${userList}">
		<tr class="listRecord">
			<td align="left">${users.id}</td>
			<td align="left">${users.username}</td>
			<td align="left">${users.password}</td>
			<td align="left">${users.userRole}</td>
			
			<td align="center"><a href="${pageContext.request.contextPath}/admin/user/edit/${users.id}.html">Edit</a></td>
			<td><a href="${pageContext.request.contextPath}/admin/user/delete/${users.id}.html">Delete</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</c:if>