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
<title>Mi Perfil - AnimalApp</title>
</head>
<body>
	<div>
		<jsp:include page="menu.jsp" />
	</div>
	<div class="container">
	<legend>Mi Perfil</legend>
	<div class="well span8">
		<ul class="nav nav-tabs">
			<li class="active"><a href="#personales" data-toggle="tab">Datos
					Personales</a></li>
			<li><a href="#otros" data-toggle="tab">Otros Datos</a></li>
			<li><a href="#clave" data-toggle="tab">Contraseña</a></li>
		</ul>

		<div id="myTabContent" class="tab-content">
			
			<div class="tab-pane active in" id="personales">
				<form id="tab">
					<br><label>Usuario</label><br> <input type="text" name="id"
					value="${sessionScope.trabajador.id}" class="input-xlarge"/><br>
					<br> <label>Nombre</label><br> 
					<input type="text" name="nombre" value="${sessionScope.trabajador.nombre}" class="input-xlarge"/><br>
					<br> <label>Apellidos</label><br>
					<input type="text" name="apellido" value="${sessionScope.trabajador.apellido}" class="input-xlarge"/><br>
					<br> <label>Dirección</label><br>
					<textarea name="direccion" rows="3" class="input-xlarge">${sessionScope.trabajador.direccion}</textarea>
					<br> <br>
					<div>
						<button id="btnActualizarTrabajador" class="btn btn-primary" value="Grabar" onClick="fnActTrabajador()">Actualizar</button>
					</div>
					<input type="hidden" name="email" value="${sessionScope.trabajador.email}" class="input-xlarge"/><br>
					<input type="hidden" name="cargo" value="${sessionScope.trabajador.cargo}" class="input-xlarge"/><br>
					<input type="hidden" name="clave" value="${sessionScope.trabajador.clave}" class="input-xlarge"/><br>
					<input type="hidden" name="telefono" value="${sessionScope.trabajador.telefono}" class="input-xlarge"/><br>	
				</form>
				<div id="divAjax" style="display: none;">
					<img src='img/ajax.gif' />
				</div>
				<div id="resultado1" title="Resultado del Proceso"></div>
			</div>
			<div class="tab-pane fade" id="otros">
				<form id="tab2">
					<br> <label>Correo</label><br> <input type="email" name="email"
						value="${sessionScope.trabajador.email}" class="input-xlarge"/><br>
					<br> <label>Telefono</label><br> <input type="text" name="telefono"
						value="${sessionScope.trabajador.telefono}" class="input-xlarge"/><br>
					<br>
					<div>
						<button id="btnActualizarTrabajador2" class="btn btn-primary" value="Grabar2" onClick="fnActTrabajador2()">Actualizar</button>
					</div>
					<input type="hidden" name="clave" value="${sessionScope.trabajador.clave}" class="input-xlarge"/><br>
					<input type="hidden" name="cargo" value="${sessionScope.trabajador.cargo}" class="input-xlarge"/><br>
					<input type="hidden" name="direccion" value="${sessionScope.trabajador.direccion}" class="input-xlarge"/><br>
					<input type="hidden" name="apellido" value="${sessionScope.trabajador.apellido}" class="input-xlarge"/><br>
					<input type="hidden" name="nombre" value="${sessionScope.trabajador.nombre}" class="input-xlarge"/><br>
					<input type="hidden" name="id" value="${sessionScope.trabajador.id}" class="input-xlarge"/><br>	
				</form>
				<div id="divAjax" style="display: none;">
					<img src='img/ajax.gif' />
				</div>
				<div id="resultado2" title="Resultado del Proceso"></div>
			</div>
			<div class="tab-pane fade" id="clave">
				<form id="tab3">
					<br> <label>Nueva Contraseña</label><br> <input
						type="password" name="clave" class="input-xlarge"/><br> <br>
					<div>
						<button id="btnActualizarTrabajador3" class="btn btn-primary" value="Grabar3" onClick="fnActTrabajador3()">Actualizar</button>
					</div>
					<input type="hidden" name="id" value="${sessionScope.trabajador.clave}" class="input-xlarge"/><br>
					<input type="hidden" name="nombre" value="${sessionScope.trabajador.cargo}" class="input-xlarge"/><br>
					<input type="hidden" name="email" value="${sessionScope.trabajador.direccion}" class="input-xlarge"/><br>
					<input type="hidden" name="telefono" value="${sessionScope.trabajador.apellido}" class="input-xlarge"/><br>
					<input type="hidden" name="apellido" value="${sessionScope.trabajador.nombre}" class="input-xlarge"/><br>
					<input type="hidden" name="direccion" value="${sessionScope.trabajador.id}" class="input-xlarge"/><br>	
					<input type="hidden" name="cargo" value="${sessionScope.trabajador.id}" class="input-xlarge"/><br>	
				</form>
				<div id="divAjax" style="display: none;">
					<img src='img/ajax.gif' />
				</div>
				<div id="resultado3" title="Resultado del Proceso"></div>
			</div>
		</div>
	</div>
	</div>
	<div>
		<jsp:include page="pie.jsp" />
	</div>
