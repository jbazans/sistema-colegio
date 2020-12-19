<!DOCTYPE html>
<html>
<head>
	<title>Login | Sistema para Colegios</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
	<div class="main-body">
		<div class="content-form">
			<h3>Bienvenido al sistema de colegio</h3>
			<input class="mt10" type="text" id="corusu" placeholder="Correo">
			<input class="mt10" type="password" id="pasusu" placeholder="Contraseña">
			<button class="mt10" onclick="try_login()">Ingresar</button>
		</div>
	</div>
	<script type="text/javascript">
		var request=new XMLHttpRequest();
		function try_login(){
			let fd=new FormData();
			fd.append('corusu',document.getElementById("corusu").value);
			fd.append('pasusu',document.getElementById("pasusu").value);
			request.open('POST','api/_login.php',true);
			request.onload=function(){
				console.log(request.responseText);
			}
			request.send(fd);
		}
	</script>
</body>
</html>