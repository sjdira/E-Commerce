package Metier;

import java.util.List;


import Entity.Article;
import Entity.Categorie;
import Entity.Client;
import Entity.Commande;
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
	//public Commande AddCommande(Panie p , Client c);
}
