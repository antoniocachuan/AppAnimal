package pe.tienda.animalapp.layer.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import pe.tienda.animalapp.domain.Trabajador;
import pe.tienda.animalapp.layer.service.TrabajadorService;

/**
 * Servlet implementation class trabajadorController
 */
@WebServlet({ "/actualizarTrabajador", "/nuevoTrabajador" })
public class trabajadorController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public trabajadorController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String alias = request.getServletPath();
		if (alias.equals("/actualizarTrabajador")) {
			actualizarTrabajador(request, response);
		} else{ 
			if (alias.equals("/nuevoTrabajador")) {
				nuevoTrabajador(request, response);
			}
		}
	}

	private void nuevoTrabajador(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		JSONObject jo = new JSONObject();
		try {
			// Dato
			Trabajador trabajador = new Trabajador();
			trabajador.setId(request.getParameter("idusuario"));
			trabajador.setClave(request.getParameter("contraseña"));
			trabajador.setApellido(request.getParameter("apellidos"));
			trabajador.setCargo(request.getParameter("cargo"));
			trabajador.setDireccion(request.getParameter("direccion"));
			trabajador.setEmail(request.getParameter("correo"));
			trabajador.setNombre(request.getParameter("nombres"));
			trabajador.setTelefono(request.getParameter("telefono"));
			// Proceso
			TrabajadorService service = new TrabajadorService();
			service.crear(trabajador);
			jo.put("estado", 1);
			jo.put("mensaje", "Registrado correctamente.");
		} catch (Exception e) {
			jo.put("estado", -1);
			jo.put("mensaje", e.getMessage());
		}
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(jo.toJSONString());
		System.err.println(jo.toJSONString());
		out.flush();
		out.close();
	}

	private void actualizarTrabajador(HttpServletRequest request, HttpServletResponse response) throws IOException {
		JSONObject jo = new JSONObject();
		try {
			// Dato
			Trabajador trabajador = new Trabajador();
			trabajador.setId(request.getParameter("id"));
			trabajador.setClave(request.getParameter("clave"));
			trabajador.setApellido(request.getParameter("apellido"));
			trabajador.setCargo(request.getParameter("cargo"));
			trabajador.setDireccion(request.getParameter("direccion"));
			trabajador.setEmail(request.getParameter("email"));
			trabajador.setNombre(request.getParameter("nombre"));
			trabajador.setTelefono(request.getParameter("telefono"));
			// Proceso
			TrabajadorService service = new TrabajadorService();
			service.modificar(trabajador);
			jo.put("mensaje", "Datos del trabajador actualizados correctamente.");
			jo.put("estado", 1);
		} catch (Exception e) {
			jo.put("estado", -1);
			jo.put("mensaje", e.getMessage());
		}
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(jo.toJSONString());
		System.err.println(jo.toJSONString());
		out.flush();
		out.close();
	}

}
