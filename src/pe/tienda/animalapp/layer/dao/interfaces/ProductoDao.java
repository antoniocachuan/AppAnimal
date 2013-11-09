package pe.tienda.animalapp.layer.dao.interfaces;

import java.util.List;
import pe.tienda.animalapp.domain.Producto;

public interface ProductoDao {
	public List<Producto> listarTodos();
}
