<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.boutique.Commande" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administration - Tableau de bord</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 40px;
            color: #333;
        }

        .admin-container {
            max-width: 1000px;
            margin: 0 auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            border-top: 5px solid #343a40; 
        }

        h1 {
            font-weight: 600;
            color: #343a40;
            margin-top: 0;
            margin-bottom: 30px;
            border-bottom: 2px solid #eee;
            padding-bottom: 15px;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: white;
        }

        th {
            background-color: #343a40; 
            color: white;
            text-align: left;
            padding: 15px;
            font-size: 0.95em;
            font-weight: 600;
        }

        td {
            padding: 15px;
            border-bottom: 1px solid #eee;
            color: #555;
            vertical-align: middle;
        }

        tr:hover {
            background-color: #f8f9fa; 
         }

        a.details-link {
            background-color: #17a2b8;
            color: white;
            text-decoration: none;
            padding: 6px 12px;
            border-radius: 4px;
            font-size: 0.85em;
            font-weight: bold;
            transition: background 0.3s;
          }
        a.details-link:hover {
            background-color: #138496;
        }

        .button-container {
            margin-top: 40px;
            padding-top: 20px;
            border-top: 1px solid #eee;
            display: flex;
            justify-content: flex-end;
            gap: 15px;
        }
        .btn {
            padding: 10px 20px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            border: none;
        }

        .btn-quit {
            background-color: #6c757d;
            color: white;
        }
        .btn-quit:hover { background-color: #5a6268; }

        .btn-archive {
            background-color: #dc3545;
            color: white;
        }
        .btn-archive:hover { background-color: #c82333; }
        .empty-msg {
            text-align: center;
            padding: 40px;
            color: #888;
            background-color: #f9f9f9;
            border-radius: 5px;
            border: 1px dashed #ccc;
        }
    </style>
	</head>
	<body>

    <div class="admin-container">
        <h1>Tableau de Bord Admin</h1>

        <%
            ArrayList<Commande> liste = (ArrayList<Commande>) application.getAttribute("toutesLesCommandes");

            if (liste != null && !liste.isEmpty()) {
        %>

        <table>
            <thead>
                <tr>
                    <th style="width: 5%;">#</th>
                    <th style="width: 20%;">Nom</th>
                    <th style="width: 20%;">Prénom</th>
                    <th style="width: 15%;">Tél</th>
                    <th style="width: 30%;">Adresse</th>
                    <th style="width: 10%;">Action</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    for (int i = 0; i < liste.size(); i++) {
                        Commande c = liste.get(i);
                %>
                <tr>
                    <td><strong><%= i + 1 %></strong></td>
                    <td><%= c.getNom() %></td>
                    <td><%= c.getPrenom() %></td>
                    <td><%= c.getTelephone() %></td>
                    <td><%= c.getAdresse() %></td>
                    <td>
                        <a href="detailsCommande.jsp?index=<%= i %>" class="details-link">Voir</a>
                    </td>
                </tr>
                <% 
                    } 
                %>
            </tbody>
        </table>

        <div class="button-container">
            <a href="Archiver" class="btn btn-archive" onclick="return confirm('⚠️ ATTENTION : \nVoulez-vous vraiment supprimer tout l\'historique des commandes ?');">
                Archiver
            </a>

            <a href="bienvenue.jsp" class="btn btn-quit">
                Déconnexion
            </a>
        </div>

        <%
            } else {
        %>
            <div class="empty-msg">
                <h3>Aucune commande en cours</h3>
                <p>La liste est vide</p>
            </div>
            
            <div class="button-container">
                 <a href="bienvenue.jsp" class="btn btn-quit">Quitter</a>
            </div>
        <%
            }
        %>
    </div>

</body>
</html>
