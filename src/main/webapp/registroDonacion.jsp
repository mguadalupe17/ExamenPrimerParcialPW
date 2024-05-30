<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session = "true" import="com.donaciones.negocio.*"%>
    <%
    	Donaciones d = new Donaciones();
    	int id = d.getNewId()+1;
    %>
    
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Donaciones</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
</head>
<body>
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
    <section id="donation-form-section">
        <div class="container">
            <h2>Registro de Donaciones</h2>
            <form action="procesarDonacion.jsp?id=<%=id %>" method="post">
                <div class="form-group">
                    <label for="id_pr">ID</label>
                    <input value="<%=id %>" type="text" id="id_pr" name="id_pr" readonly>
                </div>
                <div class="form-group">
                    <label for="tipo">Tipo</label>
                    <%
                    	Categorias categoria = new Categorias();
                        out.print(categoria.mostrarCategoria());
                    %>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre del Producto</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                <div class="form-group">
                    <label for="cantidad">Cantidad</label>
                    <input type="number" id="cantidad" name="cantidad" required>
                </div>
                <div class="form-group">
                    <label for="caducidad">Fecha de Caducidad</label>
                    <input type="date" id="caducidad" name="caducidad" required>
                </div>
                <div class="form-group">
                    <button type="submit">Enviar</button>
                    <button type="reset">Resetear</button>
                </div>
           </form>
        </div>
    </section>
    <footer>
        <div class="container">
            <p>Derechos de autor &copy; 2024. Helping Bites.</p>
        </div>
    </footer>
</body>
</html>
