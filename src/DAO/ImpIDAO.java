package DAO;

import java.util.List;




import org.hibernate.Session;
import org.hibernate.query.Query;

import Entity.Article;
import Entity.Categorie;
import Entity.Client;
import Entity.Commande;
import Entity.lignecmd;
import util.HibernateUtil;


public class ImpIDAO implements IDAO {

	@Override
	public Long AddCategorie(Categorie c) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
		return c.getIdCategorie();
	}

	@Override
	public void UpdateCategorie(Categorie c) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(c);
		session.getTransaction().commit();

	}

	@Override
	public void DeleteCategorie(Long idC) {
		Categorie p = null ;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		 p = (Categorie) session.get(Categorie.class,idC);
		session.delete(p);
		session.getTransaction().commit();

	}

	@Override
	public Categorie GetCategorie(Long idC) {
		Categorie p = null ;
		 Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	     session.beginTransaction();
	     p = (Categorie) session.get(Categorie.class,idC);
	     session.getTransaction().commit();
	     return p ;
	}

	@Override
	public List<Categorie> ListCategories() {
		List<Categorie> Categories = null ;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Categories = session.createQuery("from Categorie").list();
		session.getTransaction().commit();
		return Categories;
	}

	@Override
	public Long AddArticle(Article a, Long idCat) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Categorie c = (Categorie) session.get(Categorie.class,idCat);
		a.setCategorie(c);
		session.save(a);
		session.getTransaction().commit();
		return a.getIdArticle();
	}

	@Override
	public void UpdateArticle(Article a) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.update(a);
		session.getTransaction().commit();

	}

	@Override
	public void DeleteArticle(Long idP) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Article p = (Article) session.get(Article.class,idP);
		session.delete(p);
		session.getTransaction().commit();

	}

	@Override
	public Article GetArticle(Long idA) {
		 Article p = null ;
		 Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	     session.beginTransaction();
	     p = (Article) session.get(Article.class,idA);
	     session.getTransaction().commit();
	     return p ;
	}

	@Override
	public List<Article> ListArticles() {
		List<Article> Articles = null ;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Articles = session.createQuery("from Article").list();
		session.getTransaction().commit();
		return Articles;
	}

	@Override
	public List<Article> getArticlesMotCle(String mot) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Query q=(Query) session.createQuery("select a from Article a where a.designation like :x");
		q.setParameter(1,"%"+mot+"%");
		return q.getResultList();
	}

	@Override
	public List<Article> getArticlesCategorie(Long idC) {
		List<Article> Articles = null ;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Articles = session.createQuery("from Article a where a.categorie.idCategorie="+idC).list();
		session.getTransaction().commit();
		return Articles;
	}

	@Override
	public void AddClient(Client c) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();

	}

	/*@Override
	public Commande AddCommande(Panie p, Client c) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		AddClient(c);
		Commande cmd = new Commande();
		cmd.setClient(c);
		cmd.setLignecmds((List<lignecmd>) p.getItems());
		session.save(cmd);
		session.getTransaction().commit();
		return cmd;
		
	}*/

	@Override
	public List<Article> ListNVArticles() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		//Query q=(Query) session.createQuery("select a from Article a order by idArticle desc limit 2");
		List<Article> list= session.createQuery("from Article a order by a.idArticle desc limit 10").list();
		return list;
	}

	@Override
	public Client verifyClientExist(String email, String Paswword) {
		List<Client> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		list =  session.createQuery("from Client c where c.Email='"+email+"' AND  c.password='"+ Paswword +"'").list();
		return list.get(0);
	}

	/*@Override
	public List<Article> getArticlesCategorieByNom(String nomCateg) {
		// TODO Auto-generated method stub
		return null;
	}*/

}
