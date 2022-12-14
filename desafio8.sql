SELECT 
	a.artista AS artista,
    al.album AS album
FROM SpotifyClone.artista a
INNER JOIN SpotifyClone.album al
ON a.artista_id = al.artista_id
WHERE a.artista = 'Elis Regina';