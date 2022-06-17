SELECT
    s.song_name AS 'nome',
    COUNT(rep.user_id) AS 'reproducoes'
FROM
    SpotifyClone.Songs AS s
    INNER JOIN SpotifyClone.Reproduction_History AS rep ON s.song_id = rep.song_id
    INNER JOIN SpotifyClone.Users AS user ON rep.user_id = user.user_id
    INNER JOIN SpotifyClone.Subscriptions AS subsc ON user.plan_id = subsc.plan_id
    AND (
        subsc.plan_name = 'gratuito'
        OR subsc.plan_name = 'pessoal'
    )
GROUP BY
    s.song_name
ORDER BY
    s.song_name ASC;
