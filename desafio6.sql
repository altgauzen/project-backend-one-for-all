CREATE VIEW faturamento_atual AS
SELECT MIN(P.price_plan) AS `faturamento_minimo`,
MAX(P.price_plan) AS `faturamento_maximo`,
ROUND(AVG(P.price_plan), 2) AS `faturamento_medio`,
SUM(P.price_plan) AS `faturamento_total`
FROM SpotifyClone.PLANS AS P
INNER JOIN SpotifyClone.USERS AS U
ON U.plan_id = P.plan_id;
