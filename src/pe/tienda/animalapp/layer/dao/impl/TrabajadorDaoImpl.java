package pe.tienda.animalapp.layer.dao.impl;

import java.sql.*;
import pe.tienda.animalapp.domain.Trabajador;
import pe.tienda.animalapp.layer.dao.interfaces.TrabajadorDao;

public class TrabajadorDaoImpl implements TrabajadorDao {

	@Override
	public Trabajador leerPorId(String id) {
		Connection cn = null;// ARREGLAR
		Trabajador emp = null;
		try {
			cn = AccesoDB.getConnection();
			String sql = "select id, clave, apellido, nombre," + "cargo, direccion, telefono, email " + "from db_incidencias.tb_trabajador where id = ?";
			PreparedStatement pstm = cn.prepareStatement(sql);
			pstm.setString(1, id);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				emp = rowToBean(rs);
			}
			rs.close();
			pstm.close();
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} catch (Exception e) {
			throw new RuntimeException("Error al consultar tabla.");
		} finally {
			try {
				cn.close();
			} catch (Exception e) {
			}
		}
		return emp;
	}

	private Trabajador rowToBean(ResultSet rs) throws SQLException {
		Trabajador emp = new Trabajador();
		emp.setId(rs.getString("id"));
		emp.setClave(rs.getString("clave"));
		emp.setApellido(rs.getString("apellido"));
		emp.setNombre(rs.getString("nombre"));
		emp.setCargo(rs.getString("cargo"));
		emp.setDireccion(rs.getString("direccion"));
		emp.setTelefono(rs.getString("telefono"));
		emp.setEmail(rs.getString("email"));
		return emp;
	}

	@Override
	public void modificar(Trabajador empleado) {
		Connection cn = null;
		try {
			cn = AccesoDB.getConnection();
			cn.setAutoCommit(false);
			String sql = "UPDATE db_incidencias.tb_trabajador SET apellido=?, nombre=?, direccion=?," + "telefono=?, email=?, clave=?, cargo=?  WHERE id=?";
			PreparedStatement pstm = cn.prepareStatement(sql);
			pstm.setString(1, empleado.getApellido());
			pstm.setString(2, empleado.getNombre());
			pstm.setString(3, empleado.getDireccion());
			pstm.setString(4, empleado.getTelefono());
			pstm.setString(5, empleado.getEmail());
			pstm.setString(6, empleado.getClave());
			pstm.setString(7, empleado.getCargo());
			pstm.setString(8, empleado.getId());
			int filas = pstm.executeUpdate();
			pstm.close();
			if (filas == 0) {
				throw new SQLException("ID del Trabajador incorrecto.");
			}
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
			throw new RuntimeException("Error al modificar datos del trabajador.");
		} finally {
			try {
				cn.close();
			} catch (Exception e) {
			}
		}

	}

	@Override
	public void crear(Trabajador empleado) {
		Connection cn = null;
		String sql;
		PreparedStatement pstm;
		System.out.print("/*/*/*/*/");
		System.out.print(empleado.getApellido());
		try {
			cn = AccesoDB.getConnection();
			cn.setAutoCommit(false);
			cn.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
			// Insertar registro
			sql = "INSERT INTO db_incidencias.tb_trabajador" +
					"(id, clave, apellido, " + "nombre, cargo, direccion, " +
					"telefono, email )" + "VALUES(?,?,?,?,?,?,?,?)";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, empleado.getId());
			pstm.setString(2, empleado.getClave());
			pstm.setString(3, empleado.getApellido());
			pstm.setString(4, empleado.getNombre());
			pstm.setString(5, empleado.getCargo());
			pstm.setString(6, empleado.getDireccion());
			pstm.setString(7, empleado.getTelefono());
			pstm.setString(8, empleado.getEmail());
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
			throw new RuntimeException("Error al registrar al trabajador");
		} finally {
			try {
				cn.close();
			} catch (Exception e) {
			}
		}
	}
}
