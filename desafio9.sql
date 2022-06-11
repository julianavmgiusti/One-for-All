SELECT
	COUNT(rep.song_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.Users AS user
INNER JOIN SpotifyClone.Reproduction_History AS rep ON user.user_id = rep.user_id
WHERE user.user_name LIKE "Bill";
