USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(95))
BEGIN
  SELECT ART.name_artist AS `artista`,
  ALB.title_name AS `album`
  FROM SpotifyClone.ARTISTS AS ART
  INNER JOIN SpotifyClone.ALBUMS AS ALB
  ON ART.artist_id = ALB.artist_id
  WHERE ART.name_artist = artist_name 
  ORDER BY `album`;
END $$

DELIMITER ;