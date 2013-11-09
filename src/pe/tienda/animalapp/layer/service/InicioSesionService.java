package pe.tienda.animalapp.layer.service;

import pe.tienda.animalapp.domain.Trabajador;
import pe.tienda.animalapp.layer.dao.impl.TrabajadorDaoImpl;
import pe.tienda.animalapp.layer.dao.interfaces.TrabajadorDao;

/**
 *
 * @author AntOniO
 */
public class InicioSesionService {
    public Trabajador validar(String id, String clave){
		TrabajadorDao dao = new TrabajadorDaoImpl();
		Trabajador emp = dao.leerPorId(id);
		if(emp == null){
			throw new RuntimeException("Id no existe");
		}
		if(!emp.getClave().equals(clave)){
			throw new RuntimeException("Clave incorrecta.");
		}
		return emp;
	}
}