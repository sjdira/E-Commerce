package DAO;

import java.net.PasswordAuthentication;

import java.util.Date;



import java.util.List;




import org.hibernate.Session;
import org.hibernate.query.Query;

import Entity.Article;
import Entity.Categorie;
import Entity.Client;
import Entity.Commande;
import Entity.Panier;
import Entity.item;
import Entity.lignecmd;
import util.HibernateUtil;
import java.util.Properties;
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
		
		List<Article> Articles = null ;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Articles = session.createQuery("select a from Article a where a.designation like '%"+mot+"%'").list();
		session.getTransaction().commit();
		return Articles;
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

	@Override
	public Long addCommande(Date date, Client client) {
		Session session=HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Commande comm=new Commande();
		comm.setDateCommande(date);
		client.addCommande(comm);
		comm.setClient(client);
		session.save(comm);
		session.getTransaction().commit();
		HibernateUtil.getSessionFactory().close();
		return comm.getIdCommande();
		
	}

	@Override
	public Client getClient(Long idClient) {
		Client c = null ;
		 Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	     session.beginTransaction();
	     c = (Client) session.get(Client.class,idClient);
	     session.getTransaction().commit();
	     return c ;
	}

	@Override
	public List<Client> getClients() {
		List<Client> clients = null ;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		clients = session.createQuery("from Client").list();
		session.getTransaction().commit();
		return clients;
	}

	@Override
	public List<Article> filtreCategorieByPrix(Long idCategorie, Double prix) {
		List<Article> Articles = null ;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Articles = session.createQuery("from Article a where a.categorie.idCategorie="+idCategorie +" and a.prix <=  "+prix).list();
		session.getTransaction().commit();
		return Articles;
	}

	@Override
	public void addProduitToCommande(Long idCommande, item item) {
		
		Session session=HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Commande
		comm=(Commande)session.load(Commande.class,idCommande);
		lignecmd compo=new lignecmd();
		compo.setQuantite(item.getQuantite());
		compo.setPrix(item.getQuantite()*item.getArticle().getPrix());
		compo.setArticle(item.getArticle());
		comm.getLignecmds().add(compo);
		session.getTransaction().commit();
		HibernateUtil.getSessionFactory().close();
	}

	/*@Override
	public void mail(String nom, String prenom, String subject, String msg, String email) {
		
		 final String username = "Beblio.fstgi@gmail.com";
	 		
	        final String password = "beblio123@@" ; 
	        		

	        Properties prop = new Properties();
			prop.put("mail.smtp.host", "smtp.gmail.com");
	        prop.put("mail.smtp.port", "465");
	        prop.put("mail.smtp.auth", "true");
	        prop.put("mail.smtp.socketFactory.port", "465");
	        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
      
	        Session session = Session.getInstance(prop,
	                new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(username, password);
	                    }
	                });

	        try {

	            Message message = new MimeMessage(session);
	            message.setFrom(new InternetAddress("Beblio.fstgi@gmail.com"));
	            message.setRecipients(
	                    Message.RecipientType.TO,
	                    InternetAddress.parse(email)
	            );
	            message.setSubject("Testing Gmail SSL");
	            message.setText("Bibliotheque,"
	                    + "\n\n le livre reserver est prete");

	            Transport.send(message);

	            

	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }
	        System.out.println("bien envoyer");
		
	}
*/


	/*@Override
	public List<Article> getArticlesCategorieByNom(String nomCateg) {
		// TODO Auto-generated method stub
		return null;
	}*/

}
