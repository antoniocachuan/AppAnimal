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
<link href='img/favicon.ico' rel='shortcut icon' type='image/icon' />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/carousel.css" rel="stylesheet" type="text/css">
<title>Animales App</title>
</head>
<body>
	<div>
		<jsp:include page="menu.jsp" />
	</div>
	<br>
	<br>
	<br>
	<button id="btnListar" class="btn btn-lg btn-success" type="submit">Listar</button>
	<br>
	<br>
	<div id="divAjax" style="display: none;">
		<img src='img/ajax.gif' />
	</div>
	<div id="cajonRespuesta">
		
	</div>
	<br>
	<br>
	<div>
		<jsp:include page="pie.jsp" />
	</div>
	<script src="jquery/jquery-1.9.1.js"></script>
	<!-- 	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script> -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/holder.js"></script>
	<script src="js/modal.js"></script>
	<script src="js/misfunciones.js"></script>
	<script type="text/javascript">
		$("#btnListar").click(function() {
			var data = 123;
			$("#divAjax").show();
			$.post("listarProductos", data, function(rpta) {
				$("#cajonRespuesta").html(rpta);
			});			
		});
	</script>
</body>
</html>