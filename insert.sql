
INSERT INTO music_artists 
VALUES (1, 'Три дня дождя'),
(2, 'Kadebostany'), 
(3, 'Fang The Great'), 
(4, 'EVILDXER'),
(5, 'Miyagi & Эндшпиль'),
(6, 'Imagine Dragons'),
(7, 'GAYAZOV$ BROTHER$'), 
(8, 'Andy Panda'),
(9, 'twenty one pilots');

INSERT INTO  musical_genres 
VALUES (1, 'hip hop'),
(2, 'rock'),
(3, 'pop'),
(4, 'rap'),
(5, 'R&B');

INSERT INTO albums 
VALUES (1,'Когда ты откроешь глаза',2021),
(2,'Отпускай',2022),
(3,'Hajime, Pt. 1',2016),
(4,'Enemy',2021),
(5,'Evolve',2017),
(6, 'DRAMA',2020),
(7,'Another sunrise',2022);


INSERT INTO  music_tracks 
VALUES (1,'I Don’t Know Why',180,5),
(2,'Believer',180,5),
(3,'Dancing In The Dark',210,5),
(4,'Половина моя',220,3),
(5,'Без обид',240,3),
(6,'Отпускай',180,2),
(7,'Перезаряжай',180,1),
(8,'my love',210,3),
(9,'I Wasnt Made for Love',240,6),
(10,'Another sunrise',240,7),
(11, 'my own',240,7),
(12,'own my',210,3),
(13,'my',220,2),
(14,'oh my god',210,1),
(15,'myself',220,2),
(16,'by myself',180,4),
(17,'bemy self',190,5),
(18,'myself by', 210, 6),
(19,'by myself by', 300,5),
(20,'beemy', 210,2),
(21,'premyne',220,3);


INSERT INTO  music_collections 
VALUES (1,'Best2021',2021 ),
(2,'party',2022),
(3,'exclusive',2022),
(4,'hits of the week',2021),
(5,'hit2018', 2018),
(6,'hit2020',2020);


INSERT INTO  tracks_collections 
VALUES (1,1),(2,1),(3,2),(4,4),(5,2),(6,4),(7,3);

INSERT INTO  artists_genres 
VALUES (1,2),(2,3),(2,1),(2,6),(2,9),(3,7),(4,8),(5,4);

INSERT INTO  artists_albums 
VALUES (1,1),(1,2),(5,3),(6,4),(6,5),(2,7),(3,7);