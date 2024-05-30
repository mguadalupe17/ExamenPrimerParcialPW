<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.donaciones.seguridad.*"%>
    <%
	int perfil = 0;
	String usuario = "";
	HttpSession sesion = request.getSession();
	 if (sesion.getAttribute("usuario") == null || (Integer)sesion.getAttribute("perfil") != 2) //Se verifica si existe la variable
	 {
		 %>
			<jsp:forward page="login.jsp">
			<jsp:param name="error" value="Debe registrarse en el sistema." />
			</jsp:forward>
		<%
	 }
	 else
	 {
		 usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
		 perfil=(Integer)sesion.getAttribute("perfil");
	 }
%>
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
<script type="text/javascript">
	window.onload = function()
	{
		var mensaje = "<%=request.getParameter("resultado")%>";
		if(mensaje === 'Correcto')
			{
				alert('Inserción correcta');
			}
	}
</script>
    <header>
        <div class="container">
            <h1>Helping Bites</h1>
            <nav>
                <ul>
                	<li><a href="registroDonacion.jsp">Donar<img src="images/dar.png"></a></li>
                    <li><a href="cerrarSesion.jsp"><img src="images/cerrar.png">Cerrar Sesión</a></li>
                </ul>
            </nav>
        </div>
    </header>
				
    <footer>
        <div class="container">
            <p>Derechos de autor &copy; 2024.HelpingBites.</p>
        </div>
    </footer>
</body>
</html>