<!-- 	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script> -->
	<script src="js/bootstrap.min.js"></script>
	<script src="jquery/jquery-1.9.1.js"></script>
	<script src="jquery/ui/jquery-ui.js" type="text/javascript"></script>
	<script type="text/javascript">
// 		function fnActTrabajador() {
		$("#btnActualizarTrabajador").click(function(){
			var data = $("#tab").serialize();
			$("#divAjax").show();
			$.post("actualizarTrabajador", data, function(rpta) {
				$("#divAjax").hide();
				var obj = eval("(" + rpta + ")");
				var cadena;
				if (obj.estado == 1) {
					cadena = "<h3>MENSAJE</h3><p>" + obj.mensaje + "</p>";
				} else {
					cadena = "<h3 style='color:red;'>ERROR</h3><p>"
							+ obj.mensaje + "</p>";
				}
				$("#resultado1").html(cadena);
				$("#resultado1").dialog({
					modal : true,
					buttons : {
						Ok : function() {
							$(this).dialog("close");
						}
					}
				});

			});
			});
// 		}
		function fnActTrabajador2() {
			var data = $("#tab2").serialize();
			$("#divAjax").show();
			$.post("actualizarTrabajador", data, function(rpta) {
				$("#divAjax").hide();
				var obj = eval("(" + rpta + ")");
				var cadena;
				if (obj.estado == 1) {
					cadena = "<h3>MENSAJE</h3><p>" + obj.mensaje + "</p>";
				} else {
					cadena = "<h3 style='color:red;'>ERROR</h3><p>"
							+ obj.mensaje + "</p>";
				}
				$("#resultado2").html(cadena);
				$("#resultado2").dialog({
					modal : true,
					buttons : {
						Ok : function() {
							$(this).dialog("close");
						}
					}
				});

			});
		}
		function fnActTrabajador3() {
			var data = $("#tab3").serialize();
			$("#divAjax").show();
			$.post("actualizarTrabajador", data, function(rpta) {
				$("#divAjax").hide();
				var obj = eval("(" + rpta + ")");
				var cadena;
				if (obj.estado == 1) {
					cadena = "<h3>MENSAJE</h3><p>" + obj.mensaje + "</p>";
				} else {
					cadena = "<h3 style='color:red;'>ERROR</h3><p>"
							+ obj.mensaje + "</p>";
				}
				$("#resultado3").html(cadena);
				$("#resultado3").dialog({
					modal : true,
					buttons : {
						Ok : function() {
							$(this).dialog("close");
						}
					}
				});

			});
		}
	</script>
	<script src="js/misfunciones.js"></script>
</body>
</html>