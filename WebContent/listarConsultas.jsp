<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br>
<br>
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-8">
	<legend>Listado Consultas</legend>
	<div class="well widget">
		<div class="widget-head">
			<div class="pull-left">Total de Consultas</div>
			<div class="widget-icons pull-right">
				<a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> <a
					href="#" class="wclose"><i class="icon-remove"></i></a>
			</div>
			<div class="clearfix"></div>
		</div>

		<div class="widget-content">

			<table style="text-align: center" class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nombres</th>
						<th>Apellidos</th>
						<th>Correo</th>
						<th>Asunto</th>
						<th>Consulta</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${requestScope.lista}" var="r">
						<tr>
							<td>${r.id}</td>
							<td>${r.nombres}</td>
							<td>${r.apellidos}</td>
							<td>${r.correos}</td>
							<td>${r.asunto}</td>
							<td>${r.consulta}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<br>
<br>
</div>
<div class="row">
	<hr class="featurette-divider">
	<div id="piePagina">
		<jsp:include page="pie.jsp" />
	</div>
</div>
