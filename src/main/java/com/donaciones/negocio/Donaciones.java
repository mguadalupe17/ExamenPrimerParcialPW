package com.donaciones.negocio;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.donaciones.datos.Conexion;

public class Donaciones {
	private int id;
	private int id_categoria;
	private String nombre;
	private int cantidad;
	private Date fechaCaducidad;

	//Constructor
	public Donaciones() {
		super();
	}
	public Donaciones(int id, int id_categoria, String nombre, int cantidad, Date fechaCaducidad) {
		super();
		this.id = id;
		this.id_categoria = id_categoria;
		this.nombre = nombre;
		this.cantidad = cantidad;
		this.fechaCaducidad = fechaCaducidad;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_categoria() {
		return id_categoria;
	}
	public void setId_categoria(int id_categoria) {
		this.id_categoria = id_categoria;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public Date getFechaCaducidad() {
		return fechaCaducidad;
	}
	public void setFechaCaducidad(Date fechaCaducidad) {
		this.fechaCaducidad = fechaCaducidad;
	}

	public String ingresarProducto(int id, int cat,String nombre, int cantidad, Date fechaCaducidad)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_donacion (id_pr,id_cat," + "nombre_pr,cantidad_pr,fecha_pr) " + "VALUES(?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setInt(2,cat);
			pr.setString(3, nombre);
			pr.setInt(4, cantidad);
			pr.setDate(5, fechaCaducidad);
			if(pr.executeUpdate()==1)
			{
				result= "Correcto";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	public int obtenerId() {
		String sql= "SELECT id_pr FROM tb_donacion";
		Conexion conn = new Conexion();
		int resultado= 0, aux=0;
		ResultSet rs=null;
		try {
			rs= conn.Consulta(sql);
			while (rs.next()) {
				aux= rs.getInt(1);	
				if(aux>resultado)
					resultado=aux;
			}
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		return resultado+1;
	}
	public int getNewId()
	{
		Conexion con=new Conexion();
		ResultSet rs = null;
		String sql = "SELECT id_pr FROM tb_donacion";
		int aux = 0, valorComparar=0;
		try 
		{
			rs=con.Consulta(sql);
			while(rs.next()) 
			{
				valorComparar = rs.getInt(1);
				if(rs.getInt(1)>aux)
				{
					aux=valorComparar;
				}
			}
		} 
		catch (SQLException e) 
		{
			System.out.print(e.getMessage());

		}
		return aux;
	}

	public String consultarTodo2()
	{
		String sentencia="SELECT * FROM tb_donacion ORDER BY id_pr";
		Conexion con=new Conexion();
		ResultSet rs=null;
		String tabla="<table class=\"table\"><thead><tr><th scope=\"col\">ID</th><th scope=\"col\">Producto</th><th scope=\"col\">Cantidad</th><th scope=\"col\">Fecha de caducidad</th></tr></thead><tbody><tr>";
		try 
		{
			rs=con.Consulta(sentencia);

			while(rs.next())
			{
				tabla+="<th scope=\"row\">"+rs.getInt(1)+"</th>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getString(4)+"</td>"
						+ "<td>"+rs.getString(5)+"</td></tr>";
			}
			tabla+="</tbody></table>";

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.print(e.getMessage());
		}
		return tabla;
	}
}
