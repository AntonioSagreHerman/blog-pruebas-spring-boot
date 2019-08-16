<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<!-- Bootstrap core CSS -->
<link href="webjars/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h2>Página de registro.</h2>

<div class="row">. </div>
<div class="container">
	<div class="header clearfix">
		<form:form id="register-form" action="/guardarRegistro" method="post"
			modelAttribute="userRegistro" role="form" autocomplete="off">
			<div class="form-group">
	
				<form:input type="text" name="nombre" id="nombre" tabindex="1"
					class="form-control" placeholder="Nombre" path="nombre" />
			</div>
			<div class="form-group">
				<form:input type="text" name="ciudad" id="ciudad" tabindex="2"
					class="form-control" placeholder="Ciudad, País" path="ciudad" />
			</div>
			
			<div class="form-group">
				<form:input type="email" name="email" id="email" tabindex="4"
					class="form-control" placeholder="Email" path="email" />
			</div>
			<div class="form-group">
				<form:input type="password" name="password" id="password"
					tabindex="5" class="form-control" placeholder="Password"
					path="password" />
			</div>
			<div class="form-group">
				<input type="password" name="confirm-password"
					id="confirm-password" tabindex="6" class="form-control"
					placeholder="Repetir Password" data-rule-equalTo="#password">
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-xs-6 col-xs-offset-3">
						<input type="submit" name="register-submit" id="register-submit"
							tabindex="9" class="form-control btn btn-info"
							value="Registrar ahora">
					</div>
				</div>
			</div>
			<input type="hidden" class="hide" name="token" id="token"
				value="7c6f19960d63f53fcd05c3e0cbc434c0">
		</form:form>
	</div>
</div>







<script src="webjars/jquery/jquery.min.js"></script>
<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>