package com.boutique;

public class Article {
    private String id;
    private String nom;
    private double prix;

    public Article(String id, String nom, double prix) {
        this.id = id;
        this.nom = nom;
        this.prix = prix;
    }

    public String getId() { return id; }
    public String getNom() { return nom; }
    public double getPrix() { return prix; }
}
