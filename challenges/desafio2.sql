SELECT 
    (SELECT COUNT(id_music) FROM music) cancoes,
    (SELECT COUNT(id_artist) FROM artist) artistas,
    (SELECT COUNT(id_album) FROM album) albuns;