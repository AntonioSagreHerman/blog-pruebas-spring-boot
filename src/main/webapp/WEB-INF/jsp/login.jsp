<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<!-- Bootstrap core CSS -->
<link href="webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<nav></nav>
	<h3 class="text-muted">Entra en el Blog</h3>
	<div class ="row">
		<div class="col-lg-6 col-lg-offset-3">
			<form:form class="form-signin" method="POST" action="/login"
				modelAttribute="userLogin">
				<h2 class="form-signin-heading">Formulario de acceso</h2>
				
				<form:input type="email" id="inputEmail" class="form-control"
					placeholder="Email" path="email" required="required"
					autofocus="autofocus" />
				
				<form:input type="password" id="inputPassword" class="form-control"
					placeholder="Password" path="password" required="required" />
				<div class="row">.</div>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			</form:form>
		</div>
	</div>
	<c:if test="${not empty error}">
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3">

						<div class="alert alert-danger alert-dismissible fade show"
							role="alert">
							<button type="button" class="close" data-dismiss="alert"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<c:out value="${error}" />
						</div>
					</div>
				</div>
			</c:if>
</div>





<script src="webjars/jquery/jquery.min.js"></script>
<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>