package Cantina;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) {
        Connection con = ConnectionFactory.getConnection();
    }
}
