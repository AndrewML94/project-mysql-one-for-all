SELECT alb.name_album album, COUNT(fav.song) favoritadas FROM album alb
INNER JOIN music mu
ON mu.album = alb.id_album
INNER JOIN favorite fav
ON fav.song = mu.id_music
GROUP BY alb.name_album
ORDER BY favoritadas DESC, album
LIMIT 3;