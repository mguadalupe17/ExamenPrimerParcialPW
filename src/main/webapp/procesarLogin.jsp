<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.donaciones.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	usuario usuario = new usuario();
	String nlogin = request.getParameter("usuario");
	String nclave = request.getParameter("contrasena");
	HttpSession sesion = request.getSession(); //Se crea la variable de sesión
	boolean respuesta = usuario.verificarUsuario(nlogin, nclave);
	if (respuesta) 
	{
		sesion.setAttribute("usuario", usuario.getNombre()); //Se añade atributos
		sesion.setAttribute("perfil", usuario.getPerfil()); //Se añade atributos
		if(usuario.getPerfil()==1)
			response.sendRedirect("menuAdministrador.jsp"); 
		if(usuario.getPerfil()==2)
			response.sendRedirect("menuDonador.jsp"); 
	} 
	else 
	{
		%>
		<jsp:forward page="login.jsp">
			<jsp:param name="error"
				value="Datos incorrectos" />
		</jsp:forward>
		<%
	}
	%>
</body>
</html>