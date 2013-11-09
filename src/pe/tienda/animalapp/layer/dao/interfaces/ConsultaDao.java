package pe.tienda.animalapp.layer.dao.interfaces;

import java.util.List;

import pe.tienda.animalapp.domain.Consulta;


public interface ConsultaDao {
	public void nuevaConsulta(Consulta consulta);
	public List<Consulta> listarConsultas();
}
