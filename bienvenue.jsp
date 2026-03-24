<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% session.invalidate();%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenue - Glow Cosmetics</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #fff0f3; 
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .container {
            text-align: center;
            max-width: 800px;
            width: 90%;
        }

        h1 {
            color: #d63384;
            font-size: 2.5em;
            margin-bottom: 10px;
        }

        p.subtitle {
            color: #666;
            margin-bottom: 50px;
            font-size: 1.2em;
        }

        .cards-wrapper {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        .choice-card {
            background: white;
            padding: 40px 30px;
            border-radius: 20px;
            width: 250px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.05);
            transition: transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
            text-decoration: none;
            color: #333;
            border: 2px solid transparent;
        }

        .choice-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(214, 51, 132, 0.15);
            border-color: #ffd6e6;
        }

        .icon { font-size: 50px; margin-bottom: 20px; display: block; }

        h2 { font-size: 1.5em; margin: 10px 0; }

        .btn-text {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            border-radius: 25px;
            font-weight: bold;
            transition: background 0.3s;
        }
        .client .icon { color: color: #555; }
        .client .btn-text { background-color: #f0f0f0; color: #555;}
        .client:hover .btn-text { background-color:  #555; color: white; }
        .admin .icon { color: #555; }
        .admin .btn-text { background-color: #f0f0f0; color: #555; }
        .admin:hover .btn-text { background-color: #555; color: white; }

    </style>
</head>
<body>

    <div class="container">
        <h1>Glow Cosmetics</h1>
        <p class="subtitle">Bienvenue sur votre boutique préférée. Qui êtes-vous ?</p>

        <div class="cards-wrapper">
            <a href="catalogue1.jsp" class="choice-card client">
                <span class="icon">🛍️</span>
                <h2>Client</h2>
                <p>Je veux découvrir les produits et passer commande.</p>
                <span class="btn-text">Entrer dans la boutique &rarr;</span>
            </a>
            <a href="admin.jsp" class="choice-card admin">
                <span class="icon">⚙️</span>
                <h2>Administrateur</h2>
                <p>Je veux gérer les commandes et voir les ventes.</p>
                <span class="btn-text">Gérer le site &rarr;</span>
            </a>

        </div>
    </div>

</body>
</html>
