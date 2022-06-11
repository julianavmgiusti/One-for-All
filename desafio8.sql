SELECT
	art.artist_name AS artista,
    al.album_name AS album
FROM SpotifyClone.Artists AS art
INNER JOIN SpotifyClone.Albums AS al ON art.artist_id = al.artist_id
WHERE art.artist_name LIKE "Walter Phoenix"; 
