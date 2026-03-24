package com.boutique;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class Commander
 */
public class Commander extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Commander() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String tel = request.getParameter("tel");
        String adresse = request.getParameter("adresse");

        HttpSession session = request.getSession();
        ArrayList<Article> panier = (ArrayList<Article>) session.getAttribute("panier");

        if (panier != null && !panier.isEmpty()) {
            Commande cmd = new Commande(nom, prenom, tel, adresse, new ArrayList<>(panier));

            ServletContext context = getServletContext();
            ArrayList<Commande> allOrders = (ArrayList<Commande>) context.getAttribute("toutesLesCommandes");
            
            if (allOrders == null) {
                allOrders = new ArrayList<>();
            }
            allOrders.add(cmd);
            context.setAttribute("toutesLesCommandes", allOrders);

            session.removeAttribute("panier");
            
            response.sendRedirect("confirmation.jsp");
        } else {
            response.sendRedirect("catalogue1.jsp");
        }
    }
}
