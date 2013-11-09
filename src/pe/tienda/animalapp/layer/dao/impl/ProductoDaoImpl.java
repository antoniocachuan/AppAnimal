package pe.tienda.animalapp.layer.dao.impl;

import java.sql.*;
import java.util.*;

import pe.tienda.animalapp.domain.Producto;
import pe.tienda.animalapp.layer.dao.interfaces.ProductoDao;

public class ProductoDaoImpl implements ProductoDao{

	@Override
	public List<Producto> listarTodos() {
		Connection cn = null;
		List<Producto> lista = new ArrayList<Producto>();
		try {
			cn = AccesoDB.getConnection();
			String sql = "select codigo, estado," +
					"nombre, cantidad from db_incidencias.producto";
			PreparedStatement pstm = cn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while (rs.next()) {
				Producto a = rowToBean(rs);
				lista.add(a);
			}
			rs.close();
			pstm.close();
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} catch (Exception e) {
			throw new RuntimeException("Error al consultar tabla de productos.");
		} finally {
			try {
				cn.close();
			} catch (Exception e) {
			}
		}
		return lista;
	}
	
	private Producto rowToBean(ResultSet rs) throws SQLException {
		Producto a = new Producto();
		a.setCantidad(rs.getInt("cantidad"));
		a.setEstado(rs.getInt("estado"));
		a.setId(rs.getInt("codigo"));
		a.setNombre(rs.getString("nombre"));
		return a;
	}

}
