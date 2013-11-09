package pe.tienda.animalapp.layer.service;

import java.util.List;

import pe.tienda.animalapp.domain.Producto;
import pe.tienda.animalapp.layer.dao.impl.ProductoDaoImpl;
import pe.tienda.animalapp.layer.dao.interfaces.ProductoDao;

public class ProductoService {
	 public List<Producto> listarProductos(){
 		ProductoDao dao = new ProductoDaoImpl();
 		return dao.listarTodos();
	 }
}
