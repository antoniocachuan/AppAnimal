/*Para el formulario de registrarIncidencias*/
$(document).ready(function() {
	$("#lblListarDirecto").click(function() {
		var data = 123;
		$("#myCarousel").hide();
		$("#contenedorMarketing").hide();
		$("#piePagina").hide();
		$("btnListar").hide();
		$("#divAjax").show();
		$.post("listarProductos", data, function(rpta) {
			$("#divAjax").hide();
			$("#cajonRespuesta").html(rpta);
		});
	});

	/* Para el formulario de consultarporAyuda */
	// $("#envioConsulta").click(function(){
	// var data=$("#formConsulta").serialize();
	// $.post("registrarConsulta", data, function(rpta) {
	// $("#cajonRespuesta").html(rpta);
	// });
	// });
	
	
//	$("#lblListarIncidencias").click(function() {
//		var data = 123;
//		$("#myCarousel").hide();
//		$("#contenedorMarketing").hide();
//		$("#piePagina").hide();
//		$("btnListar").hide();
//		$("#divAjax").show();
//		$.post("listarIncidencias", data, function(rpta) {
//			$("#divAjax").hide();
//			$("#cajonRespuesta").html(rpta);
//		});
//	});
//	
//	$("#lblListarConsultas").click(function() {
//		var data = 123;
//		$("#myCarousel").hide();
//		$("#contenedorMarketing").hide();
//		$("#piePagina").hide();
//		$("btnListar").hide();
//		$("#divAjax").show();
//		$.post("listarConsultas", data, function(rpta) {
//			$("#divAjax").hide();
//			$("#cajonRespuesta").html(rpta);
//		});
//	});
});