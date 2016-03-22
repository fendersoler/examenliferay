<%@ page import="java.util.List" %>
<%@ page import="com.liferay.portal.service.UserLocalServiceUtil" %>
<%@ page import="com.liferay.portal.model.User" %>
<%@ page import= "com.tabla.TablaPortlet2"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<portlet:defineObjects />

<%
	List<User> usuarios = (List<User>)renderRequest.getAttribute("usuarios");
%>

<table width="70%" border="4" cellspacing="2" align="center">
	<thead>
		<tr align="center" valign="middle">
			<td>Id</td>
			<td>Nombre</td>
			<td>Apellido</td>
			<td>Nick</td>
			<td>Email</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="<%=usuarios%>" var="usuarios">
			<tr>
				<td>${usuarios.userId}</td>
				<td>${usuarios.firstName}</td>
				<td>${usuarios.lastName}</td>
				<td>${usuarios.screenName}</td>
				<td>${usuarios.emailAddress}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
