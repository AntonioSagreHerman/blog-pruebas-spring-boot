<li class="nav-item" role="presentation"
	${not empty param.inicio ? 'class="active"' : '' }><a class="nav-link" href="/">Inicio</a></li>
<li class="nav-item" role="presentation"
	${not empty param.autores ? 'class="active"' : '' }><a class="nav-link" href="/autores">Autores</a></li>		
<li class="nav-item" role="presentation"
	${not empty param.login ? 'class="active"' : '' }><a class="nav-link" href="/signin">Login</a></li>
<li class="nav-item" role="presentation"
	${not empty param.login ? 'class="active"' : '' }><a class="nav-link active" href="/registrar">Registrar</a></li>