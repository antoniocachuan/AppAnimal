<%-- 
    Document   : index
    Created on : 21/10/2013, 06:04:20 PM
    Author     : Antonio Cachuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Tienda de AnimalApp">
<meta name="author" content="Antonio Cachuan">
<link href='img/favicon.ico' rel='shortcut icon' type='image/icon' />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/carousel.css" rel="stylesheet" type="text/css">
<title>Animales App</title>
</head>
<body>
	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<!--         <li data-target="#myCarousel" data-slide-to="2"></li> -->
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img data-src="holder.js/900x500/auto/#777:#7a7a7a/text:Bienvenidos"
					alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Bienvenidos a la página oficial</h1>
						<p>Nuestra tienda ofrece los mejores animales de granja</p>
						con una calidad de exportación.
						<p>
							<a class="btn btn-lg btn-primary" data-toggle="modal"
								data-target="#myModal" role="button">Iniciar Sesión</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img
					data-src="holder.js/900x500/auto/#666:#6a6a6a/text:Promoción del mes"
					alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Promociones</h1>
						<p>Aprovecha la oferta de la semana en nuestros Pollos y
							Conejos.</p>
						<p>
							<a class="btn btn-lg btn-primary" data-toggle="modal"
								data-target="#myModal2" role="button">Ver Promoción</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span></a>
	</div>
	<!-- /.carousel -->
	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<legend style="text-align: center">Nuestros productos</legend>
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" data-src="holder.js/140x140/lava/text:Vacas"
					alt="Generic placeholder image">
				<p>La vaca, en el caso de la hembra, o toro en el caso del macho
					(Bos primigenius taurus o Bos taurus), es un mamífero artiodáctilo
					de la familia de los bóvidos.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">Ver detalles
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle"
					data-src="holder.js/140x140/social/text:Conejos"
					alt="Generic placeholder image">
				<p>El conejo común o conejo europeo (Oryctolagus cuniculus) es
					una especie de mamífero lagomorfo de la familia Leporidae, y el
					único miembro actual del género Oryctolagus.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">Ver detalles
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle"
					data-src="holder.js/140x140/vine/text:Pollos"
					alt="Generic placeholder image">
				<p>Cría de las aves y especialmente a las de las gallinas,
					aunque, también se emplea la palabra para denominar al gallo o a la
					gallina joven, principalmente a aquellos que se destinan al
					consumo.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">Ver Detalles
						&raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->

		<hr class="featurette-divider">
		<!-- FOOTER -->
		<div>
			<jsp:include page="pie.jsp" />
		</div>
		<!-- /.container -->
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="account-wall">
					<img class="profile-img"
						src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
						alt="">
					<form method="post" class="form-signin"
						action="InicioSesionController">
						<input type="text" name="usuario" class="form-control"
							placeholder="Usuario" required autofocus> <input
							type="password" name="clave" class="form-control"
							placeholder="Contraseña" required>
						<button class="btn btn-lg btn-primary btn-block" value="Ingresar"
							type="submit">Iniciar Sesión</button>
						<label class="checkbox pull-left"> <input type="checkbox"
							value="remember-me"> Recuérdame
						</label> <a id="nuevoTrabajador" data-toggle="modal"
							data-target="#myModal3" data-dismiss="modal"
							class="pull-right need-help">Nuevo Usuario </a><span
							class="clearfix"></span>
						<%
							if (request.getAttribute("error") != null) {
						%>
						<p class="error"><%=request.getAttribute("error").toString()%></p>
						<%
							}
						%>
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h3 class="modal-title" id="myModalLabel">Promoción del Mes</h3>
				</div>
				<div class="modal-body">
					<p>Todos nuestros productos con un 10% de descuento y el
						segundo sale con 25%.</p>
					<div style="text-align: center">
						<img src="img/animales/vaca.png">
					</div>
				</div>
				<div class="modal-footer">
					<i>Válido hasta el 30 de noviembre 2013
						<button type="button" class="btn btn-success" data-dismiss="modal">Cerrar</button>
					</i>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div id="alertas" class="row">
			<div class="col-md-8"></div>
			<div class="col-md-4">
				<div class="alert alert-danger alert-dismissable">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">&times;</button>
					<strong>Aviso</strong><span id="rNotificacion"></span>
				</div>
			</div>
		</div>
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="col-xs-12 col-sm-12 col-md-12 well well-sm">
					<legend>
						<a href="http://www.jquery2dotnet.com"><i
							class="glyphicon glyphicon-globe"></i></a>Nuevo Trabajador
					</legend>
					<!-- 					<form id="formRegistro" method="post" class="form" role="form"> -->
					<form id="formRegistro" method="post">
						<div class="row">
							<div class="col-xs-6 col-md-6">
								<input class="form-control" name="nombres" placeholder="Nombres"
									type="text" required autofocus />
							</div>
							<div class="col-xs-6 col-md-6">
								<input class="form-control" name="apellidos"
									placeholder="Apellidos" type="text" required />
							</div>
						</div>
						<br> <input class="form-control" name="correo"
							placeholder="Correo electrónico" type="email" /> <br> <input
							class="form-control" name="direccion" placeholder="Dirección"
							type="text" /> <br> <input class="form-control"
							name="telefono" placeholder="Teléfono" type="text" /> <br>
						<input class="form-control" name="cargo" placeholder="Cargo"
							type="text" /> <br> <input class="form-control"
							name="idusuario" placeholder="Id de Usuario" type="text" /><br>
						<input class="form-control" name="contraseña"
							placeholder="Contraseña" type="password" /> <br>
						<button id="btnregistro" class="btn btn-lg btn-success btn-block"
							type="submit" onClick="fnNuevoTrabajador()">Registrar</button>
					</form>
					<div id="divAjax" style="display: none;">
						<img src='img/ajax.gif' />
					</div>
					<div id="resultadoTrabajador"></div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- 	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script> -->
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/holder.js"></script>
	<script src="js/modal.js"></script>
	<script src="js/misfunciones.js"></script>
	<script type="text/javascript">
		// 		function fnNuevoTrabajador() {
		$("#nuevoTrabajador").click(function() {
			$("#alertas").hide();
		});

		//close
		$(".close").click(function() {
			$("#alertas").hide();
		});

		$("#btnregistro").click(function() {
			var data = $("#formRegistro").serialize();
			$("#divAjax").show();
			$.post("nuevoTrabajador", data, function(rpta) {
				var obj = eval("(" + rpta + ")");
				var cadena;
				if (obj.estado == 1) {
					cadena = "<p>" + obj.mensaje + "</p>";
				} else {
					cadena = "<p>" + obj.mensaje + "</p>";
				}
				$("#rNotificacion").html(cadena);
				$("#divAjax").hide();
				$("#alertas").show();
			});
		});
		// 		 		}
	</script>
</body>
</html>

<!-- CODIGO NO USADO -->
<!-- 						<label for="">Fecha de Nacimiento</label> -->
<!-- 						<div class="row"> -->
<!-- 							<div class="col-xs-4 col-md-4"> -->
<!-- 								<select class="form-control"> -->
<!-- 									<option value="Month">Mes</option> -->
<!-- 								</select> -->
<!-- 							</div> -->
<!-- 							<div class="col-xs-4 col-md-4"> -->
<!-- 								<select class="form-control"> -->
<!-- 									<option value="Day">Día</option> -->
<!-- 								</select> -->
<!-- 							</div> -->
<!-- 							<div class="col-xs-4 col-md-4"> -->
<!-- 								<select class="form-control"> -->
<!-- 									<option value="Year">Año</option> -->
<!-- 								</select> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<br> -->
<!-- 						<label class="radio-inline"> <input type="radio" -->
<!-- 							name="sex" id="inlineCheckbox1" value="male" /> Hombre -->
<!-- 						</label> <label class="radio-inline"> <input type="radio" -->
<!-- 							name="sex" id="inlineCheckbox2" value="female" /> Mujer -->
<!-- 						</label> <br> <br> -->
