<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Boutique Cosmétique - Page 1</title>
    <style>
      
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #fff0f3; margin: 0; padding: 0; color: #333; }
		header {
		    background: white;
		    padding: 15px 40px;
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    box-shadow: 0 2px 10px rgba(0,0,0,0.05);
		    position: sticky;
		    top: 0;
		    z-index: 100;
		}
		
		.logo { font-size: 24px; font-weight: bold; color: #d63384; text-decoration: none; }
		
		.header-actions {
		    display: flex;
		    align-items: center;
		    gap: 15px; 
		}
		
		.cart-btn {
		    text-decoration: none;
		    color: #555;
		    font-weight: 600;
		    font-size: 0.9em;
		    padding: 8px 15px;
		    border: 1px solid #eee;
		    border-radius: 20px;
		    transition: all 0.3s;
		    display: flex; align-items: center; gap: 5px;
		}
		.cart-btn:hover { background-color: #fff0f3; 
		    color: #d63384;
		    border-color: #d63384;}
		.logout-btn {
		    text-decoration: none;
		    color: #555;
		    font-weight: 600;
		    font-size: 0.9em;
		    padding: 8px 15px;
		    border: 1px solid #eee;
		    border-radius: 20px;
		    transition: all 0.3s;
		    display: flex; align-items: center; gap: 5px;
		}
		
		.logout-btn:hover {
		    background-color: #fff0f3; 
		    color: #d63384;
		    border-color: #d63384;
		}

        .container { max-width: 1200px; margin: 40px auto; padding: 0 20px; }
        h1 { text-align: center; color: #444; margin-bottom: 40px; }

        .grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 30px; }

        .card { background: white; border-radius: 15px; overflow: hidden; box-shadow: 0 5px 15px rgba(0,0,0,0.05); transition: transform 0.3s; text-align: center; display: flex; flex-direction: column; }
        .card:hover { transform: translateY(-5px); box-shadow: 0 10px 20px rgba(214, 51, 132, 0.2); }
        .card img {
            width: 100%;
            height: 250px;          
            object-fit: contain;   
            padding: 15px;        
            background-color: white;
            border-bottom: 1px solid #f0f0f0;
            box-sizing: border-box;
        }

        .card-body { padding: 20px; flex-grow: 1; display: flex; flex-direction: column; justify-content: space-between; }
        .card-title { font-size: 1.2em; color: #333; margin: 10px 0; }
        .card-desc { font-size: 0.9em; color: #777; margin-bottom: 15px; min-height: 40px; }
        .price { font-size: 1.3em; font-weight: bold; color: #d63384; margin-bottom: 15px; }

        .btn-add { display: inline-block; background-color: #333; color: white; padding: 12px 20px; text-decoration: none; border-radius: 5px; font-weight: bold; transition: background 0.3s; }
        .btn-add:hover { background-color: #d63384; }
        .pagination { text-align: center; margin-top: 50px; margin-bottom: 50px; }
        .nav-btn { background-color: white; border: 2px solid #d63384; color: #d63384; padding: 10px 30px; text-decoration: none; border-radius: 25px; font-weight: bold; transition: all 0.3s; }
        .nav-btn:hover { background-color: #d63384; color: white; }
    </style>
</head>
<body>

	  <header>
	    <a href="catalogue1.jsp" class="logo">Glow Cosmetics</a>
	    
	    <div class="header-actions">
	        <a href="afficherPanier.jsp" class="cart-btn">🛒 Voir Panier</a>

	        <a href="bienvenue.jsp" class="logout-btn" title="Se déconnecter">
	           Déconnexion
	        </a>
	    </div>
	</header>

    <div class="container">
        <h1>Maquillages</h1>

        <div class="grid">
            <div class="card">
                <img src="images/p1.jpg" alt="Rouge à lèvres">
                <div class="card-body">
                    <h3 class="card-title">Rouge à lèvres Mat</h3>
                    <p class="card-desc">Couleur intense longue tenue.</p>
                    <div class="price">22.00 DT</div>
                    <a href="Ajouter?id=1&nom=RougeMat&prix=22.00" class="btn-add">Ajouter au panier</a>
                </div>
            </div>

            <div class="card">
                <img src="images/p2.jpg" alt="Mascara">
                <div class="card-body">
                    <h3 class="card-title">Mascara Volume</h3>
                    <p class="card-desc">Cils noirs et volumineux.</p>
                    <div class="price">14.00 DT</div>
                    <a href="Ajouter?id=2&nom=Mascara&prix=14.00" class="btn-add">Ajouter au panier</a>
                </div>
            </div>
            
            <div class="card">
                <img src="images/p3.jpg" alt="Fond de teint">
                <div class="card-body">
                    <h3 class="card-title">Fond de Teint Fluide</h3>
                    <p class="card-desc">Couvrance parfaite et naturelle.</p>
                    <div class="price">35.00 DT</div>
                    <a href="Ajouter?id=3&nom=FondDeTeint&prix=35.00" class="btn-add">Ajouter au panier</a>
                </div>
            </div>

            <div class="card">
                <img src="images/p4.jpg" alt="Palette">
                <div class="card-body">
                    <h3 class="card-title">Palette Nude</h3>
                    <p class="card-desc">12 teintes chaudes pour les yeux.</p>
                    <div class="price">45.00 DT</div>
                    <a href="Ajouter?id=4&nom=PaletteNude&prix=45.00" class="btn-add">Ajouter au panier</a>
                </div>
            </div>

            <div class="card">
                <img src="images/p5.jpg" alt="Eyeliner">
                <div class="card-body">
                    <h3 class="card-title">Eyeliner Précision</h3>
                    <p class="card-desc">Trait fin et noir intense.</p>
                    <div class="price">12.50 DT</div>
                    <a href="Ajouter?id=5&nom=Eyeliner&prix=12.50" class="btn-add">Ajouter au panier</a>
                </div>
            </div>

            <div class="card">
                <img src="images/p6.jpg" alt="Blush">
                <div class="card-body">
                    <h3 class="card-title">Blush Pêche</h3>
                    <p class="card-desc">Effet bonne mine immédiat.</p>
                    <div class="price">18.00 DT</div>
                    <a href="Ajouter?id=6&nom=Blush&prix=18.00" class="btn-add">Ajouter au panier</a>
                </div>
            </div>
        </div>

        <div class="pagination">
            <a href="catalogue2.jsp" class="nav-btn">Page Suivante &rarr;</a>
        </div>
    </div>

</body>
</html>
