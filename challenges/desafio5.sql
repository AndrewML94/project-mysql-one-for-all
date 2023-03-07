SELECT m.name_music cancao, COUNT(h.user) reproducoes FROM music m
INNER JOIN history h
ON h.music = m.id_music
GROUP BY m.name_music
ORDER BY reproducoes DESC, cancao
LIMIT 2;