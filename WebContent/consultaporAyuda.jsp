<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Tienda de AnimalApp">
<meta name="author" content="Antonio Cachuan">
<link href='img/favicon.ico' rel='shortcut icon' type='image/icon' />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>Consultas - AnimalApp</title>
</head>
<body>
	<div>
		<jsp:include page="menu.jsp" />
	</div>
	<div id="divAjax" style="display: none;">
		<img src='img/ajax.gif' />
	</div>
	<div id="cajonRespuesta"></div>
	<div id="consultadiv" class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<legend>Consultas</legend>
			<form id="formConsulta" class="well form-horizontal">
				<fieldset>
					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">Nombres</label>
						<div class="col-md-4">
							<input id="nombres" name="nombres" type="text"
								placeholder="Nombre del Cliente" class="form-control input-md"
								required>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="selectbasic">Apellidos</label>
						<div class="col-md-4">
							<input id="apellidos" name="apellidos" type="text"
								placeholder="Apellidos del Cliente"
								class="form-control input-md" required>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="selectbasic">Correo
							electrónico</label>
						<div class="col-md-4">
							<input id="correo" name="correo" type="email"
								placeholder="ejemplo@mail.com" class="form-control input-md"
								required>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="selectbasic">Asunto</label>
						<div class="col-md-4">
							<select placeholder="Escoja una opción" id="asunto" name="asunto"
								class="form-control">
								<option value="Sugerencia">Sugerencia</option>
								<option value="Reclamo">Reclamo</option>
								<option value="Otros">Otros</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textarea">Consulta
						</label>
						<div class="col-md-8">
							<textarea class="form-control" id="consulta" name="consulta"
								placeholder="Detalle del asunto" required></textarea>
						</div>
					</div>

					<!-- Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="singlebutton"></label>
						<div class="col-md-4">
							<button id="envioConsulta" name="envioConsulta"
								class="btn btn-primary">Enviar</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
	<!-- Fin Formulario -->

	<!-- 	<div class="container"> -->
	<!-- 		<legend>Consultar</legend> -->
	<!-- 		<form class="well span8"> -->
	<!-- 			<div class="row"> -->
	<!-- 				<div class="span3"> -->
	<!-- 					<label>Nombres</label><br> <input class="span3" -->
	<!-- 						placeholder="Nombre del Cliente" type="text"> <br> <br> -->
	<!-- 					<label>Apellidos</label><br> <input class="span3" -->
	<!-- 						placeholder="El apellido" type="text"><br> <br> -->
	<!-- 					<label>Correo Electrónico</label><br> <input class="span3" -->
	<!-- 						placeholder="ejemplo@mail.com" type="text"><br> <br> -->
	<!-- 					<label>Asunto</label> <br> <select class="span3" id="subject" -->
	<!-- 						name="subject"> -->
	<!-- 						<option selected value="na">Escoja una opción:</option> -->

	<!-- 						<option value="service">Sugerencia</option> -->

	<!-- 						<option value="suggestions">Reclamo</option> -->

	<!-- 						<option value="product">Otros</option> -->
	<!-- 					</select> -->
	<!-- 				</div> -->
	<!-- 				<div class="span5"> -->
	<!-- 					<br> <label>Consulta</label> <br> -->
	<!-- 					<textarea class="input-xlarge span5" id="message" name="message" -->
	<!-- 						rows="10"></textarea> -->
	<!-- 				</div> -->
	<!-- 				<button class="btn btn-primary pull-right" type="submit">Enviar</button> -->
	<!-- 			</div> -->
	<!-- 		</form> -->
	<!-- 	</div> -->
	<div>
		<jsp:include page="pie.jsp" />
	</div>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$("#envioConsulta").click(function() {
			var data = $("#formConsulta").serialize();
			$("#divAjax").show();
			//$("#consultadiv").hide();
			$.post("registrarConsulta", data, function(rpta) {
				$("#divAjax").hide();
				$("#cajonRespuesta").html(rpta);
			});
		});
	</script>
</body>
</html>