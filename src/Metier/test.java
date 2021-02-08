package Metier;

import java.util.List;


import org.hibernate.Session;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import DAO.ImpIDAO;
import Entity.Article;
import Entity.Categorie;
import Entity.Client;
import util.HibernateUtil;

public class test {

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/*Resource r=new ClassPathResource("applicationContext.xml");  
	    BeanFactory factory=new XmlBeanFactory(r);  
	    ImpImetier im = (ImpImetier) factory.getBean("idm"); 
		Categorie c = new Categorie();
		c.setNomCategorie("robes2");
		c.setDescription("description2");
		Long id = im.AddCategorie(c);
		System.out.println(id);*/
		//
	    //im.DeleteCategorie(new Long(5));
		//System.out.println(id);
	    /*List<Categorie> list = im.ListCategories();
	    for(Categorie c : list)
	    {
	    	System.out.println(c.getIdCategorie());
	    }*/
		
		Resource r=new ClassPathResource("applicationContext.xml");  
	    BeanFactory factory=new XmlBeanFactory(r);  
	    ImpImetier im = (ImpImetier) factory.getBean("idm"); 
	    
	    /*Article a = new Article();
	    a.setQuantite(100);
	    a.setDesignation("des");
	    Long id =im.AddArticle(a,new Long(1));
	    System.out.println(id);*/
	    //System.out.println(im.ListNVArticles().size());
	   /*List<Article> list = im.ListNVArticles();
	   for(Article a:list)
	   {
		   System.out.println(a.getIdArticle());
	   }*/
	    
	   Client c = im.verifyClientExist("salma@gmail.com", "salma123");
	   System.out.println(c.getNomClient());
}

}
