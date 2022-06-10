SELECT
    son.song_name AS 'cancao',
    COUNT(user.user_id) AS 'reproducoes'
FROM
    SpotifyClone.Songs AS son
    INNER JOIN SpotifyClone.Reproduction_History AS rep ON rep.song_id = son.song_id
    INNER JOIN SpotifyClone.Users AS user ON user.user_id = rep.user_id
GROUP BY
    son.song_name
ORDER BY
    COUNT(user.user_id) DESC,
    son.song_name ASC
LIMIT
    2;
