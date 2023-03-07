SELECT art.name_artist artista,
	CASE
		WHEN COUNT(fav.song) >= 5 THEN 'A'
    WHEN COUNT(fav.song) >= 3 THEN 'B'
		WHEN COUNT(fav.song) >= 1 THEN 'C'
		ELSE '-'
	END ranking
FROM artist art
INNER JOIN album alb
ON alb.artist = art.id_artist
INNER JOIN music mu
ON mu.album = alb.id_album
LEFT JOIN favorite fav
ON fav.song = mu.id_music
GROUP BY art.name_artist
ORDER BY COUNT(fav.song) DESC, artista;