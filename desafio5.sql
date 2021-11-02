CREATE VIEW top_2_hits_do_momento AS
SELECT S.title_song AS `cancao`,
COUNT(H.user_id) AS `reproducoes`
FROM SpotifyClone.SONGS AS S
INNER JOIN SpotifyClone.HISTORY AS H
ON S.song_id = H.song_id
GROUP BY H.song_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
