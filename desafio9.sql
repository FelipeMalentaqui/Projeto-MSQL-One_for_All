SELECT
	h.cancoes_id AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes h
INNER JOIN SpotifyClone.usuario u
ON h.usuario_id = u.usuario_id
WHERE h.cancoes_id = 3;