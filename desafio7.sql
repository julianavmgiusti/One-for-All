SELECT
	art.artist_name AS artista,
    al.album_name AS album,
    COUNT(followers.artist_id) AS seguidores
FROM SpotifyClone.Following AS followers
INNER JOIN SpotifyClone.Artists AS art ON followers.artist_id = art.artist_id
INNER JOIN SpotifyClone.Albums AS al ON art.artist_id = al.artist_id
GROUP BY artista, album, followers.artist_id
ORDER BY seguidores DESC, artista, album;
