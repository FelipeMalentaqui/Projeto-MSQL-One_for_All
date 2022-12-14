SELECT 
	c.cancoes AS cancao,
    COUNT(h.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico_de_reproducoes h
ON c.cancoes_id = h.cancoes_id
GROUP BY h.cancoes_id
ORDER BY `reproducoes` DESC, c.cancoes
LIMIT 2;