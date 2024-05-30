<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session = "true" import="com.donaciones.negocio.*"%>
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
                	<li><a href="listadoDonaciones.jsp"><img src="images/tablad.png">Listado Donaciones</a></li>
        	        <li><a href="cerrarSesion.jsp"><img src="images/cerrar.png">Cerrar Sesión</a></li>
                </ul>
            </nav>
        </div>
    </header>

  <section>
    <%
    	Donaciones don = new Donaciones();
    	out.print(don.consultarTodo2());
    %>
       </section>
    <footer>
        <div class="container">
            <p>Derechos de autor &copy; 2024.HelpingBites.</p>
        </div>
    </footer>
</body>
</html>
