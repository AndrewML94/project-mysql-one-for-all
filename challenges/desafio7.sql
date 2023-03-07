SELECT art.name_artist artista, alb.name_album album, COUNT(fol.artist) pessoas_seguidoras FROM artist art
INNER JOIN album alb
ON alb.artist = art.id_artist
LEFT JOIN following_artist fol
ON fol.artist = art.id_artist
GROUP BY art.name_artist, alb.name_album
ORDER BY pessoas_seguidoras DESC, artista, album;