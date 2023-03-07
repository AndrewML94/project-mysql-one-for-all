SELECT u.user_name pessoa_usuaria, COUNT(h.music) musicas_ouvidas, SUM(ROUND(m.duration / 60, 2)) total_minutos FROM user u
INNER JOIN history h
ON h.user = u.id_user
INNER JOIN music m
ON m.id_music = h.music
GROUP BY u.user_name
ORDER BY u.user_name;