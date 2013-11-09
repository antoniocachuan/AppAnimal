package pe.tienda.animalapp.layer.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AccesoDB {

	private AccesoDB() {
	}

	public static Connection getConnection() throws SQLException {
		Connection cn = null;
		try {
			// Datos para MySQL
			String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=convertToNull";
			String user = "root";
			String password = "antonio";
			// Cargar el driver
			Class.forName(driver);
			// Conexión
			cn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			throw e;
		} catch (ClassNotFoundException e) {
			throw new SQLException("Falta cargar el driver.");
		} catch (Exception e) {
			throw new SQLException("Error en la conexión con la base de datos.");
		}
		return cn;
	}
}
