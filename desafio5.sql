SELECT
    songs.song_name AS 'cancao',
    COUNT(user.user_id) AS 'reproducoes'
FROM
    SpotifyClone.Songs AS songs
    INNER JOIN SpotifyClone.Reproduction_History AS rep ON rep.song_id = songs.song_id
    INNER JOIN SpotifyClone.Users AS user ON user.user_id = rep.user_id
GROUP BY
    songs.song_name
ORDER BY
    COUNT(user.user_id) DESC,
    songs.song_name ASC
LIMIT
    2;
