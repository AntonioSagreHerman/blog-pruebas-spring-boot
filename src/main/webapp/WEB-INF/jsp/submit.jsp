<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Post</title>
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
								<jsp:param name="submit" value="submit" />
								<jsp:param name="usuario" value="${sessionScope.userLoggedIn.nombre}" />
							</jsp:include>

						</c:when>
						
						<c:otherwise>
							<jsp:include page="includes/menu.jsp">
								<jsp:param name="submit" value="submit" />
							</jsp:include>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
			<h3 class="text-muted">Blog de Core</h3>
		</div>

		<div class="row">
			<form:form method="POST" modelAttribute="post"  action="/submit/newPost" role="form" id="contact-form" class="contact-form">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<form:input type="text" class="form-control" name="title"
								autocomplete="off" id="title" placeholder="Título" path="titulo" />
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<form:input type="url" class="form-control" name="url"
								autocomplete="off" id="url" placeholder="URL (opcional)" path="url" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<form:textarea class="form-control textarea" rows="3" name="text"
								id="texto" placeholder="Contenido" path="contenido"></form:textarea>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<button type="submit" class="btn btn-success float-right">Enviar el post</button>
					</div>
				</div>
			</form:form>
		</div>

		<footer class="footer"> </footer>

	</div>
	<!-- /container -->
	
	<script src="webjars/jquery/jquery.min.js"></script>
	<script src="webjars/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>