<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<div class="navbar-wrapper">
	<div class="container">
		<div class="navbar navbar-inverse navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="Principal.jsp">Animales App</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="active"><a href="Principal.jsp">Inicio</a></li>
						<li><a href="#about">Acerca</a></li>
						<li><a href="consultaporAyuda.jsp">Consultas</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Acciones <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="registrarVentas.jsp">Registrar Ventas</a></li>
								<li><a href="registrarIncidencias.jsp">Registrar
										Incidencia</a></li>
								<li><a href="listarProductos.jsp">Listar Productos</a></li>
								<li><a id="lblListarDirecto">Listar Productos Directo</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Personales</li>
								<li><a href="miPerfil.jsp">Mi Perfil</a></li>
								<li><a href="#">Mis Ventas</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Reportes <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Reporte de Ventas</a></li>
								<li><a href="#">Reporte de Incidencias</a></li>
								<li><a href="#">Reporte por Producto</a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Administrador</li>
								<li><a href="#">Listar Trabajadores</a></li>
								<li><a href="#">Listar Ventas por Sede</a></li>
								<li><a id="lblListarIncidencias">Listar Incidencias</a></li>
								<li><a id="lblListarConsultas">Listar Consultas</a></li>
							</ul></li>
						<li><a href="FinSesionController">Cerrar Sesión</a></li>
						<li class="active"><a href="#">Usuario:
								${sessionScope.trabajador.nombre}
								${sessionScope.trabajador.apellido}</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>