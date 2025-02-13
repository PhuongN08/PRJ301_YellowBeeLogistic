package DBConnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBConnection {

    private final String url;
    private final String username;
    private final String password;

    public DBConnection() {
        // Đọc thông tin từ biến môi trường, nếu không có thì sử dụng giá trị mặc định
        url = System.getenv().getOrDefault("DB_URL", 
            "jdbc:sqlserver://localhost:1433;databaseName=YellowBee;encrypt=true;trustServerCertificate=true;");
        username = System.getenv().getOrDefault("DB_USERNAME", "sa");
        password = System.getenv().getOrDefault("DB_PASSWORD", "123");
    }

    public Connection getConnection() {
        try {
            Connection connection = DriverManager.getConnection(url, username, password);
            System.out.println("Connected to SQL Server successfully!");
            return connection;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) {
        DBConnection db = new DBConnection();
        db.getConnection();
    }
}
