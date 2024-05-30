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
                	<li><a href="index.jsp"><img src="images/hogar.png">Home</a></li>
                	<li><a href="login.jsp"><img src="images/avatar.png">Login</a></li>
                    <li><a href="informacion.jsp">Información<img src="images/informacion.png"></a></li>
                </ul>
            </nav>
        </div>
    </header>

  <section id="propositos">
    <div class="container">
        <h2>¿Qué nos motiva?</h2>
        <div class="proposito">
            <img src="images/donacion.png">
            <p>Reducir el desperdicio de alimentos: Uno de los principales propósitos de la plataforma es evitar que alimentos aún consumibles sean desechados y, en su lugar, sean donados a personas o instituciones que los necesiten.</p>
        </div>
        <div class="proposito">
             <img src="images/apoyo.png">
            <p>Apoyar a comunidades vulnerables: La plataforma busca ayudar a personas en situación de vulnerabilidad, proporcionándoles alimentos que de otra manera podrían no tener acceso.</p>
        </div>
          <div class="proposito">
             <img src="images/solidaridad.png">
            <p>Fomentar la solidaridad y la empatía: Promover la participación de la comunidad en acciones solidarias y fomentar la empatía hacia aquellos que necesitan ayuda</p>
        </div>
    </div>
</section>

    <section id="misiones">
        <div class="container">
            <h2>Misiones</h2>
            <p>Sensibilizar sobre el desperdicio de alimentos: La misión incluye educar a la comunidad sobre la importancia de reducir el desperdicio de alimentos y concientizar sobre el impacto positivo que pueden tener las donaciones.</p>
            <!-- Aquí puedes agregar imágenes, videos, etc. -->
        </div>
    

   			<div class="container">
            <p>Garantizar la seguridad alimentaria: La plataforma se compromete a asegurar que los alimentos donados cumplan con los estándares de seguridad alimentaria y lleguen a quienes más lo necesitan de manera segura y en buenas condiciones.</p>
            <!-- Aquí puedes agregar imágenes, videos, etc. -->
        </div>
       </section>
    <footer>
        <div class="container">
            <p>Derechos de autor &copy; 2024.HelpingBites.</p>
        </div>
    </footer>
</body>
</html>
