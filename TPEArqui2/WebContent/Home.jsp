<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="homecontroller">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trabajo Final Arquitectura 2</title>

<!--Icon-->
<link rel="icon" href="./img/icono.ico">

<!--Angular-->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<!--Bootstrap-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--Graficar grafo-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/vis/4.20.1/vis.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/vis/4.20.1/vis.min.js"></script>

<!--Panel editor-->
<link rel="stylesheet"
	href="https://github.com/ajaxorg/ace/blob/master/lib/ace/theme/textmate.css">
<script src="http://ajaxorg.github.io/ace/build/src-noconflict/ace.js"></script>

<!--Home controller-->
<script src="./js/app.js"></script>

<!-- Gramatica -->
<script src="./js/Gramatica.js"></script>

</head>
<style>
.table tbody tr:first-child td {
	color: #5cb85c;
	font-weight: bold;
}

</style>
<body ng-controller="controlador as ctrl">
	<div class="container">
		<div>
			<!--Titulo -->
			<p>
			<div class="jumbotron"
				style="background: url('./img/logo.png') no-repeat center center; -webkit-background-size: 100% 100%; -moz-background-size: 100% 100%; -o-background-size: 100% 100%; background-size: 100% 100%; height: 250px;">
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="row">
					<div class="col" style="min-width: 200px;">
						<h3 style="margin-left: 100px">Ciclos por Instrucci�n</h3>
						<br>
					</div>
				</div>
				<div class="row">
					<div class="col" style="margin-left: 100px">
						<div class="input-group" style="max-width: 165px">
							<span class="form-control"
								style="background-color: #5cb85c; color: #fff; border-color: #4cae4c">ADDD</span>
							<div class="input-group-btn">
								<button type="button" class="btn btn-success dropdown-toggle"
									data-toggle="dropdown">
									{{ctrl.instructions[0].cycles}} <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li ng-repeat="cycle in ctrl.cycles"><a
										ng-click="ctrl.setCycleToInstruction('ADDD', cycle)">{{cycle}}</a></li>
								</ul>
								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col" style="margin-left: 100px">
						<div class="input-group" style="max-width: 165px">
							<span class="form-control"
								style="background-color: #5cb85c; color: #fff; border-color: #4cae4c">SUBD</span>
							<div class="input-group-btn">
								<button type="button" class="btn btn-success dropdown-toggle"
									data-toggle="dropdown">
									{{ctrl.instructions[1].cycles}} <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li ng-repeat="cycle in ctrl.cycles"><a
										ng-click="ctrl.setCycleToInstruction('SUBD', cycle)">{{cycle}}</a></li>
								</ul>
								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col" style="margin-left: 100px">
						<div class="input-group" style="max-width: 165px">
							<span class="form-control"
								style="background-color: #5cb85c; color: #fff; border-color: #4cae4c">MULD</span>
							<div class="input-group-btn">
								<button type="button" class="btn btn-success dropdown-toggle"
									data-toggle="dropdown">
									{{ctrl.instructions[2].cycles}} <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li ng-repeat="cycle in ctrl.cycles"><a
										ng-click="ctrl.setCycleToInstruction('MULD', cycle)">{{cycle}}</a></li>
								</ul>
								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col" style="margin-left: 100px">
						<div class="input-group" style="max-width: 165px">
							<span class="form-control"
								style="background-color: #5cb85c; color: #fff; border-color: #4cae4c">DIVD</span>
							<div class="input-group-btn">
								<button type="button" class="btn btn-success dropdown-toggle"
									data-toggle="dropdown">
									{{ctrl.instructions[3].cycles}} <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li ng-repeat="cycle in ctrl.cycles"><a
										ng-click="ctrl.setCycleToInstruction('DIVD', cycle)">{{cycle}}</a></li>
								</ul>
								<p></p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col" style="margin-left: 100px">
						<div class="input-group" style="max-width: 165px">
							<span class="form-control"
								style="background-color: #5cb85c; color: #fff; border-color: #4cae4c">STD</span>
							<div class="input-group-btn">
								<button type="button" class="btn btn-success dropdown-toggle"
									data-toggle="dropdown">
									{{ctrl.instructions[4].cycles}} <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li ng-repeat="cycle in ctrl.cycles"><a
										ng-click="ctrl.setCycleToInstruction('STD', cycle)">{{cycle}}</a></li>
								</ul>
								<p></p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-8">
						<h3>
							 <span class="glyphicon glyphicon-edit"></span> Editor
						</h3>
					</div>
					<div class="col-md-8">
						<div class="row">
							<pre id="editor" style="width: 500px; height: 300px;"></pre>
						</div>

						<div>
							<button class="btn btn-success "
								style="float: right; width: 90px; margin-right: 25px"
								ng-click="ctrl.runParser();" id="showRun">
								Ejecutar <span class="glyphicon glyphicon-play"></span>
							</button>
							<button class="btn btn-default"
								style="float: right; width: 90px; margin-right: 10px; background-color: #f1f1f1"
								id="showAyuda" data-toggle="modal" data-target="#modal_Ayuda">
								Ayuda <span class="glyphicon glyphicon-info-sign"></span>
							</button>

						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Modal Informacion -->

		<div class="modal fade" tabindex="-1" role="dialog" id="modal_Ayuda">
			<div class="modal-dialog modal-lg" style="width: 600px;"
				role="document">
				<div class="modal-content alert-info">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h3>Referencias <span class="glyphicon glyphicon-info-sign"></span></h3>
					</div>
					<div class="modal-body">
						<pre class="alert alert-info">
