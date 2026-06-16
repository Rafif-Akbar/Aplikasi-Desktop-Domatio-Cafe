/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AplikasiPemesanan;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author GILANG
 */
public class Config {
    private static Connection mysqlconfig;
    public static Connection configDB ()throws SQLException{
        try {
            String url="jdbc:mysql://localhost:3306/domatio_cafe";
            String user="root";
            String pass="";
            
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            mysqlconfig = DriverManager.getConnection(url, user, pass);
        } catch (SQLException e) {
            System.err.println("Koneksi gagal: " + e.getMessage());
            throw e;    // lempar kembali exception untuk ditangani di luar
        }
        return mysqlconfig;
    }
}
