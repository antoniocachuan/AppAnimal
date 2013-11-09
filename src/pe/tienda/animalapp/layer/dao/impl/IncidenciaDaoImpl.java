package pe.tienda.animalapp.layer.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pe.tienda.animalapp.domain.Incidencias;
import pe.tienda.animalapp.domain.Producto;
import pe.tienda.animalapp.layer.dao.interfaces.IncidenciaDao;


public class IncidenciaDaoImpl implements IncidenciaDao {
/*
 * INSERT INTO `db_incidencias`.`tb_incidencia` 
 * (`sede`, `asunto`, `descripcion`) VALUES
 *  ('Huaral', 'Robo', 'Asalto a la sede');

 * */
	@Override
	public void nuevaIncidencia(Incidencias incidencia) {
		Connection cn = null;
		String sql;
		PreparedStatement pstm;
		try {
			cn = AccesoDB.getConnection();
			cn.setAutoCommit(false);
			cn.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
			// Insertar registro
			sql = "INSERT INTO db_incidencias.tb_incidencia" +
					"(sede, descripcion, asunto)" +
					"VALUES(?,?,?)";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, incidencia.getSede());
			pstm.setString(2, incidencia.getDescripcion());
			pstm.setString(3, incidencia.getAsunto());
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
	public List<Incidencias> listarIncidencias() {
		Connection cn = null;
		List<Incidencias> lista = new ArrayList<Incidencias>();
		try {
			cn = AccesoDB.getConnection();
			String sql = "select id, sede, descripcion, asunto " +
					"from db_incidencias.tb_incidencia";
			PreparedStatement pstm = cn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Incidencias a = rowToBean(rs);
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
	
	private Incidencias rowToBean(ResultSet rs) throws SQLException {
		Incidencias a = new Incidencias();
		a.setAsunto(rs.getString("asunto"));
		a.setDescripcion(rs.getString("descripcion"));
		a.setSede(rs.getString("sede"));
		a.setId(rs.getInt("id"));
		return a;
	}
	
}
