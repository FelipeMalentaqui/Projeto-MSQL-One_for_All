SELECT
	u.usuario AS usuario,
	COUNT(h.cancoes_id) AS qt_de_musicas_ouvidas,
	ROUND(SUM(c.duracao_segundos / 60) ,2)  AS total_minutos
FROM SpotifyClone.usuario  u
INNER JOIN SpotifyClone.historico_de_reproducoes h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.cancoes c
ON c.cancoes_id = h.cancoes_id
GROUP BY usuario
ORDER BY usuario;