package pe.tienda.animalapp.layer.dao.interfaces;

import java.util.List;

import pe.tienda.animalapp.domain.Incidencias;
import pe.tienda.animalapp.domain.Producto;

public interface IncidenciaDao {
	public void nuevaIncidencia(Incidencias incidencia);
	public List<Incidencias> listarIncidencias();
}
