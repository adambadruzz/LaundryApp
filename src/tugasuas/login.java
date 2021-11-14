package tugasuas;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class login {
    private static Connection mysqllogin;
    public static Connection configLogin()throws SQLException{
        try {
            String url="jdbc:mysql://localhost:3306/laundry"; //url database
            String user="root"; //user database
            String pass=""; //password database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            mysqllogin=DriverManager.getConnection(url, user, pass);      
        } catch (Exception e) {
            System.err.println("koneksi gagal "+e.getMessage()); //perintah menampilkan error pada koneksi
        }
        return mysqllogin;
    }    
}