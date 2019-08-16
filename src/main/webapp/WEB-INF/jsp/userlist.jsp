<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Autores</title>
<link href="webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
		<div class="header clearfix">
			<nav>
				<ul class="nav nav-pills float-right">
					
					<c:choose>
						<c:when test="${not empty sessionScope.userLoggedIn}">
							<jsp:include page="includes/menu_logged.jsp" flush="true">
								<jsp:param name="autores" value="autores" />
								<jsp:param name="usuario"
									value="${sessionScope.userLoggedIn.nombre}" />
							</jsp:include>
						</c:when>
						<c:otherwise>
							<jsp:include page="includes/menu.jsp">
								<jsp:param name="autores" value="autores" />
							</jsp:include>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
</div>

<div class="container">
<h3 class="text-muted">Lista de Autores</h3>
<div class="row">.</div>
<div class="row">
			<table class="table">
				<thead>
				  <tr>
				    <th scope="col">Nombre</th>
				    <th scope="col">Ciudad</th>
				  </tr>
				</thead>
				<tbody>
					<c:forEach items="${autores}" var="autor">
						<tr>
							<td>${autor.nombre}</td>
							<td>${autor.ciudad}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>




</div>



<script src="webjars/jquery/jquery.min.js"></script>
<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>