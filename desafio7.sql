CREATE VIEW perfil_artistas AS
SELECT ART.name_artist AS `artista`,
ALB.title_name AS `album`,
COUNT(FOL.user_id) AS `seguidores`
FROM SpotifyClone.ARTISTS AS ART
INNER JOIN SpotifyClone.ALBUMS AS ALB
ON ART.artist_id = ALB.artist_id
INNER JOIN SpotifyClone.FOLLOWING_ARTISTS AS FOL
ON ART.artist_id = FOL.artist_id
GROUP BY ALB.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;
