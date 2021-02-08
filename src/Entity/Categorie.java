package Entity;

import java.util.HashSet;
import java.util.Set;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class Categorie {

	private Long idCategorie;
	
	@NotEmpty
	private String NomCategorie;
	
	@NotEmpty
	private String description;
	@NotEmpty
	private byte[] photo;
	private Set articles = new HashSet();
	public Categorie() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Long getIdCategorie() {
		return idCategorie;
	}
	public void setIdCategorie(Long idCategorie) {
		this.idCategorie = idCategorie;
	}
	public String getNomCategorie() {
		return NomCategorie;
	}
	public void setNomCategorie(String nomCategorie) {
		NomCategorie = nomCategorie;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	public Set getArticles() {
		return articles;
	}
	public void setArticles(Set articles) {
		this.articles = articles;
	}
	
	
	
}
