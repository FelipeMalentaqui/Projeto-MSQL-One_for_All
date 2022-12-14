SELECT
	MIN(p.valor_plano) AS faturamento_minimo,
    MAX(p.valor_plano) AS faturamento_maximo,
    ROUND(SUM(p.valor_plano / 10),2) AS faturamento_medio,
    ROUND(SUM(p.valor_plano),2) AS faturamento_total
FROM SpotifyClone.plano p
INNER JOIN SpotifyClone.usuario u
ON u.plano_id = p.plano_id;