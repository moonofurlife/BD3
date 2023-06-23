SELECT name, length 
FROM music_tracks 
ORDER BY length DESC
LIMIT 1; 

SELECT name  
FROM music_tracks 
WHERE length > 3.5;

SELECT name 
FROM music_collections  
WHERE release_year BETWEEN 2018 and 2020;

SELECT name 
FROM music_artists 
WHERE name NOT LIKE '% %';

SELECT name 
FROM music_tracks 
WHERE name LIKE '%my%' OR name LIKE '%мой%';

SELECT musical_genres.name AS genre, COUNT(artists_genres.artist_id) AS artist_count
FROM musical_genres
LEFT JOIN artists_genres ON musical_genres.genre_id = artists_genres.genre_id
GROUP BY musical_genres.name;

SELECT COUNT(*) AS track_count
FROM music_tracks
INNER JOIN albums ON music_tracks.album_id = albums.album_id
WHERE albums.release_year BETWEEN 2019 AND 2020;


SELECT albums.name AS name,  avg(music_tracks.length) AS length 
FROM music_tracks 
LEFT JOIN albums ON albums.album_id  = music_tracks.album_id 
GROUP BY albums.name;

SELECT distinct music_artists.name AS artist
FROM music_artists
LEFT JOIN artists_albums ON music_artists.artist_id = artists_albums.artist_id
LEFT JOIN albums ON artists_albums.album_id = albums.album_id
WHERE albums.release_year <> 2020 OR albums.release_year IS NULL;


SELECT music_collections.name AS collection
FROM music_collections
INNER JOIN tracks_collections ON music_collections.id = tracks_collections.collection_id
INNER JOIN music_tracks ON tracks_collections.track_id = music_tracks.id
INNER JOIN albums ON music_tracks.album_id = albums.album_id
INNER JOIN artists_albums ON albums.album_id = artists_albums.album_id
INNER JOIN music_artists ON artists_albums.artist_id = music_artists.artist_id
WHERE music_artists.name = 'Три дня дождя';


SELECT a.name AS Название_альбома
FROM albums a
JOIN artists_albums aa ON a.album_id = aa.album_id
JOIN artists_genres ag ON aa.artist_id = ag.artist_id
GROUP BY a.album_id, a.name
HAVING COUNT(DISTINCT ag.genre_id) > 1;


SELECT t.name AS Наименование_трека
FROM music_tracks t
LEFT JOIN tracks_collections tc ON t.id = tc.track_id
WHERE tc.collection_id IS NULL;


SELECT DISTINCT a.name AS Исполнитель
FROM music_tracks t
JOIN artists_albums aa ON t.album_id = aa.album_id
JOIN music_artists a ON aa.artist_id = a.artist_id
WHERE t.length = (
    SELECT MIN(length)
    FROM music_tracks
);

SELECT a.name AS Название_альбома
FROM albums a
JOIN (
    SELECT album_id, COUNT(*) AS Количество_треков
    FROM music_tracks
    GROUP BY album_id
) AS t ON a.album_id = t.album_id
WHERE t.Количество_треков = (
    SELECT MIN(Количество_треков)
    FROM (
        SELECT album_id, COUNT(*) AS Количество_треков
        FROM music_tracks
        GROUP BY album_id
    ) AS sub
);