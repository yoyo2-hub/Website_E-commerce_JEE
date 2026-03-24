package ex1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class Saisie
 */
@WebServlet("/Saisie")
public class Saisie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Saisie() {
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
		// 1. RÉCUPÉRER d'abord les données envoyées par le formulaire
	    String s1 = request.getParameter("entier_1");
	    String s2 = request.getParameter("entier_2");
	    if (s1 != null && s2 != null) {
	        // 2. Transformer les textes en nombres
	        int n1 = Integer.parseInt(s1);
	        int n2 = Integer.parseInt(s2);
	        int resultat = n1 + n2;
	     // 3. SEULEMENT MAINTENANT, on les enregistre
	        HttpSession session = request.getSession();
	        session.setAttribute("entier_1", n1);
	        session.setAttribute("entier_2", n2);
	        session.setAttribute("somme", resultat);
	    }
	 // 4. Redirection
	    response.sendRedirect("Affichage.jsp");
	}}
		
