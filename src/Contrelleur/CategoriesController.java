package Contrelleur;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.sun.org.apache.xpath.internal.operations.Mod;

import Entity.Article;
import Entity.Categorie;
import Entity.Client;
import Entity.Commande;
import Entity.Panier;
import Entity.item;
import Metier.IMiter;
import sun.awt.image.BufferedImageDevice;

@Controller
public class CategoriesController {

	@Autowired
	private IMiter im;

	
	@RequestMapping(value="/chercherArticleByNom",method = RequestMethod.GET)
	public String chercherArticleByNom(Model model,String Mot)
	{
		model.addAttribute("article",new Article());
		model.addAttribute("lesArticles",im.getArticlesMotCle(Mot));
		return "Article";
	}
	
	
	@RequestMapping("/filtre")
	public String filtre(Model model,Double myRange,Long idCategorie)
	{	
		model.addAttribute("Articles",im.filtreCategorieByPrix(idCategorie, myRange));
		return "robes";
	}
	
	@RequestMapping(value="/robes",method = RequestMethod.GET)
	public String robes(Model model,Long idCategorie,ArrayList<Article> list)
	{
		list = (ArrayList<Article>) im.getArticlesCategorie(idCategorie);
		model.addAttribute("Articles",list);
		return "robes";
	}
	@RequestMapping("/client")
	public String client(Model model)
	{
		model.addAttribute("Clients",im.getClients());
		return "client";
	}
	

	@RequestMapping("/order-complete")
	public String order(HttpSession session)
	{
		Client c = (Client)session.getAttribute("Client");
		List<item> cart = (List<item>)session.getAttribute("cart");
		//System.out.println(im.addCommande(new Date(),c));
		Long idcmd = im.addCommande(new Date(),c);
		for(item it : cart)
		{
			im.addProduitToCommande(idcmd, it);
		}
		session.removeAttribute("cart");
		return "order-complete";
	}
	
	@RequestMapping("/")
	public String index2(Model model)
	{
		model.addAttribute("ListNVArticle", im.ListNVArticles());
		return "index";
	}

	@RequestMapping(value="/verifyClient",method = RequestMethod.POST)
	public String VarifyClient(HttpServletRequest request ,Model model,HttpSession session)
	{
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			if(email !=null && password !=null)
			{
				if(im.verifyClientExist(email, password)!=null)
				{
					session.setAttribute("Client",im.verifyClientExist(email, password));
					model.addAttribute("client",im.verifyClientExist(email, password));
					return "checkout";
				}
			}
			else
			{
				return "TestUser";
			}
			
			return "TestUser";
	}
	
	@RequestMapping("/TestUser")
	public String TestUser1(HttpSession session,Model model)
	{
		if(session.getAttribute("Client")!=null)
		{
			model.addAttribute("client", (Client)session.getAttribute("Client"));
			return "checkout";
		}
		return "TestUser";
	}
	@RequestMapping("/dashboard")
	public String dashboard(Model model)
	{
		
		model.addAttribute("commandes",im.listCommandes());
		return "dashboard";
	}
	
	@RequestMapping("/cart")
	public String cart()
	{
		return "cart";
	}


	
	@RequestMapping("/Addcart")
	public  String Addcart(Long article , int quantity,Model model,HttpSession session)
	{
		if(session.getAttribute("cart")==null)
		{
			List<item> cart = new ArrayList<item>();
			cart.add(new item(im.GetArticle(article), quantity));
			Article a = im.GetArticle(article);
			a.setQuantite(a.getQuantite()-quantity);
			im.UpdateArticle(a);
			session.setAttribute("cart",cart);
		}
		else
		{
			List<item> cart = (List<item>)session.getAttribute("cart");
			int index = ArticleExist(article, session);
			if(index == -1)
			{
				cart.add(new item(im.GetArticle(article), quantity));
				Article a = im.GetArticle(article);
				a.setQuantite(a.getQuantite()-quantity);
				im.UpdateArticle(a);
			}
			else
			{
				quantity = cart.get(index).getQuantite()+quantity;
				cart.get(index).setQuantite(quantity);
			}
			
			session.setAttribute("cart",cart);
		}
		return "cart";
	}
	