El C�digo aceptado es una adaptaci�n del lenguaje C++.
Se reconoce la sintaxis de la siguiente manera:

-  Palabras reservadas en min�sculas (for, while).
-  Variables  se deben escribir en may�sculas (A[], X, Y, B[]).
-  El iterador se deben escribir en min�sculas (i, j, etc).
-  El iterador del while inicia en 1.
-  El incremento del while debe ir al final de la iteraci�n (i++).
-  Se aceptan comentarios de linea empezando con //

Ejemplos de c�digo reconocido:

for (i=1; i<= 5 ; i++) {		while ( i<= 5){
	A[i] = E[i-1] + 6;			A[i] = E[i-1] + 6;
	B[i] = A[i] * Z; 			B[i] = A[i] * Z;
	C[i] = B[i-1] + X; 			C[i] = B[i-1] + X;
	D[i] = C[i] + Y; 			D[i] = C[i] + Y;
	E[i] = B[i] * D[i]; 			E[i] = B[i] * D[i];
} 						i++;
						}

</pre>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-info" data-dismiss="modal">Cerrar</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal Solucion correcta -->

		<div class="modal fade" tabindex="-1" role="dialog" id="myModal">
			<div class="modal-dialog modal-lg"
				style="width: 1250px; height: 800px" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-6">
								<div class=container>
									<h3>Grafo de Dependencias</h3>

									<div id="dibujo"></div>
								</div>
							</div>
							<div class="col-md-6">
								<div>
									<h3>Trazas encontradas</h3>
									<table class=" table table-striped ">
										<thead>
											<tr>
												<th>#</th>
												<th>Traza</th>
												<th>Calculo</th>
												<th>Resultado</th>
											</tr>
										</thead>
										<tbody>
											<tr
												ng-repeat="i in ctrl.grillaTrazas | orderBy : '-resultado'">
												<td>{{$index + 1}}</td>
												<td>{{i.traza}}</td>
												<td>{{i.calculo}}</td>
												<td>{{i.resultado}}</td>
											</tr>
										</tbody>
									</table>
									<p
										style="color: #5cb85c; float: right; font-weight: bold; margin-right: 25px;">(*)
										Traza cr�tica</p>
								</div>
							</div>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-success" data-dismiss="modal">Cerrar</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /.modal -->

		<!-- Modal Parser error -->
	  <div class="modal fade" id="ModalError" role="dialog">
	    <div class="modal-dialog modal-lg" style="width: 600px; height: 80px">
	      <div class="modal-content alert-danger">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title"><strong>ATENCI�N</strong> <span class="glyphicon glyphicon-alert"></span></span></h4>
	        </div>
	        <div class="modal-body">
	          <pre class="alert-danger">{{ctrl.error}}</pre>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
	        </div>
	      </div>
	    </div>
	  </div>
</body>

</html>