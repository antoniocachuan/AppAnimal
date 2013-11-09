package pe.tienda.animalapp.layer.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import pe.tienda.animalapp.domain.Incidencias;
import pe.tienda.animalapp.domain.Producto;
import pe.tienda.animalapp.domain.Trabajador;
import pe.tienda.animalapp.layer.service.IncidenciaService;
import pe.tienda.animalapp.layer.service.ProductoService;
import pe.tienda.animalapp.layer.service.TrabajadorService;

/**
 * Servlet implementation class IncidenciaController
 */
@WebServlet(description = "Incedencias diarias en la tienda", urlPatterns = { "/listarIncidencias", "/registrarIncidencia" })
public class IncidenciaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IncidenciaController() {
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
		if (alias.equals("/registrarIncidencia")) {
			registrarIncidencia(request, response);
		}else{
			if(alias.equals("/listarIncidencias")){
				listarIncidencias(request, response);
			}			
		}
	}

	private void listarIncidencias(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String destino;
		try {
			IncidenciaService service = new IncidenciaService();
			List<Incidencias> lista = service.listarIncidencias();
			request.setAttribute("lista", lista);
			if(lista.isEmpty()){
				request.setAttribute("mensaje", "No hay productos disponibles.");
			}
			destino = "listarIncidencias.jsp";
		} catch (Exception e) {
			request.setAttribute("error", e.getMessage());
			destino = "error.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}

	private void registrarIncidencia(HttpServletRequest request, HttpServletResponse response) throws IOException {
		JSONObject jo = new JSONObject();
		try {
			// Dato
			Incidencias incidencia = new Incidencias();
			incidencia.setAsunto(request.getParameter("asunto"));
			incidencia.setDescripcion(request.getParameter("descripcion"));
			incidencia.setSede(request.getParameter("sede"));
			// Proceso
			IncidenciaService service = new IncidenciaService();
			service.nuevaIncidencia(incidencia);
			jo.put("estado", 1);
			jo.put("mensaje", "Registrado s.");
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
