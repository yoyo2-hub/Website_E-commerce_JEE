package eCommerce.tn;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/Afficher")
public class Afficher extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        
        List<String> monPanier = null;
        Integer somme = 0;

        if (session != null) {
            monPanier = (List<String>) session.getAttribute("shopping");
            somme = (Integer) session.getAttribute("sommeFinale");
            if (somme == null) somme = 0;
        }

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        out.println("<html><body><h1>🛒 Votre Panier</h1>");

        if (monPanier == null || monPanier.isEmpty()) {
            out.println("<p>Votre panier est vide.</p>");
        } else {
            out.println("<ul>");
            for (String item : monPanier) {
                out.println("<li>" + item + "</li>");
            }
            out.println("</ul>");
            out.println("<hr><h3>Somme Totale = " + somme + " DT</h3>");
        }

        out.println("<br><a href='page1.html'>Retour au menu</a>");
        out.println("</body></html>");
    }
}
