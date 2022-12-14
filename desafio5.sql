SELECT 
	c.cancoes AS cancao,
    COUNT(h.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes c
INNER JOIN historico_de_reproducoes h
ON c.cancoes_id = h.cancoes_id
WHERE h.cancoes_id <> 9
GROUP BY h.cancoes_id
ORDER BY h.cancoes_id DESC, c.cancoes
LIMIT 2;