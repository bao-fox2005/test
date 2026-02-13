/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Computing Fundamental - HCM Campus
 */
public class DbUtils {
//    Do not change this code

    private static final String DB_NAME = "PRJ30x_DB1";
    private static final String DB_USER_NAME = "sa";
    private static final String DB_PASSWORD = "12345";

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection conn = null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        //Gọi người dẫn đường: Nạp Driver của Microsoft SQL Server vào hệ thống để Java biết cách giao tiếp với nó.
        String url = "jdbc:sqlserver://localhost:1433;databaseName=" + DB_NAME;
        //Định vị: Chỉ đường đến Database (đang chạy ở máy cục bộ localhost tại cổng 1433).
        conn = DriverManager.getConnection(url, DB_USER_NAME, DB_PASSWORD);
        //Mở cửa: Thực hiện lệnh kết nối bằng cách đưa URL, Username và Password. Nếu thành công, nó trả về một đối tượng Connection.
        return conn;
    }

    public static void main(String[] args) {
        try {
            System.out.println(getConnection());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DbUtils.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DbUtils.class.getName()).log(Level.SEVERE, null, ex);
        //(Lỗi "Sự cố dữ liệu")
        }
    }
}
