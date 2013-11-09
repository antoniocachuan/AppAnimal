package pe.tienda.animalapp.layer.dao.interfaces;

import pe.tienda.animalapp.domain.Trabajador;

public interface TrabajadorDao {
	public Trabajador leerPorId(String id);
	
	public void modificar(Trabajador empleado);
	
	public void crear(Trabajador empleado);
	
	
}
