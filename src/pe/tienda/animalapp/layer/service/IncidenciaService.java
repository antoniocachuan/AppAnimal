package pe.tienda.animalapp.layer.service;

import java.util.List;

import pe.tienda.animalapp.domain.Incidencias;
import pe.tienda.animalapp.domain.Producto;
import pe.tienda.animalapp.layer.dao.impl.IncidenciaDaoImpl;
import pe.tienda.animalapp.layer.dao.impl.ProductoDaoImpl;
import pe.tienda.animalapp.layer.dao.interfaces.IncidenciaDao;
import pe.tienda.animalapp.layer.dao.interfaces.ProductoDao;

public class IncidenciaService {
	public void nuevaIncidencia(Incidencias incidencia) {
		IncidenciaDao dao = new IncidenciaDaoImpl();
		dao.nuevaIncidencia(incidencia);
	}

	public List<Incidencias> listarIncidencias() {
		IncidenciaDao dao = new IncidenciaDaoImpl();
		return dao.listarIncidencias();
	}
}
