SELECT u.user_name pessoa_usuaria, MIN(IF(h.reproduction_date >= '2021-01-01 00:00:00', 'Ativa', 'Inativa')) status_pessoa_usuaria FROM user u
INNER JOIN history h
ON h.user = u.id_user
GROUP BY u.user_name
ORDER BY u.user_name;