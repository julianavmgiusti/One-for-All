SELECT
	user_name AS usuario,
	COUNT(rep.user_id) AS qtde_musicas_ouvidas,
	ROUND(SUM((son.song_seconds))/60, 2) AS total_minutos
FROM
	SpotifyClone.Users AS users
	INNER JOIN
		SpotifyClone.Reproduction_History AS rep on users.user_id = rep.user_id
	INNER JOIN
		SpotifyClone.Songs AS son on rep.song_id = son.song_id
GROUP BY user_name;
