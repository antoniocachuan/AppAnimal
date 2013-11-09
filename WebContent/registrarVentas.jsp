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
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-10 col-md-offset-1">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Producto</th>
							<th>Cantidad</th>
							<th class="text-center">Precio</th>
							<th class="text-center">Total</th>
							<th> </th>
						</tr>
					</thead>
					<tbody>
						<tr id=cajonConejo>
							<td class="col-sm-8 col-md-6">
								<div class="media">
									<a class="thumbnail pull-left" href="#"> <img
										class="media-object"
										src="img/animales/conejo.jpg"
										style="width: 72px; height: 72px;">
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="#">Conejo</a>
										</h4>
										<h5 class="media-heading">
											Local <a href="#">Lima</a>
										</h5>
										<span>Estado: </span><span class="text-success"><strong>Disponble</strong></span>
									</div>
								</div>
							</td>
							<td class="col-sm-1 col-md-1" style="text-align: center"><input
								type="email" class="form-control" id="exampleInputEmail1"
								value="3"></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>$4.87</strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>$14.61</strong></td>
							<td class="col-sm-1 col-md-1">
								<button type="button" class="btn btn-danger" id="removerConejo">
									<span class="glyphicon glyphicon-remove"></span> Remover
								</button>
							</td>
						</tr>
						<tr id="cajonCerdo">
							<td class="col-sm-8 col-md-6">
								<div class="media">
									<a class="thumbnail pull-left" href="#"> <img
										class="media-object"
										src="img/animales/cerdo.jpg"
										style="width: 72px; height: 72px;">
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="#">Cerdo</a>
										</h4>
										<h5 class="media-heading">
											Local <a href="#">Lima</a>
										</h5>
										<span>Estado: </span><span class="text-success"><strong>Disponble</strong></span>
									</div>
								</div>
							</td>
							<td class="col-sm-1 col-md-1" style="text-align: center"><input
								type="email" class="form-control" id="exampleInputEmail1"
								value="3"></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>$4.87</strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>$14.61</strong></td>
							<td class="col-sm-1 col-md-1">
								<button id="btnCerdo" type="button" class="btn btn-danger">
									<span class="glyphicon glyphicon-remove"></span> Remover
								</button>
							</td>
						</tr>
						<tr id="cajonGallina">
							<td class="col-sm-8 col-md-6">
								<div class="media">
									<a class="thumbnail pull-left" href="#"> <img
										class="media-object"
										src="img/animales/gallina.jpg"
										style="width: 72px; height: 72px;">
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="#">Gallina</a>
										</h4>
										<h5 class="media-heading">
											Local <a href="#">Lima</a>
										</h5>
										<span>Estado: </span><span class="text-success"><strong>Disponble</strong></span>
									</div>
								</div>
							</td>
							<td class="col-sm-1 col-md-1" style="text-align: center"><input
								type="email" class="form-control" id="exampleInputEmail1"
								value="3"></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>$4.87</strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>$14.61</strong></td>
							<td class="col-sm-1 col-md-1">
								<button id="btnGallina" type="button" class="btn btn-danger">
									<span class="glyphicon glyphicon-remove"></span> Remover
								</button>
							</td>
						</tr>
						<tr id="cajonCabra">
							<td class="col-sm-8 col-md-6">
								<div class="media">
									<a class="thumbnail pull-left" href="#"> <img
										class="media-object"
										src="img/animales/cabra.jpg"
										style="width: 72px; height: 72px;">
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="#">Cabra</a>
										</h4>
										<h5 class="media-heading">
											Local <a href="#">Lima</a>
										</h5>
										<span>Estado: </span><span class="text-success"><strong>Disponble</strong></span>
									</div>
								</div>
							</td>
							<td class="col-sm-1 col-md-1" style="text-align: center"><input
								type="email" class="form-control" id="exampleInputEmail1"
								value="3"></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>$4.87</strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>$14.61</strong></td>
							<td class="col-sm-1 col-md-1">
								<button id="btnCabra" type="button" class="btn btn-danger">
									<span class="glyphicon glyphicon-remove"></span> Remover
								</button>
							</td>
						</tr>
						<tr id="cajonPollo">
							<td class="col-sm-8 col-md-6">
								<div class="media">
									<a class="thumbnail pull-left" href="#"> <img
										class="media-object"
										src="img/animales/pollo.jpg"
										style="width: 72px; height: 72px;">
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="#">Pollo</a>
										</h4>
										<h5 class="media-heading">
											Local <a href="#">Lima</a>
										</h5>
										<span>Estado: </span><span class="text-success"><strong>Disponble</strong></span>
									</div>
								</div>
							</td>
							<td class="col-sm-1 col-md-1" style="text-align: center"><input
								type="email" class="form-control" id="exampleInputEmail1"
								value="3"></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>$4.87</strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>$14.61</strong></td>
							<td class="col-sm-1 col-md-1">
								<button id="btnPollo" type="button" class="btn btn-danger">
									<span class="glyphicon glyphicon-remove"></span> Remover
								</button>
							</td>
						</tr>
						<tr id="cajonVaca">
							<td class="col-md-6">
								<div class="media">
									<a class="thumbnail pull-left" href="#"> <img
										class="media-object"
										src="img/animales/vaca.png"
										style="width: 72px; height: 72px;">
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="#">Vaca</a>
										</h4>
										<h5 class="media-heading">
											Local <a href="#">Huaral</a>
										</h5>
										<span>Estado: </span><span class="text-warning"><strong>Demora 2
										semanas.
										</strong></span>
									</div>
								</div>
							</td>
							<td class="col-md-1" style="text-align: center"><input
								type="email" class="form-control" id="exampleInputEmail1"
								value="2"></td>
							<td class="col-md-1 text-center"><strong>$4.99</strong></td>
							<td class="col-md-1 text-center"><strong>$9.98</strong></td>
							<td class="col-md-1">
								<button id="btnVaca" type="button" class="btn btn-danger">
									<span class="glyphicon glyphicon-remove"></span> Remover
								</button>
							</td>
						</tr>
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td><h5>Sub total</h5></td>
							<td class="text-right"><h5>
									<strong>$24.59</strong>
								</h5></td>
						</tr>
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td><h5>Costo de envío</h5></td>
							<td class="text-right"><h5>
									<strong>$6.94</strong>
								</h5></td>
						</tr>
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td><h3>Total</h3></td>
							<td class="text-right"><h3>
									<strong>$31.53</strong>
								</h3></td>
						</tr>
						<tr>
							<td> </td>
							<td> </td>
							<td> </td>
							<td>
								<button type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-shopping-cart"></span>
									Continuar Comprando
								</button>
							</td>
							<td>
								<button type="button" class="btn btn-success">
									Finalizar <span class="glyphicon glyphicon-play"></span>
								</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
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
		$("#removerConejo").click(function(){
			$("#cajonConejo").hide();
		});
		$("#btnVaca").click(function(){
			$("#cajonVaca").hide();
		});
		$("#btnCabra").click(function(){
			$("#cajonCabra").hide();
		});
		$("#btnCerdo").click(function(){
			$("#cajonCerdo").hide();
		});
		$("#btnGallina").click(function(){
			$("#cajonGallina").hide();
		});
		$("#btnPollo").click(function(){
			$("#cajonPollo").hide();
		});
		$("#btnCaballo").click(function(){
			$("#cajonCaballo").hide();
		});
	</script>
	
</body>
</html>