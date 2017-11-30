﻿<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="jpa.Crime"%>
<html>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- Começo da navbar -->
		<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
  			<a class="navbar-brand" href="#">Menu</a>
  			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    			<span class="navbar-toggler-icon"></span>
  			</button>
  			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    			<div class="navbar-nav">
      				<a class="nav-item nav-link" href="index.html">Página inicial <span class="sr-only">(current)</span></a>
      				<a class="nav-item nav-link active" href="report.html">Reportar crime</a>
    			</div>
  			</div>
		</nav>
		<!-- Fim da navbar -->
		
		<!-- Começo do formulário -->
		<form action="${pageContext.request.contextPath}/report.do" method="post">
			<h1></h1>
			<div class="container">
				<div class="card">
	  				<div class="card-body">
	  					<h2>Informações do crime:</h2>
	  					<div class="form-row">
	  						<div class="form-group col-md-4">
	  							<label for="inputTipo">Tipo</label>
	  							<select id="inputTipo" class="form-control" required>
	  								<option>Assalto</option>
	  								<option>Assassinato</option>
	  								<option>Furto</option>
	  								<option>Sequestro</option>
	  							</select>
	  						</div>
	  						<div class="form-group col-md-2">
	  							<label for="inputArma">Arma</label>
	  							<select id="inputArma" class="form-control" required>
	  								<option>Nenhuma</option>
	  								<option>Branca</option>
	  								<option>Fogo</option>
	  							</select>
	  						</div>
	  					</div>
	  					<div class="form-group">
    						<label for="inputDesc">Descreva o delito:</label>
    						<textarea class="form-control" id="inputDesc" rows="3"></textarea>
  						</div>
  						<h6>Se quiser pode fazer um upload de uma foto ou video do ocorrido</h6>
  						<h6>Clique abaixo para selecionar o arquivo:</h6>
  						<label class="custom-file">
  							<input type="file" id="file2" class="custom-file-input">
  							<span class="custom-file-control"></span>
						</label>
	  					<div id="map"></div>
	  				</div>
	  			</div>
	  			<h1></h1>
	  			<button name="operacao" value="incluir" class="btn btn-primary">Enviar</button>
	  		</div>
		</form>
		<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAj52QyarTITdWWlepopNkM__T4huzT7Mw&callback=initMap">
    </script>
		<script type="text/javascript" src="js/googleMaps.js"></script>	
    	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	</body>
</html>