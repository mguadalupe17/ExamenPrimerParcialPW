<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Helping Bites</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/estilo.css" rel="stylesheet"type="text/css"/>
</head>
<body>
    <header>
        <div class="container">
            <h1>Helping Bites</h1>
            <nav>
                <ul>
                	<li><a href="index.jsp">Home<img src="images/dar.png"></a></li>
                	<li><a href="login.jsp"><img src="images/avatar.png">Login</a></li>
                    <li><a href="informacion.jsp">Información<img src="images/informacion.png" alt="Información"></a></li>
                </ul>
            </nav>
        </div>
    </header>
    		<section id="registro-usuario">
        	<div class="container">
			<form action="respuesta_registrar.jsp" method="post">

			<h2>Nuevo Usuario</h2>
			<div class="username">
				<label>Nombre </label> <input type="text"
					placeholder="Ingrese el nombre" name="nombre_us" required>
			</div>
			<div class="username">
				<label> Cédula </label> <input type="text"
					placeholder="Ingrese la cédula: " name="cedula_us" required maxlength="10">
			</div>
			<div class="username">
				 <label >Estado Civil </label>
	               <select name="cmbEstadoCivil" required oninvalid="this.setCustomValidity('Seleccione una opción')">
	               		<option value="1">Soltero</option>
               			<option value="2">Casado</option>	
						<option value="3">Divorciado</option>
						<option value="4">Viudo</option>		
	               </select>
			</div>
			<div class="username">
				<label> Usuario </label> <input type="text"
					placeholder="Ingrese el usuario" name="usuario_us" required>
			</div>
			<div class="username">
				<label> Contraseña </label> <input type="password" 
					placeholder="Ingrese la contraseña" name="clave_us" required>
			</div>
			<div>
				<input class="boton_enviar" type="submit" value="Enviar">
			  </div>
            </form>
        </div>
    </section>
    <footer>
        <div class="container">
            <p>Derechos de autor &copy; 2024.HelpingBites.</p>
        </div>
    </footer>
</body>
</html>
