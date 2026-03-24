package com.boutique;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class Ajouter
 */
public class Ajouter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajouter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String nom = request.getParameter("nom");
        double prix = 0.0;
        if(request.getParameter("prix") != null) {
             prix = Double.parseDouble(request.getParameter("prix"));
        }

        Article article = new Article(id, nom, prix);

        HttpSession session = request.getSession();
        ArrayList<Article> panier = (ArrayList<Article>) session.getAttribute("panier");
        
        if (panier == null) {
            panier = new ArrayList<Article>();
        }

        panier.add(article);
        session.setAttribute("panier", panier);

        String referer = request.getHeader("referer");
        response.sendRedirect(referer != null ? referer : "catalogue1.jsp");
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
