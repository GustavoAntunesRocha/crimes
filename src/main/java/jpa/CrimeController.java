package jpa;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jpa/crimes")
public class CrimeController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String valor(HttpServletRequest req, String param, String padrao) {
		String result = req.getParameter(param);
		if (result == null) {
			result = padrao;
		}
		return result;
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String msg;
			String op = valor(req, "operacao", "");
			String tipo = valor(req, "inputTipo", "");
			String arma = valor(req, "inputArma", "");
			String descricao = valor(req, "inputDesc", "");
			if (op.equals("incluir")) {
				CrimeDao.inclui(tipo, arma, descricao);
				msg = "Inclusão realizada com sucesso.";
			} else if (op.equals("alterar")) {
				CrimeDao.alterar(tipo, arma, descricao);
				msg = "Alteração realizada com sucesso.";
			} else if (op.equals("excluir")) {
				CrimeDao.excluir(tipo);
				msg = "Exclusão realizada com sucesso.";
			} else if (op.equals("")) {
				msg = "";
			} else {
				throw new IllegalArgumentException("Operação \"" + op + "\" não suportada.");
			}
			req.setAttribute("msg", msg);
			req.setAttribute("crimes", CrimeDao.listar());
			
			req.getRequestDispatcher("report.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace(resp.getWriter());
		}
	}
}
