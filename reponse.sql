-- Questions pratiques

-- 1/
-- SELECT * FROM  clients WHERE date_inscription BETWEEN '2025-01-01' AND '2025-12-31';

-- 2/
-- SELECT nom, email FROM clients WHERE nom LIKE '%e%';

-- 3/
-- SELECT * FROM clients WHERE email IS NULL;

-- 4/
-- SELECT * FROM  clients WHERE client_id BETWEEN 5 AND 10;

-- 5/
-- SELECT * FROM clients WHERE nom NOT LIKE 'M%';

-- 6/
-- SELECT * FROM clients WHERE date_inscription < '2023-01-01';

-- 7/
-- SELECT * FROM clients WHERE email in ('alice.dupont@example.com', 'claire.leroy@yahoo.com');

-- 8/
-- SELECT * FROM clients WHERE date_inscription BETWEEN '2024-01-04' AND '2024-03-01';

-- 9/
-- SELECT * FROM clients WHERE nom NOT LIKE '%Dupont%';


-----------------------
-- Questions Jointures

-- 1/

/*
SELECT c.nom, co.commande_id FROM clients c
LEFT JOIN commandes co ON c.client_id = co.client_id;

-- 2/

SELECT co.commande_id, c.nom, co.statut FROM commandes co
LEFT JOIN clients c
ON co.client_id = c.client_id;

-- 3/
SELECT c.nom AS Client, p.nom as Produit FROM clients c
INNER JOIN commandes co
ON c.client_id = co.client_id
INNER JOIN lignes_commandes lc
ON co.commande_id = lc.commande_id
INNER JOIN produits p
ON lc.produit_id = p.produit_id
WHERE c.nom LIKE '%Alice%';

-- 4/ 
SELECT c.nom FROM clients c 
LEFT JOIN commandes co 
ON c.client_id = co.client_id
WHERE co.commande_id IS NULL;

-- 5/

SELECT co.commande_id, p.nom, lc.quantite FROM
commandes co    
LEFT JOIN lignes_commandes lc 
ON co.commande_id = lc.commande_id
LEFT JOIN produits p 
ON lc.produit_id = p.produit_id;


-- 6/
SELECT c.nom AS Client, p.nom as Produit FROM clients c
INNER JOIN commandes co
ON c.client_id = co.client_id
INNER JOIN lignes_commandes lc
ON co.commande_id = lc.commande_id
INNER JOIN produits p
ON lc.produit_id = p.produit_id;


-- 7/

SELECT * FROM commandes;

-- 8/

SELECT c.nom as Cient, p.nom FROM clients c  
CROSS JOIN produits p;

*/


-----------------------------
-- Partie Agrégation 

-- 1/
SELECT COUNT(*) as Nb_produit FROM produits;

-- 2/ 
SELECT categorie, ROUND(AVG(prix),2) FROM produits
GROUP BY categorie;

-- 3/
SELECT commande_id, quantite*prix_unitaire as Montant_Total
FROM lignes_commandes ;

-- 4/
SELECT client_id, Count(commande_id) as Nb_commande FROM commandes
GROUP BY client_id
ORDER BY Nb_commande DESC
LIMIT 1
;

-- 5/
SELECT famille, SUM(stock) as Stocks_disponibles FROM produits
GROUP BY famille ;

-- 6/
SELECT categorie, STDDEV(prix) AS Dispersion_prix
FROM produits
GROUP BY categorie;

-- 7 
SELECT c.nom, SUM(lc.quantite * lc.prix_unitaire) as Montant_Total_Vente
FROM clients c 
LEFT JOIN commandes co      
ON c.client_id = co.client_id
LEFT JOIN lignes_commandes lc 
ON co.commande_id = lc.commande_id
GROUP BY c.nom;

-- 8/

SELECT commande_id, EXTRACT(YEAR FROM date_commande)  as Annee  , COUNT(commande_id)
FROM commandes 
GROUP BY commande_id
HAVING EXTRACT(YEAR FROM date_commande)  = '2025'
;


-- 9/

select p.categorie, MIN(p.prix), MAX(p.prix), AVG(p.prix) FROM
lignes_commandes lc
INNER JOIN  produits p 
ON lc.produit_id = p.produit_id 
GROUP BY p.categorie;

-- 10/
SELECT nom, stock FROM produits
WHERE stock%5=0;
