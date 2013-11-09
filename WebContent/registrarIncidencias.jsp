<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Tienda de AnimalApp">
<meta name="author" content="Antonio Cachuan">
<link href='img/favicon.ico' rel='shortcut icon' type='image/icon' />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/carousel.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div>
		<jsp:include page="menu.jsp" />
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<legend>Registro de incidencias diarias</legend>
			<form id="formIncidencia" class="well form-horizontal">
				<fieldset>
					<div class="form-group">
						<label class="col-md-4 control-label" for="textinput">Asunto</label>
						<div class="col-md-4">
							<input id="asunto" name="asunto" type="text"
								placeholder="Ej. Mercadería, Clientes"
								class="form-control input-md" required>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="selectbasic">Sede</label>
						<div class="col-md-4">
							<select placeholder="Escoja una opción" id="sede" name="sede" class="form-control">
								<option value="Lima">Lima</option>
								<option value="Huaral">Huaral</option>
								<option value="San Juan">San Juan</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="textarea">Descripción
							</label>
						<div class="col-md-4">
							<textarea class="form-control" id="descripcion" name="descripcion" placeholder="Detalle el asunto" required></textarea>
						</div>
					</div>

					<!-- Boton -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="singlebutton"></label>
						<div class="col-md-4">
							<button id="singlebutton" name="singlebutton"
								class="btn btn-primary">Enviar</button>
						</div>
					</div>

				</fieldset>
			</form>
		</div>
	</div>
	<div id="cajonRespuesta">
	
	</div>

	<br>
	<br>
	<br>
	<div>
		<jsp:include page="pie.jsp" />
	</div>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/holder.js"></script>
	<script src="js/modal.js"></script>
	<script src="js/misfunciones.js"></script>
	<script type="text/javascript">
		$("#singlebutton").click(function(){
			var data = $("#formIncidencia").serialize();
			$.post("registrarIncidencia", data, function(rpta) {
				$("#cajonRespuesta").html(rpta);
			});
			
		});
	</script>
</body>
</html>