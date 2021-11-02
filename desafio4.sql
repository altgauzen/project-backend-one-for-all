CREATE VIEW top_3_artistas AS
SELECT ART.name_artist AS `artista`,
COUNT(FOL.user_id) AS `seguidores`
FROM SpotifyClone.ARTISTS AS ART
INNER JOIN SpotifyClone.FOLLOWING_ARTISTS AS FOL
ON ART.artist_id = FOL.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
