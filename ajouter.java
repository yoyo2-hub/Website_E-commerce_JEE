package eCommerce.tn;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Ajouter")
public class Ajouter extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
 
        // 1. Récupérer le panier (List de noms d'articles)
        List<String> monPanier = (List<String>) session.getAttribute("shopping");
        if (monPanier == null) {
            monPanier = new ArrayList<>();
            session.setAttribute("shopping", monPanier);
        }

        // 2. Récupérer la somme totale actuelle
        Integer sommeTotale = (Integer) session.getAttribute("sommeFinale");
        if (sommeTotale == null) {
            sommeTotale = 0;
        }

        // 3. Récupérer les données du formulaire
        String nomArticle = request.getParameter("article");
        String prixStr = request.getParameter("prixArticle");

        if (nomArticle != null && prixStr != null) {
            int prixArticle = Integer.parseInt(prixStr);
            
            // Ajouter au panier
            monPanier.add(nomArticle + " (" + prixArticle + " DT)");
            
            // Mettre à jour la somme
            sommeTotale += prixArticle;
            session.setAttribute("sommeFinale", sommeTotale);
        }

     // Récupère l'URL de la page précédente
        String referer = request.getHeader("Referer");

        if (referer != null) {
            // Redirige l'utilisateur là d'où il vient
            response.sendRedirect(referer);
        } else {
            // Si pour une raison ou une autre on n'a pas le referer, 
            // on met une page par défaut
            response.sendRedirect("page1.html");
        }
    }
}
