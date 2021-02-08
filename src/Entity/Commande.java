package Entity;

import java.util.Date;
import java.util.List;

public class Commande {

	private Long idCommande;
	private Date dateCommande;
	private Client client ;
	private List<lignecmd> lignecmds;
	public Commande() {
		super();
	}
	public Long getIdCommande() {
		return idCommande;
	}
	public void setIdCommande(Long idCommande) {
		this.idCommande = idCommande;
	}
	public Date getDateCommande() {
		return dateCommande;
	}
	public void setDateCommande(Date dateCommande) {
		this.dateCommande = dateCommande;
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	public List<lignecmd> getLignecmds() {
		return lignecmds;
	}
	public void setLignecmds(List<lignecmd> lignecmds) {
		this.lignecmds = lignecmds;
	}
	
	
}
