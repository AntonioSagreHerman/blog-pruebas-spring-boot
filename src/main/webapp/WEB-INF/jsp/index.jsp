<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<!-- Bootstrap core CSS -->
<link href="webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h2>Página de inicio.</h2>

<div class="container">
	<div class="header clearfix">
		<nav>
			<ul class="nav pills float-right">
				<c:choose>
					<c:when test="${not empty sessionScope.userLoggedIn}">
						<jsp:include page="includes/menu_logged.jsp" flush="true">
							<jsp:param name="inicio" value="inicio" />
							<jsp:param name="usuario" value="${sessionScope.userLoggedIn.nombre}" />
						</jsp:include>
					</c:when>
					<c:otherwise>
						<jsp:include page="includes/menu.jsp">
							<jsp:param name="inicio" value="inicio"/>
						</jsp:include>
					</c:otherwise>
				</c:choose>
			</ul>
		
		
		</nav>
	
	</div>
</div>



<div class="container">

<hr class="m-y-md">
	<div class="jumbotron">
		<div class="container">
		  <h1 class="display-3">Blog de Core</h1>
		  <p class="lead">Curso de Spring Framework</p>
		  <hr class="m-y-md">
		  <p>Estamos creando nuestro Blog.</p>	  
		</div>
	</div>

</div>

<div class="container">
	<c:forEach items="${postList}" var="postItem">
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<h1><a href="/post/${postItem.id}">${postItem.titulo}</a></h1>
				<div>
					<div class="float-right" style="padding: 10px 0 0 5px;">${postItem.autor.nombre}</div>
					<img alt="User Pic" src="http://i.pravatar.cc/50?u=${postItem.autor.email}"
						class="rounded-circle img-fluid float-right">
					<p></p>
				</div>
				<div style="clear: both; margin-bottom: 10px;"></div>
					<c:if test="${not empty postItem.url}">
						<p><a href="${postItem.url}">${postItem.url}</a></p>
					</c:if>
					<div class="">
						<p>${postItem.contenido}</p>				
					</div>
				<div>
					<p>Escrito el: </p>
					<p>${postItem.fecha}</p>

				</div>
				<hr>		
			</div>
		</div>
		</c:forEach>

</div>







<script src="webjars/jquery/jquery.min.js"></script>
<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>