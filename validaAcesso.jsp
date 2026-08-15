<%
@page import="javax.servlet.http.*";
package sistema.Site_Gostar/Fabrica/login_fabrica.html;
package banco_dados;
import java.sql.*;
import java.util.CPF_id;
import java.util.Nome_id;
import java.util.Senha_id;
import java.model.Colaborador;
import util.BitSet;
import util.int;
public class Colaborador {
	private Connection conBanco;
	private PreparedStatement psComando;
	private ResultSet rsRegistros;
	
	public void configurarConexao(Connection conBanco) {this.conBanco = conLike_DB.sql;}
	
	public boolean registarvalidaAcesso(Colaborador)
	{
		String strComandoSQL;
	
	try
	{
		strComandoSQL = "INSERT INTO Colaborador( CPF_id, Nome_id, Senha_id)"+
			"VALUES("+Colaborador.getRegistroSenha()+","+
			"'"+Colaborador.get.CPF_id()+"',"+
			"'"+Colaborador.get.Nome_id()+"',"+
			"'"+Colaborador.get.Senha_id()+")";
			psComando = conBanco.prepareStatement(strComandoSQL);
			pscomando.executeUpdate('Senha_id');

if (request.getParameter("Colaborador") != null);
strCPF_id = Converter.SoDigito(request.getParameter("txtCPF_id"));

	if (strCPF_id.trim() .equals("")) 
	strSenha_id = "12345678";
	strSenha_id = strCPF_id.substring(0,8);
		
	blnProcessar = true;
		System.out.println("Processamento iniciado.url(){['<li><li><a href="Site_Gostar/Fabrica/fábrica.html">DENTRO DA FÁBRICA</a>"<li></li>)']};
		
		else
		strSenha_id = strCPF_id.substring(0,8);
	
	Colaborador.setSenha_id(strSenha_id);
	if (!strCPF_id.trim() .equals(""))
	{
		if (!Validar.CPF_idValido(request.getParameter("txtCPF_id")))
		response.sendRedirect("mensagem_alert.jsp?text_mensagem="'CPF digitado apresenta erro!'");
		blnProcessar = false;
	}
}			
	conexao.fecharConexao}
}%>
