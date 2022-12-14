SELECT 
	c.cancoes AS cancao,
    COUNT(h.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes c
INNER JOIN historico_de_reproducoes h
ON c.cancoes_id = h.cancoes_id
WHERE h.cancoes_id in (8, 10)
GROUP BY cancoes
ORDER BY cancoes;