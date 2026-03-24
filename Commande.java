package com.boutique;

import java.util.ArrayList;

public class Commande {
    private String nom;
    private String prenom;
    private String telephone;
    private String adresse;
    private ArrayList<Article> articles;

    public Commande(String nom, String prenom, String telephone, String adresse, ArrayList<Article> articles) {
        this.nom = nom;
        this.prenom = prenom;
        this.telephone = telephone;
        this.adresse = adresse;
        this.articles = articles;
    }

    public String getNom() { return nom; }
    public String getPrenom() { return prenom; }
    public String getTelephone() { return telephone; }
    public String getAdresse() { return adresse; }
    public ArrayList<Article> getArticles() { return articles; }
}
