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

import pe.tienda.animalapp.domain.Consulta;
import pe.tienda.animalapp.domain.Incidencias;
import pe.tienda.animalapp.layer.service.ConsultaService;
import pe.tienda.animalapp.layer.service.IncidenciaService;

/**
 * Servlet implementation class ConsultaController
 */
@WebServlet({"/listarConsultas", "/registrarConsulta"})
public class ConsultaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConsultaController() {
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
		if (alias.equals("/registrarConsulta")) {
			registrarConsulta(request, response);
		}else{
			if(alias.equals("/listarConsultas")){
				listarConsultas(request,response);
			}
		}
	}

	private void listarConsultas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String destino;
		try {
			ConsultaService service = new ConsultaService();
			List<Consulta> lista = service.listarConsultas();
			request.setAttribute("lista", lista);
			if(lista.isEmpty()){
				request.setAttribute("mensaje", "No hay consultas disponibles.");
			}
			destino = "listarConsultas.jsp";
		} catch (Exception e) {
			request.setAttribute("error", e.getMessage());
			destino = "error.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
		
	}

	private void registrarConsulta(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		JSONObject jo = new JSONObject();
		String destino;
		try {
			// Dato
			Consulta consulta = new Consulta();
			consulta.setApellidos(request.getParameter("apellidos"));
			consulta.setNombres(request.getParameter("nombres"));
			consulta.setAsunto(request.getParameter("asunto"));
			consulta.setCorreos(request.getParameter("correo"));
			consulta.setConsulta(request.getParameter("consulta"));
			System.out.print("entro aqui");
			// Proceso
			ConsultaService service = new ConsultaService();
			service.nuevaConsulta(consulta);
			// JO.PUT("ESTADO", 1);
			// JO.PUT("MENSAJE", "CONSULTA INSERTADA.");
			destino = "resultadoConsulta.jsp";
		} catch (Exception e) {
			request.setAttribute("error", e.getMessage());
			destino = "error.jsp";
			// jo.put("estado", -1);
			// jo.put("mensaje", "Consulta no Insertada "+e.getMessage());
		}
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
		// response.setContentType("text/html;charset=UTF-8");
		// PrintWriter out = response.getWriter();
		// out.println(jo.toJSONString());
		// System.err.println(jo.toJSONString());
		// out.flush();
		// out.close();

	}

}