	@RequestMapping("/saveClient")
	public String saveClient(Client c ,Model model,BindingResult res ,HttpSession session)
	{
		if(session.getAttribute("Client")==null)
		{
			if(res.hasErrors())
			{
				return "checkout";
			}	
			if(c !=null)
			{
				im.AddClient(c);
				session.setAttribute("Client",c);
			}
		}
		
		return "checkout";
	}
	
	private int ArticleExist(Long id,HttpSession session)
	{
		List<item> cart = (List<item>)session.getAttribute("cart");
		for(int i=0 ; i<cart.size();i++)
		{
			if(cart.get(i).getArticle().getIdArticle()==id)
			{
				return i;
			}
		}
		return -1;
	}
	
	@RequestMapping("/deleteFromCart")
	public String deleteFromCart(Model model,Long idArticle,HttpSession session)
	{
		List<item> cart = (List<item>) session.getAttribute("cart");
		int index = ArticleExist(idArticle, session);
		Article a = im.GetArticle(idArticle);
		a.setQuantite(a.getQuantite()+cart.get(index).getQuantite());
		im.UpdateArticle(a);
		cart.remove(index);
		session.setAttribute("cart",cart);
		return "cart";
	}
	
	
	
	
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String detail(HttpServletRequest request,Model model)
	{
		String login = request.getParameter("login");
		String password= request.getParameter("pass");
		if(login.equals("admin")&&password.equals("admin123"))
		{
			model.addAttribute("commandes",im.listCommandes());
			return "dashboard";
		}
		return "login";
	}
	
	@RequestMapping(value="/Article-detail",method = RequestMethod.GET)
	public String detail(Model model,Long idArticle)
	{
		model.addAttribute("Article", im.GetArticle(idArticle));
		return "product-detail";
	}
	
	
	
	@RequestMapping("/index")
	public String test(Model model)
	{
		model.addAttribute("ListNVArticle", im.ListNVArticles());
		return "index";
	}
	
	@RequestMapping("/shop")
	public String shop(Model model)
	{
		model.addAttribute("categories",im.ListCategories());
		return "shop";
	}
	
	
	
	@RequestMapping(value="/T-sheart",method = RequestMethod.GET)
	public String sheart(Model model,Long idCategorie)
	{
		model.addAttribute("Articles",im.getArticlesCategorie(idCategorie));
		return "T-sheart";
	}
	
	@RequestMapping(value="/sweat-shirt",method = RequestMethod.GET)
	public String sweatshirt(Model model,Long idCategorie)
	{
		model.addAttribute("Articles",im.getArticlesCategorie(idCategorie));
		return "sweat-shirt";
	}
	
	@RequestMapping(value="/veste&montaux",method = RequestMethod.GET)
	public String vestemontaux(Model model,Long idCategorie)
	{
		model.addAttribute("Articles",im.getArticlesCategorie(idCategorie));
		return "veste&montaux";
	}
	@RequestMapping("/about")
	public String about()
	{
		
		return "about";
	}
	
	@RequestMapping("/contact")
	public String contact(HttpServletRequest request)
	{
		
		return "contact";
	}
	
	@RequestMapping("/login")
	public String login()
	{
		
		return "login";
	}
	@RequestMapping("/categorie")
	public String index(Model model)
	{
		model.addAttribute("categorie",new Categorie());
		model.addAttribute("lescategories",im.ListCategories());
		return "categorie";
	}
	
	
	
	
	@RequestMapping("/checkout")
	public String check(Model model)
	{
		model.addAttribute("client",new Client());
		return "checkout";
	}
	
	
	
