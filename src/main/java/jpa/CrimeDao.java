package jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

/**
 * Data Access Object.
 */
public class CrimeDao {

	//"crimes" é o nome da unidade de persistência no "persistence.xml".
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("crimes");

	public static void inclui(String tipo, String arma, String descricao) {
		// Obter "conexão".
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();

		Crime crime = new Crime();
		crime.setArma(arma);
		crime.setTipo(tipo);
		crime.setDescricao(descricao);

		// Grava o objeto no banco de dados.
		em.persist(crime);
		em.getTransaction().commit();
		em.close();
	}

	public static void alterar(String tipo, String arma, String descricao) {
	}

	public static void excluir(String matricula) {
	}

	public static List<Crime> listar() {
		EntityManager em = emf.createEntityManager();
		//Não é SQL! É JPQL.
		String jpql = "from Crime";
		TypedQuery<Crime> query = em.createQuery(jpql, Crime.class);
		List<Crime> result = query.getResultList();
		em.close();
		return result;
	}
}
