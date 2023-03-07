SELECT COUNT(h.user) musicas_no_historico FROM history h
INNER JOIN user u
ON u.id_user = h.user
WHERE u.user_name = 'Barbara Liskov';