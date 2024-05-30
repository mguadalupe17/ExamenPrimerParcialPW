<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session = "true" import="com.donaciones.seguridad.*"%>
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
                    <li><a href="#informacion">Información<img src="images/informacion.png"></a></li>
                </ul>
            </nav>
        </div>
    </header>

  <section id="propositos">
    <%
		usuario user = new usuario();
		int id_u = user.id_cliente()+1;
		String id_est = request.getParameter("cmbEstadoCivil");
		int estado = Integer.parseInt(id_est);
		String nombre = request.getParameter("nombre_us");
		String cedula = request.getParameter("cedula_us");
		String correo = request.getParameter("usuario_us");
		String clave = request.getParameter("clave_us");
		user.setId(id_u);
		user.setPerfil(2);
		user.setEstadoCivil(estado);
		user.setNombre(nombre);
		user.setCedula(cedula);
		user.setCorreo(correo);
		user.setClave(clave);
		String resultado = user.ingresarCliente();
		out.print(resultado);	
	%>
       </section>
    <footer>
        <div class="container">
            <p>Derechos de autor &copy; 2024.HelpingBites.</p>
        </div>
    </footer>
</body>
</html>
