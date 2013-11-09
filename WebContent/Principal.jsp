<%-- 
    Document   : paginaPrincipal
    Created on : 21/10/2013, 06:59:16 PM
    Author     : Antonio Cachuan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Tienda de AnimalApp">
<meta name="author" content="Antonio Cachuan">
<!-- <meta property="og:image" content="img/logo2.jpg" /> -->
<!-- propiedad og:imge para aparezca el logo de la web cuando comparten en FB 
content debe apuntar a una direccion web tamano 200x200px
-->
<link href='img/favicon.ico' rel='shortcut icon' type='image/icon' />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/carousel.css" rel="stylesheet" type="text/css">
<title>Animales App</title>
</head>
<body>
	<div>
		<div>
			<jsp:include page="menu.jsp" />
		</div>
		<br> <br> <br> <br>
		<div id="divAjax" style="display: none;">
			<img src='img/ajax.gif' />
		</div>
		<div id="cajonRespuesta"></div>
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
					<img
						data-src="holder.js/900x500/auto/#777:#7a7a7a/text:Bienvenido ${sessionScope.trabajador.nombre}"
						alt="First slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>Bienvenido ${sessionScope.trabajador.nombre}</h1>
							<p>Ahora podrás realizar las ventas de manera sencilla,
								fácil. Además enviar todas tus sugerencias en segundos.</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img data-src="holder.js/900x500/auto/#666:#6a6a6a/text:Comunicado"
						alt="Second slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>Comunicado N°001-2013</h1>
							<p>Se comunica a los trabajadores que tienen que recuperar
								las horas del día 2 de Noviembre.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Ver
									Comunicado</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span
				class="glyphicon glyphicon-chevron-left"></span></a> <a
				class="right carousel-control" href="#myCarousel" data-slide="next"><span
				class="glyphicon glyphicon-chevron-right"></span></a>
		</div>
		<!-- /.carousel -->
		<!-- Marketing messaging and featurettes
    ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->

		<div id="contenedorMarketing" class="container marketing">
			<!-- Three columns of text below the carousel -->
			<div class="row">
				<div class="col-lg-4">
					<img class="img-circle"
						data-src="holder.js/140x140/lava/text:Vacas"
						alt="Generic placeholder image">
					<p>La vaca, en el caso de la hembra, o toro en el caso del
						macho (Bos primigenius taurus o Bos taurus), es un mamífero
						artiodáctilo de la familia de los bóvidos.</p>
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
						aunque, también se emplea la palabra para denominar al gallo o a
						la gallina joven, principalmente a aquellos que se destinan al
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
			<!-- 			<div> -->
			<%-- 				<jsp:include page="pie.jsp" /> --%>
			<!-- 			</div> -->
			<!-- /.container -->
		</div>
		<hr class="featurette-divider">
		<!-- FOOTER -->
		<!-- 		<div class="row"> -->
		<!-- 			<div> -->
		<%-- 				<jsp:include page="pie.jsp" /> --%>
		<!-- 			</div> -->
		<!-- 		</div> -->
		<!-- /.container -->
	</div>

	<div id="piePagina">
		<jsp:include page="pie.jsp" />
	</div>
	<!-- 	<script src="jquery/jquery-1.9.1.js"></script> -->
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/misfunciones.js"></script>
	<script src="js/holder.js"></script>
	<script src="js/modal.js"></script>
	<script type="text/javascript">
		$("#lblListarIncidencias").click(function() {
			var data = 123;
			$("#myCarousel").hide();
			$("#contenedorMarketing").hide();
			$("#piePagina").hide();
			$("btnListar").hide();
			$("#divAjax").show();
			$.post("listarIncidencias", data, function(rpta) {
				$("#divAjax").hide();
				$("#cajonRespuesta").html(rpta);
			});
		});
		
		$("#lblListarConsultas").click(function() {
			var data = 123;
			$("#myCarousel").hide();
			$("#contenedorMarketing").hide();
			$("#piePagina").hide();
			$("btnListar").hide();
			$("#divAjax").show();
			$.post("listarConsultas", data, function(rpta) {
				$("#divAjax").hide();
				$("#cajonRespuesta").html(rpta);
			});
		});
	</script>
</body>
</html>