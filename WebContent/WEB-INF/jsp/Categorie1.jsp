<%@page import="Entity.Categorie"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Catégorie</title>
</head>
<body>
  <div>
  <form:form action="save" modelAttribute="categorie" method="post" enctype="multipart/form-data">
  <table>
  <tr>
  <td>ID CATEGORIE</td>
  <td><form:input type="hidden" path="idCategorie"  /></td>
  <td><form:errors path="idCategorie" /></td>
  </tr>
  <tr>
  <td>Nom CATEGORIE</td>
  <td><form:input  path="NomCategorie"  /></td>
  <td><form:errors path="NomCategorie" /></td>
  </tr>
   <tr>
  <td>description CATEGORIE</td>
  <td><form:textarea  path="description"  /></td>
  <td><form:errors path="description" /></td>
  </tr>
   <tr>
   <td>photo CATEGORIE</td>
  <td><input type="file" name="file"/></td>
  <td></td>
  </tr>
  <tr>
   <td></td>
  <td><input type="submit" value="save"/></td>
  <td></td>
  </tr>
  </table> 
  </form:form>
  </div>
 	
 	<div>
  <table>
  <tr>
  <th>ID </th><th>Nom </th><th>description </th><th>photo </th><th>Supprimer</th><th>Modifier</th>
  </tr>
  <c:forEach items="${lescategories}" var="categorie">
  <tr>
  <td>${categorie.getIdCategorie()}</td>
  <td>${categorie.getNomCategorie()}</td>
  <td>${categorie.description}</td>
  <td><img src="getPhotoC?idCategorie=${categorie.getIdCategorie()}"></td>
  <td><a href="DeleteCat?idCategorie=${categorie.getIdCategorie()}">Delete</a></td>
  <td><a href="updateCat?idCategorie=${categorie.getIdCategorie()}">update</a></td>
  </tr>
  </c:forEach>
  </table>
  </div>
</body>
</html>