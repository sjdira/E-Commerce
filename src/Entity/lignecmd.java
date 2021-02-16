package Entity;

public class lignecmd {

	private Long idlignecmd ;
	private Article article;
	private int quantite;
	private double prix;
	public lignecmd() {
		super();
	}
	public Long getIdlignecmd() {
		return idlignecmd;
	}
	public void setIdlignecmd(Long idlignecmd) {
		this.idlignecmd = idlignecmd;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
}
