package conecta;

public class Teste {
    public static void main (String[] args) {
        System.out.println("Status da Conexão com o banco de dados");
        ConexaoBD.conexao();
        System.out.println("Status para fechar a Conexão com o banco de dados");
        ConexaoBD.fechaConexao();
    }
}