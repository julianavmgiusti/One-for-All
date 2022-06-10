SELECT
    users.user_name AS 'usuario',
    IF(MAX(YEAR(rep.reproduction_date)) = 2021,
 'Usuário ativo',
   'Usuário inativo') AS 'condicao_usuario'
FROM
    SpotifyClone.Users AS users
    INNER JOIN SpotifyClone.Reproduction_History AS rep ON rep.user_id = users.user_id
GROUP BY
    users.user_name
ORDER BY
    users.user_name;
