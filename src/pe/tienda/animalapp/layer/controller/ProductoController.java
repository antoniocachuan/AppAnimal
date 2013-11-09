package pe.tienda.animalapp.layer.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pe.tienda.animalapp.domain.Producto;
import pe.tienda.animalapp.layer.service.ProductoService;

/**
 * Servlet implementation class ProductoController
 */
@WebServlet({ "/listarProductos", "/registrarVenta" })
public class ProductoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String alias = request.getServletPath();
		if(alias.equals("/listarProductos")){
			listarProductos(request,response);
		} 
	}

	private void listarProductos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String destino;
		try {
			ProductoService service = new ProductoService();
			List<Producto> lista = service.listarProductos();
			request.setAttribute("lista", lista);
			if(lista.isEmpty()){
				request.setAttribute("mensaje", "No hay productos disponibles.");
			}
			destino = "listadototalproducto.jsp";
		} catch (Exception e) {
			request.setAttribute("error", e.getMessage());
			destino = "error.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response);
	}

}