	@RequestMapping("/save")
	public String saveCat(Categorie cat,Model model,BindingResult res,MultipartFile file) throws IOException
	{
		if(res.hasErrors())
		{
			return "categorie";
		}
		if(file !=null)
		{   BufferedImage b = ImageIO.read(file.getInputStream());
			cat.setPhoto(file.getBytes());
		}
		if(cat.getIdCategorie()!=null)
		{
			if(file.isEmpty())
			{
				Categorie c = im.GetCategorie(cat.getIdCategorie());
				cat.setPhoto(c.getPhoto());
			}
			im.UpdateCategorie(cat);
		}
		else
		{
			if(!cat.getNomCategorie().isEmpty() && !cat.getDescription().isEmpty() && cat.getPhoto().length!=0)
			{
				im.AddCategorie(cat);
			}
		}
		model.addAttribute("categorie",new Categorie());
		model.addAttribute("lescategories",im.ListCategories());
		return "categorie";
	}
	
	
	@RequestMapping(value = "/getPhotoC",produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] getPhotoC(Long idCategorie) throws IOException
	{
		Categorie c = im.GetCategorie(idCategorie);
		if(c.getPhoto()==null)
		{
			return new byte[0];
		}
		else
			return IOUtils.toByteArray(new ByteArrayInputStream(c.getPhoto()));
		
	}
	
	@RequestMapping(value = "/DeleteCat" ,method = RequestMethod.GET)
	public String DeleteCat(Long idCategorie,Model model)
	{
		im.DeleteCategorie(idCategorie);
		model.addAttribute("categorie",new Categorie());
		model.addAttribute("lescategories",im.ListCategories());
		return "categorie";
	}
	
	@RequestMapping(value = "/updateCat")
	public String updateCat(Long idCategorie,Model model)
	{
		Categorie c = im.GetCategorie(idCategorie);
		model.addAttribute("categorie",c);
		model.addAttribute("lescategories",im.ListCategories());
		return "categorie";	
	}
	//////////////////////////// partie Article
	
	
	@RequestMapping("/Article")
	public String index1(Model model)
	{
		model.addAttribute("article",new Article());
		model.addAttribute("categories",im.ListCategories());
		model.addAttribute("lesArticles",im.ListArticles());
		return "Article";
	}
	
	@RequestMapping("/saveArticle")
	public String saveArticle(Article article,Model model,BindingResult res , MultipartFile file) throws IOException
	{
		if(res.hasErrors())
		{
			return "Article";
		}
		if(file !=null)
		{   BufferedImage b = ImageIO.read(file.getInputStream());
		    article.setPhoto(file.getBytes());
		}
		if(article.getIdArticle()!=null)
		{
			if(file.isEmpty())
			{
				Article a = im.GetArticle(article.getIdArticle());
				article.setPhoto(a.getPhoto());
			}
			im.UpdateArticle(article);
		}
		else
		{
			if(article.getDesignation() !=null && article.getPrix()!= null && article.getQuantite() !=null && 
			   article.getTva() !=null	&& 	article.getDescription() !=null && article.getPhoto() !=null 
			   && article.getSolde() !=null && article.getDispo() !=null 
			   && article.getTaille() !=null && article.getCouleur() !=null ) 
			{
				im.AddArticle(article,article.getCategorie().getIdCategorie());
			}
			
		}
		model.addAttribute("article",new Article());
		model.addAttribute("categories",im.ListCategories());
		model.addAttribute("lesArticles",im.ListArticles());
		return "Article";
	}
	@RequestMapping(value = "/getPhotoA",produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] getPhotoA(Long idArticle) throws IOException
	{
		//Categorie c = im.GetCategorie(idCategorie);
		Article c = im.GetArticle(idArticle);
		if(c.getPhoto()==null)
		{
			return new byte[0];
		}
		else
			return IOUtils.toByteArray(new ByteArrayInputStream(c.getPhoto()));
		
	}
	
	@RequestMapping(value = "/DeleteArticle" ,method = RequestMethod.GET)
	public String DeleteArt(Long idArticle,Model model)
	{
		im.DeleteArticle(idArticle);
		model.addAttribute("article",new Article());
		model.addAttribute("categories",im.ListCategories());
		model.addAttribute("lesArticles",im.ListArticles());
		return "Article";
	}
	
	@RequestMapping(value = "/updateArticle")
	public String updateArt(Long idArticle,Model model)
	{
		//Categorie c = im.GetCategorie(idCategorie);
		Article c = im.GetArticle(idArticle);
		model.addAttribute("article",c);
		model.addAttribute("categories",im.ListCategories());
		model.addAttribute("lesArticles",im.ListArticles());
		return "Article";	
	}
}
