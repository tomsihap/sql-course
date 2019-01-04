# TD : Réaliser le MCD d'une entreprise

TrackMyCar est une startup qui fournira des services de sécurité aux voitures, tels que le suivi 24h/24h, le blocage à distance, la récupération des voitures volées, et le déverrouillage de la porte à distance aux clients qui ont oublié la clé à l’intérieur de la voiture.

La compagnie a besoin de votre service et votre expérience pour la conception d’une base de données qui enregistre toutes les informations sur ses clients, les voitures, l’état du système installé (porte ouverte ou fermée, alarme active ou inactive, position global, etc.).

TrackMyCar enregistre l’information des voitures de ses clients.

Pour chaque voiture, ils notent la marque, le modèle, la couleur, la plaque, le propriétaire (un client), la date d’immatriculation et le code du système installé (une voiture a un seule système et un système est associé à une seule voiture ; il est toutefois conseillé de repertorier les systèmes dans une table à part).

Pour chaque client, TrackMyCar stocke le nom, le prénom, l’adresse et le numéro de téléphone. 

Quand le système central envoie une requête sur l’état de la voiture, le système du véhicule retourne les coordonnes GPS (latitude, longitude), l’état de l’alarme (active ou inactive) et l’état des portes (déverrouillées ou verrouillées).

Une fois que le système central reçoit l’information, celui-ci inscrit la date, l’heure et les données reçues.

L’entreprise a un groupe de partenaires qui installent son système dans les voitures. Pour chaque partenaire, TrackMyCar enregistre son nom, son adresse, son numéro de téléphone et le code des systèmes installés .

Pour chaque systeme installé par un partenaire, le test d’installation doit être enregistré.


## Exercice:  Définir les tables et les clés étrangères
Vous allez créer les tables sous Workbench puis utiliser l'outil de EER Diagram pour gérer les relations entre les tables.

---
---
# TD: Réaliser des requêtes SQL pour avoir des informations métier

Armazon est une entreprise qui vend tout type de produits (livres, gadgets, électroménager, ordinateurs, etc).

Elle a développé une grande base de données où elle enregistre tous ses produits en vente, son stock, ses clients et d’autres classes d’information nécessaires pour gérer son business dans sa totalité.

Ci-dessous, on fournit une partie de l’énorme schéma de la base de données:

- **Client**(*code*, nom, prenom, **codeAdresse**, telephone) 
- **Categorie**(*code*, nom)
- **Produit**(*code*, nom, description, **codeCategorie**, prix) 
- **Stock**(*id*, date, **codeProduit**, unites) 
- **Commande**(*code*, date, **codeClient**, **codeProduit**, quantite)

1. La table Client contient l’information personnel du client. 
2. La relation Categorie liste toutes les catégories des produits offertes par Armazon. 
3. Ces produits sont définis dans la table Produit et les quantités disponibles dans la table Stock. 
4. Finalement, les commandes faites à Armazon sont inscrites dans la table Commande.
5. Les attributs en italique sont les *clés primaires*, et les attributs en gras sont les **clés étrangères**.

## Exercices
Rédigez les requêtes SQL pour les demandes suivantes :
1. Nombre d’unités disponibles du/des produit/produits "Ventilateur"
2. Nombre de commandes de livres effectués par "Marie Pascal" (N.B. Livre est une categorie).
3. Les clients (code) qui ont acheté sur Armazon pendent le mois de novembre 2018. Pour chaque client, donner la quantité totale des produits achetés. *Optionnel : le resultat doit être ordonné selon le client qui a acheté la quantité la plus grande des produits.*
4. Noms des produits qui ne sont pas achetés.
5. Les produits dont le prix est superieur aux prix moyen des produits de la même categorie.