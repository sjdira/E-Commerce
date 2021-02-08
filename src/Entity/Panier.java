package Entity;

import java.util.HashMap;
import java.util.Map;

public class Panier {

	private Map<Long, Article> items = new HashMap<>();
	
	public void AddArticleToPanier(Article a , Integer Quantite)
	{
		a.setQuantite(Quantite);
		items.put(a.getIdArticle(),a);
	}
}
