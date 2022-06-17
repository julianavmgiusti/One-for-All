SELECT
    songs.song_name AS nome_musica,
    CASE
        WHEN songs.song_name LIKE '%Streets' THEN REPLACE(songs.song_name, 'Streets', 'Code Review')
        WHEN songs.song_name LIKE '%Her Own' THEN REPLACE(songs.song_name, 'Her Own', 'Trybe')
        WHEN songs.song_name LIKE '%Inner Fire' THEN REPLACE(songs.song_name, 'Inner Fire', 'Project')
        WHEN songs.song_name LIKE '%Silly' THEN REPLACE(songs.song_name, 'Silly', 'Nice')
        WHEN songs.song_name LIKE '%Circus' THEN REPLACE(songs.song_name, 'Circus', 'Pull Request')
    END AS novo_nome
FROM SpotifyClone.Songs AS songs 
WHERE song_id IN(3, 15, 6, 4, 18)
ORDER BY nome_musica; 
