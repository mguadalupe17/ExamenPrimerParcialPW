<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session = "true" import="com.donaciones.negocio.*"
    import="java.text.ParseException"
import="java.text.SimpleDateFormat"
import="java.util.Date"%>
<%
	Donaciones don  = new Donaciones();
	String id = request.getParameter("id");
	String nombre= request.getParameter("nombre");
	String categoria=request.getParameter("cmbCategoria");
	String cant=request.getParameter("cantidad");
	String fecha=request.getParameter("caducidad");
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Date date;
	java.sql.Date sqlDate=null;
	int id_p = Integer.parseInt(id);
	int id_cat = Integer.parseInt(categoria);
	int cantidad = Integer.parseInt(cant);


	try {
		java.util.Date utilDate = dateFormat.parse(fecha);
        sqlDate = new java.sql.Date(utilDate.getTime());
        } catch (ParseException e) {
        e.printStackTrace();
    }
	String res = don.ingresarProducto(id_p, id_cat, nombre, cantidad, sqlDate);
	response.sendRedirect("index.jsp?resultado="+res);


%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Helping Bites</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap">
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
                    <li><a href="registroDonacion.jsp">Donaciones<img src="images/dar.png"></a></li>
                    <li><a href="#informacion">Información<img src="images/informacion.png"></a></li>
                </ul>
            </nav>
        </div>
    </header>

  <section id="propositos">
    
       </section>
    <footer>
        <div class="container">
            <p>Derechos de autor &copy; 2024.HelpingBites.</p>
        </div>
    </footer>
</body>
</html>
