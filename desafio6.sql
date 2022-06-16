SELECT
MIN(s.plan_price) AS faturamento_minimo,
MAX(s.plan_price) AS faturamento_maximo,
  ROUND(AVG(s.plan_price), 2) AS faturamento_medio,
  SUM(s.plan_price) AS faturamento_total
FROM SpotifyClone.Subscriptions AS s
INNER JOIN SpotifyClone.Users AS user
ON s.plan_id = user.plan_id;
