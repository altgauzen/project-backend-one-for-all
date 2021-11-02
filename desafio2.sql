CREATE VIEW estatisticas_musicais AS
  SELECT
    (SELECT COUNT(song_id) 
    FROM SpotifyClone.SONGS) AS cancoes,
    (SELECT COUNT(artist_id)
    FROM SpotifyClone.ARTISTS) AS artistas,
    (SELECT COUNT(album_id)
    FROM SpotifyClone.ALBUMS) AS albuns;
