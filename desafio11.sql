CREATE VIEW cancoes_premium AS
SELECT S.title_song AS `nome`,
COUNT(H.user_id) AS `reproducoes`
FROM SpotifyClone.SONGS AS S
INNER JOIN SpotifyClone.`HISTORY` AS H
ON S.song_id = H.song_id
INNER JOIN SpotifyClone.USERS AS U
ON H.user_id = U.user_id
WHERE U.plan_id IN ('2', '3')
GROUP BY S.title_song
ORDER BY nome ASC;
