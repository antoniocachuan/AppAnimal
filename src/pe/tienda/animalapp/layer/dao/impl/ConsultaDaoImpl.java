package pe.tienda.animalapp.layer.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.tienda.animalapp.domain.Consulta;
import pe.tienda.animalapp.domain.Incidencias;
import pe.tienda.animalapp.layer.dao.interfaces.ConsultaDao;

public class ConsultaDaoImpl implements ConsultaDao {

	@Override
	public void nuevaConsulta(Consulta consulta) {
		Connection cn = null;
		String sql;
		PreparedStatement pstm;
		try {
			cn = AccesoDB.getConnection();
			cn.setAutoCommit(false);
			cn.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
			// Insertar registro
			sql = "INSERT INTO db_incidencias.tb_consultas " + "(nombres, apellidos, correo, asunto, consulta)" + 
			"VALUES(?,?,?,?,?)";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, consulta.getNombres());
			pstm.setString(2, consulta.getApellidos());
			pstm.setString(3, consulta.getCorreos());
			pstm.setString(4, consulta.getAsunto());
			pstm.setString(5, consulta.getConsulta());
			pstm.executeUpdate();
			pstm.close();
			// Confirmar Tx
			cn.commit();
		} catch (SQLException e) {
			try {
				cn.rollback();
			} catch (Exception e1) {
			}
			throw new RuntimeException(e.getMessage());
		} catch (Exception e) {
			try {
				cn.rollback();
			} catch (Exception e1) {
			}
			throw new RuntimeException("Error al registrar incidencia");
		} finally {
			try {
				cn.close();
			} catch (Exception e) {
			}
		}

	}
	
	@Override
	public List<Consulta> listarConsultas() {
		Connection cn = null;
		List<Consulta> lista = new ArrayList<Consulta>();
		try {
			cn = AccesoDB.getConnection();
			String sql = "select id, nombres, apellidos, correo, asunto, consulta " +
					"from db_incidencias.tb_consultas";
			PreparedStatement pstm = cn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Consulta a = rowToBean(rs);
				lista.add(a);
			}
			rs.close();
			pstm.close();
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} catch (Exception e) {
			throw new RuntimeException("Error al consultar tabla de incidencias.");
		} finally {
			try {
				cn.close();
			} catch (Exception e) {
			}
		}
		return lista;
	}
	
	private Consulta rowToBean(ResultSet rs) throws SQLException {
		Consulta a = new Consulta();
		a.setApellidos(rs.getString("apellidos"));
		a.setAsunto(rs.getString("asunto"));
		a.setConsulta(rs.getString("consulta"));
		a.setCorreos(rs.getString("correo"));
		a.setId(rs.getInt("id"));
		a.setNombres(rs.getString("nombres"));
		return a;
	}

}
