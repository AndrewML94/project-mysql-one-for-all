SELECT art.name_artist artista, alb.name_album album FROM artist art
INNER JOIN album alb
ON alb.artist = art.id_artist
WHERE art.name_artist = 'Elis Regina';