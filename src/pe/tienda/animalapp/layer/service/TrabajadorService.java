package pe.tienda.animalapp.layer.service;

import pe.tienda.animalapp.domain.Trabajador;
import pe.tienda.animalapp.layer.dao.impl.TrabajadorDaoImpl;
import pe.tienda.animalapp.layer.dao.interfaces.TrabajadorDao;

/**
 *
 * @author AntOniO
 */
public class TrabajadorService {

    public void modificar(Trabajador trabajador) {
        TrabajadorDao dao = new TrabajadorDaoImpl();
        dao.modificar(trabajador);
    }
    
    public void crear(Trabajador trabajador){
    		TrabajadorDao dao = new TrabajadorDaoImpl();
    		dao.crear(trabajador);
    }
    
}
