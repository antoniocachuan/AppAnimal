package pe.tienda.animalapp.layer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pe.tienda.animalapp.domain.Trabajador;
import pe.tienda.animalapp.layer.service.InicioSesionService;

/**
 * Servlet implementation class IniController
 */
@WebServlet({"/InicioSesionController", "/FinSesionController"})
public class IniController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String alias = request.getServletPath();
		if(alias.equals("/InicioSesionController")){
			inicioController(request,response);
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String alias = request.getServletPath();
		if(alias.equals("/FinSesionController")){
			finController(request,response);
		}
	}
	

	private void finController(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession(true);
			session.invalidate();
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
	}
	

	private void inicioController(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String destino;
		try {
			// Datos
			String usuario = request.getParameter("usuario").toString();
			String clave = request.getParameter("clave").toString();
			// Validar
			InicioSesionService service = new InicioSesionService();
			Trabajador trab = service.validar(usuario, clave);
			// Acceder a la sesion
			HttpSession session = request.getSession(true);
			session.setAttribute("trabajador", trab);
//			System.out.print("***************");
//			System.out.print(trab.getTelefono());
//			System.out.print(trab.getCargo());
//			System.out.print(trab.getEmail());
//			System.out.print("***************");
			// Destino
			destino = "Principal.jsp";
		} catch (Exception e) {
			request.setAttribute("error", e.getMessage());
			destino = "index.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}
}
