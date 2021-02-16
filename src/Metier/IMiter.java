package Metier;

import java.util.Date;
import java.util.List;


import Entity.Article;
import Entity.Categorie;
import Entity.Client;
import Entity.Commande;
import Entity.item;
import Entity.lignecmd;
public interface IMiter {

	public Long AddCategorie(Categorie c);
	public void UpdateCategorie(Categorie c);
	public void DeleteCategorie(Long idC);
	public Categorie GetCategorie(Long idC);
	public List<Categorie> ListCategories();
	
	public Long AddArticle(Article a , Long idCat);
	public void UpdateArticle(Article a);
	public void DeleteArticle(Long idP);
	public Article GetArticle(Long idA);
	public List<Article> ListArticles();
	public List<Article> getArticlesMotCle(String mot);
	public List<Article> getArticlesCategorie(Long idC);
	public List<Article> ListNVArticles();
	
	public void AddClient(Client c);
	public Client getClient(Long idClient);
	public List<Client> getClients();
	//public Commande AddCommande(Panie p , Client c);
	public Client verifyClientExist(String email,String Paswword);
	public Long addCommande(Date date, Client client);
	public void addProduitToCommande(Long idCommande, item item);
	public List<Article> filtreCategorieByPrix(Long idCategorie, Double prix);
	
	public List<Commande> listCommandes();
	public List<lignecmd> getlignecmd(Long idCommande);
}
