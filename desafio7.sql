SELECT
	a.artista AS artista,
    al.album AS album,
    COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artista a
INNER JOIN SpotifyClone.album al
ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artista s
ON s.artista_id = al.artista_id
GROUP BY a.artista, al.album
ORDER BY seguidores DESC, artista, album;