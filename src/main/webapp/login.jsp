<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Helping Bites</title>
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
                    <li><a href="index.jsp"><img src="images/hogar.png" alt="Home">Home</a></li>
                    <li><a href="login.jsp"><img src="images/avatar.png" alt="Login">Login</a></li>
                    <li><a href="informacion.jsp">Información<img src="images/informacion.png" alt="Información"></a></li>
                </ul>
            </nav>
        </div>
    </header>
    <section id="login-section">
        <div class="container">
            <h2>Iniciar sesión</h2>
            <form action="procesarLogin.jsp" method="post">
                <div class="form-group">
                    <label for="usuario">Usuario:</label>
                    <input type="text" id="usuario" name="usuario" required>
                </div>
                <div class="form-group">
                    <label for="contrasena">Contraseña:</label>
                    <input type="password" id="contrasena" name="contrasena" required>
                </div>
                <input type="submit" value="Iniciar sesión">
            </form>
            <div class="links">
                <a href="registro.jsp">¿No tienes una cuenta?</a>
            </div>
        </div>
    </section>
    <footer>
        <div class="container">
            <p>Derechos de autor &copy; 2024. Helping Bites.</p>
        </div>
    </footer>
</body>
</html>
