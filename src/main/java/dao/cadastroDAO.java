/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conecta.ConexaoBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Pessoas;

/**
 *
 * @author Lilo
 */
public class cadastroDAO {
    
    public static boolean cadastrar(Pessoas p) {
        boolean status = false;
        Connection con = ConexaoBD.conexao();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("insert into cadastro (name, email, pass, telefone) values (?, ?, ?, ?)");
            ps.setString(1, p.getName());
            ps.setString(2, p.getEmail());
            ps.setString(3, p.getSenha());     
            ps.setString(4, p.getTelefone());
            ps.executeUpdate();
            status = true;
            return status;
        } catch (SQLException e) {
            System.out.println("Erro ao tentar cadastrar! Favor verificar todas as configurações de conexão com o banco.DAO");
            return status;
        } finally {
            ConexaoBD.fechaConexao(ps);
        }
    }
    public List<Pessoas> consultar(){
        Connection con = ConexaoBD.conexao();
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Pessoas> pecas = new ArrayList<>();
        try {
            ps = con.prepareStatement("select * from cadastro");
            rs = ps.executeQuery();
            while (rs.next()){
                Pessoas p = new Pessoas();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setEmail(rs.getString("email"));
                pecas.add(p);
            }
        } catch (SQLException e){
            System.out.println("Erro ao consultar!");
        } finally {
            ConexaoBD.fechaConexao(ps, rs);
        }
        return pecas;
    }
    public static void alterar(Pessoas p) {
        Connection con = ConexaoBD.conexao();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("update cadastro set email = ?, pass = ?, telefone = ? where name = ?");
            ps.setString(1, p.getEmail());
            ps.setString(2, p.getSenha());
            ps.setString(3, p.getTelefone());
            ps.setString(4, p.getName());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro ao tentar alterar!");
        } finally {
            ConexaoBD.fechaConexao(ps);
        }
    }
    public static boolean validaLogin(String pass, String name){
        Connection con = ConexaoBD.conexao();
        PreparedStatement ps = null;
        ResultSet rs = null;
        boolean autenticacao = false;
        try {
            ps = con.prepareStatement("select * from cadastro where name = ? and pass = ?");
            ps.setString(1, name);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            if (rs.next()){
                
                autenticacao = true;
                return autenticacao;
            } 
        } catch (SQLException e){
            System.out.println("Erro de autenticação!");
        } finally {
            ConexaoBD.fechaConexao(ps, rs);
        }
        return autenticacao;
    }
    public static boolean validaCadastro(String email, String name){
        Connection con = ConexaoBD.conexao();
        PreparedStatement ps = null;
        ResultSet rs = null;
        boolean autenticacao = false;
        try {
            ps = con.prepareStatement("select * from cadastro where name = ? or email = ?");
            ps.setString(1, name);
            ps.setString(2, email);
            rs = ps.executeQuery();
            if (rs.next()){
                autenticacao = true;
                return autenticacao;
            } 
        } catch (SQLException e){
            System.out.println("Erro de autenticação!");
        } finally {
            ConexaoBD.fechaConexao(ps, rs);
        }
        return autenticacao;
    }
    public static void deletar(Pessoas p) {
        Connection con = ConexaoBD.conexao();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("delete from cadastro where name = ?");
            ps.setString(1, p.getName());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Erro ao tentar Deletar!");
        } finally {
            ConexaoBD.fechaConexao(ps);
        }
    }
    public static Pessoas pesquisar(String name) {
        Connection con = ConexaoBD.conexao();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement("select * from cadastro where name = ?");
            ps.setString(1, name);
            rs = ps.executeQuery();
            if (rs.next()) {
                Pessoas p = new Pessoas();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setEmail(rs.getString("email"));
                p.setSenha(rs.getString("pass"));
                p.setTelefone(rs.getString("telefone"));
                System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
                return p;
            }
        } catch (SQLException e) {
            System.out.println("Erro ao consultar!");
        } finally {
            ConexaoBD.fechaConexao(ps, rs);
        }
        return null;
    }
}