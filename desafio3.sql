CREATE VIEW historico_reproducao_usuarios AS
  SELECT U.name_user AS `usuario`,
  S.title_song AS `nome`
  FROM SpotifyClone.USERS AS U
  INNER JOIN SpotifyClone.`HISTORY` AS H
  ON U.user_id = H.user_id
  INNER JOIN SpotifyClone.SONGS AS S
  ON H.song_id = S.song_id
  ORDER BY `usuario`, `nome`;
  