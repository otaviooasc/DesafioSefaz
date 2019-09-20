package conecta;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConexaoBD {
    public static Connection conexao(){
        try {
            Class.forName("com.mysql.jdbc.Driver"); // Classe de nome que registra o driver JDBC
            System.out.println("Driver JDBC: OK!");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/pessoas", "root", ""); // Carregar o driver registrado e tentar conectar ao banco de dados
        } catch (ClassNotFoundException e){
            System.out.println("Driver JDBC não encontrado!");
            return null;
        } catch (SQLException e){
            System.out.println("Erro de conexão com o banco de dados. Favor verificar o caminho, usuário e senha!");
            return null;
        }
    }
    
    public static void fechaConexao(){
        try {
            conexao().close();
            System.out.println("Conexão finalizada: OK!");
        } catch (SQLException e){
            System.out.println("Conexão finalizada: ERRO!");
        }
    }
    
    public static void fechaConexao(PreparedStatement ps){
        try {
            ps.close();
            System.out.println("Recurso liberado: OK!");
            conexao().close();
            System.out.println("Conexão finalizada: OK!");
        } catch (SQLException e){
            System.out.println("Conexão finalizada: ERRO!");
        }
    }
    
    public static void fechaConexao(PreparedStatement ps, ResultSet rs){
        try {
            ps.close();
            System.out.println("Recurso Statement liberado: OK!");
            rs.close();
            System.out.println("Recurso ResultSet liberado: OK!");
            conexao().close();
            System.out.println("Conexão finalizada: OK!");
        } catch (SQLException e){
            System.out.println("Conexão finalizada: ERRO!");
        }
    }
    
}