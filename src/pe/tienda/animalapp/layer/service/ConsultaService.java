package pe.tienda.animalapp.layer.service;

import java.util.List;

import pe.tienda.animalapp.domain.Consulta;
import pe.tienda.animalapp.domain.Incidencias;
import pe.tienda.animalapp.layer.dao.impl.ConsultaDaoImpl;
import pe.tienda.animalapp.layer.dao.impl.IncidenciaDaoImpl;
import pe.tienda.animalapp.layer.dao.interfaces.ConsultaDao;
import pe.tienda.animalapp.layer.dao.interfaces.IncidenciaDao;

public class ConsultaService {
	public void nuevaConsulta(Consulta consulta) {
		ConsultaDao dao = new ConsultaDaoImpl();
		dao.nuevaConsulta(consulta);
	}
	public List<Consulta> listarConsultas() {
		ConsultaDao dao = new ConsultaDaoImpl();
		return dao.listarConsultas();
	}
}
