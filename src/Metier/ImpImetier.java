package Metier;

import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import DAO.IDAO;
import Entity.Article;
import Entity.Categorie;
import Entity.Client;
import Entity.Commande;
import Entity.item;
import Entity.lignecmd;

@Repository
public class ImpImetier implements IMiter {
	
	@Autowired
	private IDAO idao;
	
	
	public void setIdao(IDAO idao) {
		this.idao = idao;
	}

	@Override
	public Long AddCategorie(Categorie c) {
		// TODO Auto-generated method stub
		return idao.AddCategorie(c);
	}

	@Override
	public void UpdateCategorie(Categorie c) {
		idao.UpdateCategorie(c);

	}

	@Override
	public void DeleteCategorie(Long idC) {
		// TODO Auto-generated method stub
		idao.DeleteCategorie(idC);

	}

	@Override
	public Categorie GetCategorie(Long idC) {
		// TODO Auto-generated method stub
		return idao.GetCategorie(idC);
	}

	@Override
	public List<Categorie> ListCategories() {
		// TODO Auto-generated method stub
		return idao.ListCategories();
	}

	@Override
	public Long AddArticle(Article a, Long idCat) {
		// TODO Auto-generated method stub
		return idao.AddArticle(a, idCat);
	}

	@Override
	public void UpdateArticle(Article a) {
		
		idao.UpdateArticle(a);

	}

	@Override
	public void DeleteArticle(Long idP) {
		// TODO Auto-generated method stub
		idao.DeleteArticle(idP);
	}

	@Override
	public Article GetArticle(Long idA) {
		// TODO Auto-generated method stub
		return idao.GetArticle(idA);
	}

	@Override
	public List<Article> ListArticles() {
		
		return idao.ListArticles();
		
	}

	@Override
	public List<Article> getArticlesMotCle(String mot) {
		// TODO Auto-generated method stub
		return idao.getArticlesMotCle(mot);
	}

	@Override
	public List<Article> getArticlesCategorie(Long idC) {
		// TODO Auto-generated method stub
		return idao.getArticlesCategorie(idC);
	}

	@Override
	public void AddClient(Client c) {
		// TODO Auto-generated method stub
		idao.AddClient(c);

	}

	/*@Override
	public Commande AddCommande(Panie p, Client c) {
		// TODO Auto-generated method stub
		return idao.AddCommande(p, c);
	}*/

	@Override
	public List<Article> ListNVArticles() {
		return idao.ListNVArticles();
	}

	@Override
	public Client verifyClientExist(String email, String Paswword) {
		
		return idao.verifyClientExist(email, Paswword);
	}

	@Override
	public Long addCommande(Date date, Client client) {
		return idao.addCommande(date, client);
	}

	@Override
	public Client getClient(Long idClient) {
		return idao.getClient(idClient);
	}

	@Override
	public List<Client> getClients() {
		return idao.getClients();
	}

	@Override
	public List<Article> filtreCategorieByPrix(Long idCategorie, Double prix) {
		return idao.filtreCategorieByPrix(idCategorie, prix);
	}

	@Override
	public void addProduitToCommande(Long idCommande, item item) {
		idao.addProduitToCommande(idCommande, item);
		
	}

	@Override
	public List<Commande> listCommandes() {
		return idao.listCommandes();
	}

	@Override
	public List<lignecmd> getlignecmd(Long idCommande) {
		return idao.getlignecmd(idCommande);
	}

}
