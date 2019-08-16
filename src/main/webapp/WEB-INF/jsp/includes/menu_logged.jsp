<li class="nav-item" role="presentation"
	${not empty param.inicio ? 'class="active"' : '' }><a class="nav-link" href="/">Inicio</a></li>
<li class="nav-item" role="presentation"
	${not empty param.submit ? 'class="active"' : '' }><a class="nav-link" 
	href="/submit">Escribir un post</a></li>
<li class="nav-item" role="presentation"
	${not empty param.autores ? 'class="active"' : '' }><a class="nav-link" 
	href="/autores">Autores</a></li>		
<li class="nav-item" role="presentation"><a class="nav-link" 
	href="#">${param.usuario}</a></li>
<li class="nav-item" role="presentation">
	<a class="nav-link" href="/logout">Salir</a>
</li>