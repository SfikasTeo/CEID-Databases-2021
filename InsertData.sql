-- @block Bookmarked query
-- @group Ungrouped
-- @name Insert Data

INSERT INTO actor VALUES 
(1,'PENELOPE','GUINESS'),
(2,'NICK','WAHLBERG'),
(3,'ED','CHASE'),
(4,'JENNIFER','DAVIS'),
(5,'JOHNNY','LOLLOBRIGIDA'),
(6,'BETTE','NICHOLSON'),
(7,'GRACE','MOSTEL'),
(8,'MATTHEW','JOHANSSON'),
(9,'JOE','SWANK'),
(10,'CHRISTIAN','GABLE'),
(11,"MCCONAUGHEY","DAVIS"),
(12,"MCLIBE","DAVIS"),
(13,"MCDONNALD","DAVIS"),
(14,"JOHHNY","CARBONI");

INSERT INTO lang VALUES 
(1, 'English'),
(2, 'Italian'),
(3, 'French'),
(4, 'German');

INSERT INTO film VALUES
(1, 'SPEED SUIT', 'A Brilliant Display of a Frisbee And a Mad Scientist who must Succumb a Robot in Ancient China', 2006, 1, NULL, 124, 'PG-13', 'Commentaries,Behind the Scenes'),
(2, 'SAINTS BRIDE', 'A Fateful Tale of a Technical Writer And a Composer who must Pursue a Explorer in The Gulf of Mexico', 2006, 2, NULL, 125, 'G', 'Deleted Scenes'),
(3, 'LUCK OPUS', 'A Boring Display of a Moose And a Squirrel who must Outrace a Teacher in A Shark Tank', 2006, 1, NULL, 152, 'NC-17', 'Trailers,Commentaries,Behind the Scenes'),
(4, 'POSEIDON FOREVER', 'A Thoughtful Epistle of a Womanizer And a Monkey who must Vanquish a Dentist in A Monastery', 2006, 4, NULL, 159, 'PG-13', 'Commentaries'),
(5, 'RIDGEMONT SUBMARINE', 'A Unbelieveable Drama of a Waitress And a Composer who must Sink a Mad Cow in Ancient Japan', 2006, 1, 2, 46, 'PG-13', 'Commentaries,Deleted Scenes,Behind the Scenes'),
(6, 'UNFORGIVEN ZOOLANDER', 'A Taut Epistle of a Monkey And a Sumo Wrestler who must Vanquish a A Shark in A Baloon Factory', 2006, 1, NULL, 129, 'PG', 'Trailers,Commentaries,Behind the Scenes'),
(7, 'WAR NOTTING', 'A Boring Drama of a Teacher And a Sumo Wrestler who must Challenge a Secret Agent in The Canadian Rockies', 2006, 1, NULL, 80, 'G', 'Deleted Scenes,Behind the Scenes'),
(8, 'BAREFOOT MANCHURIAN', 'A Intrepid Story of a Cat And a Student who must Vanquish a Girl in An Abandoned Amusement Park', 2006, 1, 3, 129, 'G', 'Trailers,Commentaries'),
(9, 'SUGAR WONKA', 'A Touching Story of a Dentist And a Database Administrator who must Conquer a Astronaut in An Abandoned Amusement Park', 2006, 1, NULL, 114, 'PG', 'Trailers,Commentaries,Behind the Scenes'),
(10, 'TROUBLE DATE', 'A Lacklusture Panorama of a Forensic Psychologist And a Woman who must Kill a Explorer in Ancient Japan', 2006, 1, NULL, 61, 'PG', 'Trailers,Commentaries,Behind the Scenes');

INSERT INTO film_actor VALUES
(1, 1),
(6, 1),
(7, 2),
(3, 3),
(4, 4),
(7, 4),
(5, 5),
(4, 6),
(7, 7),
(4, 8),
(8, 9),
(10, 10);

INSERT INTO category VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Children'),
(4, 'Classics'),
(5, 'Comedy'),
(6, 'Documentary'),
(7, 'Drama'),
(8, 'Family'),
(9, 'Foreign'),
(10, 'Games'),
(11, 'Horror'),
(12, 'Music'),
(13, 'New'),
(14, 'Sci-Fi'),
(15, 'Sports'),
(16, 'Travel');

INSERT INTO film_category VALUES
(1, 6),
(2, 1),
(3, 2),
(4, 13),
(5, 1),
(6, 11),
(7, 8),
(8, 15),
(9, 1),
(10, 4);

INSERT INTO series VALUES
(1, 'Hot Flowers', 'Nobody Knows', 2013, 1, 1, NULL),
(2, 'Child of Gift', 'In a spooky and dark forest, my cousin reflected on the past.', 2010, 1, 1, 'G'),
(3, 'The depressive film', 'A depressed film maker tries to film a non depressive film, but fails.', 2014, 1, 2, 'PG'),
(4, 'A lamp that wanted to be more productive', 'A lamp that tries its best', 2010, 1, 1, 'G'),
(5, 'A notebook full of lies', 'A pretty girl finds a notebook that is full of lies and she believes them', 2013, 1, 3, 'NC-17'),
(6, 'A rich man tries to find love', 'A very rich man- Elon tries to find the true love that every girl wants him for his money', 2015, 2, 3, 'G'),
(7, 'The grey pencil that wanted to be colorful', 'A story about a pencil that wanted to be red and tries to find a way to', 2017, 1, 2, 'PG-13'),
(8, 'Oh my God, this is painful', 'A young man has supernatural powers and feds caught him and experiments on him', 2018, 1, 1, 'R'),
(9, 'A milk and a cereal box', 'A milk and a cereal box are best friends and wants their owner to consume them and when he starts doing so they understand that slowly kills them.', 2015, 1, 3, 'G'),
(10, 'When the sun got tired', 'The sun one day decided it no longer ants to wake up every morning at 6am so it quit its job to become a supernova', 2020, 1, 2, 'G'),
(11, 'Under the plane tree', 'A young girl moves from a big city to a strange village and finds that life and time have a different meaning.', 2008, 1, 1, 'PG-13');


INSERT INTO season (season_id, series_id, season_num, num_of_episodes, release_year) VALUES
(1, 1, 1, 4, 2010),
(2, 2, 1, 5, 2009),
(3, 3, 1, 3, 2021),
(4, 3, 2, 3, 2022);

INSERT INTO season_actor (actor_id, in_season) VALUES
(1, 2),
(3, 1),
(4, 4),
(7, 1),
(2, 3),
(8, 2),
(5, 1),
(9, 3),
(9, 4),
(10, 3),
(10, 4);

INSERT INTO series_category VALUES
(1, 8),
(2, 3),
(3, 14),
(4, 5),
(2, 9),
(1, 5),
(4, 12),
(4, 7);

INSERT INTO episode (episode_id, title, season_id, episode_num, episode_length, rating) VALUES
(1, 'Pilot', 1, 1, 45, 'G'),
(2, '2nd Episode', 1, 2, 46, 'G'),
(3, '3rd Episode', 1, 3, 47, 'G'),
(4, '4th Episode', 1, 4, 40,'G'),
(5, 'This episode', 2, 1, 41, 'PG'),
(6, 'That episode', 2, 2, 40, 'G'),
(7, 'This one episode', 2, 3, 43, 'R'),
(8, 'That one episode', 2, 4, 45, 'G'),
(9, 'That very one episode', 2, 5, 48, 'G'),
(10, 'The depression', 3, 1, 50, 'PG'),
(11, 'The breaking', 3, 2, 52, 'G'),
(12, 'The healing', 3, 3, 51, 'R'),
(13, 'Chapter 1', 4, 1, 42, 'G'),
(14, 'Chapter 2', 4, 2, 44, 'PG'),
(15, 'Chapter 3', 4, 3, 43, 'PG-13');

INSERT INTO country (country_id, country) VALUES
(1, 'France'),
(2, 'Germany'),
(3, 'Greece'),
(4, 'Italy'),
(5, 'Spain'),
(6, 'United Kingdom');

INSERT INTO city (city_id, city, country_id) VALUES
(1, 'Brest',    1),
(2, 'Le Mans', 1),
(3, 'Toulon',  1),
(4, 'Toulouse',1),
(5, 'Duisburg', 2),
(6, 'Erlangen', 2),
(7, 'Halle/Saale',2),
(8, 'Mannheim', 2),
(9, 'Saarbrcken', 2),
(10, 'Siegen', 2),
(11, 'Witten', 2),
(12, 'Athens', 2),
(13, 'Patras', 2),
(14, 'Alessandria', 4),
(15, 'Bergamo', 4),
(16, 'Brescia', 4),
(17, 'Brindisi', 4),
(18, 'Livorno', 4),
(19, 'Syrakusa', 4),
(20, 'Udine', 4),
(21, 'A Corua (La Corua)', 5),
(22, 'Donostia-San Sebastin', 5),
(23, 'Gijn', 5),
(24, 'Ourense (Orense)', 5),
(25, 'Santiago de Compostela', 5),
(26, 'Bradford', 6),
(27, 'Dundee', 6),
(28, 'London', 6),
(29, 'Southampton', 6),
(30, 'Southend-on-Sea', 6),
(31, 'Southport', 6),
(32, 'Stockport', 6),
(33, 'York', 6);

INSERT INTO address (address_id, address_name, district, city_id, postal_code, phone) VALUES
(1, '1346 Mysore Drive', 'Bretagne', 1, '61507', '516647474029'),
(2, '1740 Le Mans Loop',  'Pays de la Loire', 1, '22853', '168476538960'),
(3, '1386 Yangor Avenue', 'Provence-Alpes-Cte', 1, '80720', '449216226468'),
(4, '391 Callao Drive', 'Midi-Pyrnes', 2, '34021', '440512153169'),
(5, '442 Rae Bareli Place', 'Nordrhein-Westfalen', 2, '24321', '886636413768'),
(6, '319 Springs Loop', 'Baijeri', 3, '99552', '72524459905'),
(7, '1966 Tonghae Street', 'Anhalt Sachsen', 3, '36481', '567359279425'),
(8, '1074 Binzhou Manor', 'Baden-Wrttemberg', 4, '36490', '331132568928'),
(9, '430 Alessandria Loop',  'Saarland', 4, '47446', '669828224459'),
(10, '1792 Valle de la Pascua Place',  'Nordrhein-Westfalen', 4, '15540', '419419591240'),
(11, '68 Molodetno Manor',  'Nordrhein-Westfalen', 5, '4662', '146640639760'),
(12, '692 Joliet Street',  'Attika', 3, '83579', '448477190408'),
(13, '1101 Bucuresti Boulevard',  'West Greece', 4, '97661', '199514580428'),
(14, '127 Purnea (Purnia) Manor',  'Piemonte', 1, '79388', '911872220378'),
(15, '231 Kaliningrad Place',  'Lombardia', 6, '57833', '575081026569'),
(16, '1224 Huejutla de Reyes Boulevard',  'Lombardia', 6, '70923', '806016930576'),
(17, '1 Valle de Santiago Avenue', 'Apulia', 5, '86208', '465897838272'),
(18, '379 Lublin Parkway',  'Toscana', 3, '74568', '921960450089'),
(19, '1926 Gingoog Street',  'Sisilia', 2, '22824', '469738825391'),
(20, '1986 Sivas Place',  'Friuli-Venezia Giuli', 5, '95775', '182059202712'),
(21, '939 Probolinggo Loop',  'Galicia', 1, '4166', '680428310138'),
(22, '44 Najafabad Way',  'Baskimaa', 2, '61391', '96604821070'),
(23, '331 Bydgoszcz Parkway',  'Asturia', 4, '966', '537374465982'),
(24, '1469 Plock Lane',  'Galicia', 3, '95835', '622884741180'),
(25, '1764 Jalib al-Shuyukh Parkway',  'Galicia', 4, '77642', '84794532510'),
(26, '1557 Ktahya Boulevard',  'England', 6, '88002', '720998247660'),
(27, '4 Eymilou',  'Agios Andreas', 12, '26222', '6942075227');

INSERT INTO user VALUES
(1, 'ALEXANDER', 'FENNELL', 'ALEXANDER.FENNELL@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(2, 'CHRISTOPHER', 'GRECO', 'CHRISTOPHER.GRECO@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(3, 'MARC', 'OUTLAW', 'MARC.OUTLAW@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(4, 'DARREN', 'WINDHAM', 'DARREN.WINDHAM@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(5, 'BESSIE', 'MORRISON', 'BESSIE.MORRISON@sakilacustomer.org', 1, '2006-02-14 22:04:36','CUSTOMER',0),
(6, 'ADRIAN', 'CLARY', 'ADRIAN.CLARY@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',1),
(7, 'JULIE', 'SANCHEZ', 'JULIE.SANCHEZ@sakilacustomer.org',1, '2006-02-14 22:04:36','CUSTOMER',1),
(8, 'MAE', 'FLETCHER', 'MAE.FLETCHER@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',1),
(9, 'CHRIS', 'BROTHERS', 'CHRIS.BROTHERS@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(10, 'WESLEY', 'BULL', 'WESLEY.BULL@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(11, 'NELSON', 'CHRISTENSON', 'NELSON.CHRISTENSON@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(12, 'ANNE', 'POWELL', 'ANNE.POWELL@sakilacustomer.org', 1, '2006-02-14 22:04:36','CUSTOMER',0),
(13, 'APRIL', 'BURNS', 'APRIL.BURNS@sakilacustomer.org', 1, '2006-02-14 22:04:36','CUSTOMER',0),
(14, 'MATTIE', 'HOFFMAN', 'MATTIE.HOFFMAN@sakilacustomer.org', 1, '2006-02-14 22:04:36','CUSTOMER',0),
(15, 'CECIL', 'VINES', 'CECIL.VINES@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(16, 'MARSHALL', 'THORN', 'MARSHALL.THORN@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(17, 'SANDRA', 'MARTIN', 'SANDRA.MARTIN@sakilacustomer.org', 1, '2006-02-14 22:04:36','CUSTOMER',0),
(18, 'ARMANDO', 'GRUBER', 'ARMANDO.GRUBER@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(19, 'DAN', 'PAINE', 'DAN.PAINE@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(20, 'GILBERT', 'SLEDGE', 'GILBERT.SLEDGE@sakilacustomer.org', 1, '2006-02-14 22:04:37','CUSTOMER',0),
(21, 'MARKO', 'POLO', 'employee660@sakilaemployee.org', 1, '2020-03-27 15:00:00', 'EMPLOYEE',0),
(22, 'RACHEL', 'GREEN', 'employee661@sakilaemployee.org', 1, '2020-03-27 15:00:00', 'EMPLOYEE',0),
(23, 'FRANK', 'OMEGLE', 'employee662@sakilaemployee.org', 0, '2018-01-01 10:00:00', 'EMPLOYEE',0),
(24, 'OCTOBER', 'FEST', 'employee663@sakilaemployee.org', 1, '2019-05-12 12:00:00', 'EMPLOYEE',0),
(25, 'MELENE', 'RACOON', 'employee664@sakilaemployee.org', 1, '2019-01-22 15:00:00', 'EMPLOYEE',0),
(26, 'OCTAPUS', 'HOST', 'employee665@sakilaemployee.org', 1, '2019-11-25 15:00:00', 'EMPLOYEE',0),
(27, 'SAM', 'MC’ DONALDS', 'employee666@sakilaemployee.org', 0, '2020-12-05 15:00:00', 'EMPLOYEE',0),
(28, 'THODORIS', 'SFIKAS', 'up1072550@upnet.gr', 1, '2022-01-11 20:46:50', 'ADMIN',0),
(29, 'NTOUROU', 'STELLA', 'up1059651@upnet.gr', 1, '2022-01-11 20:48:10', 'ADMIN',0),
(30, 'PAPADOPOULOU', 'MARIA', 'up1072494@upnet.gr', 1, '2022-01-11 20:48:50', 'ADMIN',0),
(34, 'TeoCustomer', 'Sfikas', 'sfikas.teo@gmail.com', 1, '2001-09-5 00:08:00', 'CUSTOMER',0);

INSERT INTO admin VALUES
(28),
(29),
(30);

INSERT INTO employee VALUES
(21, 69420),
(22, 69420),
(23, 69420),
(24, 69420),
(25, 69420),
(26, 69420),
(27, 69420);

INSERT INTO customer VALUES
(1, 'FILMS AND SERIES', 1), 
(2, 'FILMS ONLY' , 2),
(3, 'SERIES ONLY', 3),
(4, 'SERIES ONLY', 4), 
(5, 'FILMS ONLY', 5),
(6, 'SERIES ONLY', 6), 
(7, 'FILMS AND SERIES', 7),
(8, 'FILMS AND SERIES', 8), 
(9, 'FILMS ONLY', 9),
(10,'FILMS ONLY', 10),
(11,'FILMS ONLY', 11),
(12,'FILMS AND SERIES', 12),
(13,'SERIES ONLY', 13),
(14,'FILMS ONLY', 14),
(15,'SERIES ONLY', 15),
(16,'SERIES ONLY', 16),
(17,'FILMS AND SERIES', 17),
(18,'FILMS AND SERIES', 18),
(19,'FILMS ONLY', 19),
(20,'FILMS AND SERIES', 20),
(34,'FILMS AND SERIES', 27);

INSERT INTO rental (rental_id, rental_date, film_id, episode_id, customer_id) VALUES
(1,     '2005-06-11 01:25:08', 10, NULL, 1),
(2,     '2005-06-15 03:42:27', NULL, 2, 17),
(3,     '2005-06-17 16:47:32', 3, NULL, 4),
(4,     '2005-06-20 16:10:19', 6, NULL, 8),
(5,     '2005-07-13 20:30:32', 3, NULL, 9),
(6,     '2005-07-15 08:41:38', 10, NULL, 8),
(7,     '2005-08-17 07:12:31', 3, NULL, 16),
(8,     '2005-08-22 15:52:57', 9, NULL, 5),
(9,     '2005-08-27 15:34:01', 8, NULL, 9),
(10,    '2005-08-31 12:34:12', 6, NULL, 12),
(NULL,  '2005-9-1 03:42:27', NULL, 7, 17),
(NULL,  '2005-9-2 03:42:27', NULL, 1, 13),
(NULL,  '2005-9-3 03:42:27', NULL, 1, 5),
(NULL,  '2005-9-4 03:42:27', NULL, 3, 9),
(NULL,  '2005-9-5 03:42:27', NULL, 8, 20),
(NULL,  '2005-9-6 03:42:27', NULL, 3, 8),
(NULL,  '2005-9-7 03:42:27', NULL, 11, 13),
(NULL,  '2005-9-8 03:42:27', NULL, 8, 6),
(NULL,  '2005-9-9 03:42:27', NULL, 8, 4),
(NULL,  '2005-9-10 03:42:27', NULL, 8, 1),
(NULL,  '2005-9-11 03:42:27', NULL, 13, 20),
(NULL,  '2005-9-12 03:42:27', NULL, 12, 18),
(NULL,  '2005-9-13 03:42:27', NULL, 12, 13),
(NULL,  '2005-9-14 03:42:27', NULL, 12, 12),
(NULL,  '2005-9-15 03:42:27', NULL, 15, 11),
(NULL,  '2005-9-16 03:42:27', NULL, 15, 11),
(NULL,  '2005-9-17 03:42:27', NULL, 15, 11),
(NULL,  '2005-9-18 03:42:27', NULL, 15, 10),
(NULL,  '2005-9-19 03:42:27', NULL, 15, 8),
(NULL,  '2005-9-19 03:42:30', 8, NULL, 8);

INSERT INTO payment (payment_id, customer_id, rental_id, amount, payment_date) VALUES
(NULL, 2, 1, 0.4,'2005-06-11 01:25:08'),
(NULL, 2, 2, 0.4,'2005-06-15 03:42:27'),
(NULL, 2, 3, 0.4,'2005-06-17 16:47:32'),
(NULL, 2, 4, 0.4,'2005-06-20 16:10:19'),
(NULL, 3, 5, 0.2,'2005-07-13 20:30:32'),
(NULL, 3, 6, 0.2,'2005-07-15 08:41:38'),
(NULL, 6, 7, 0.2,'2005-08-17 07:12:31'),
(NULL, 6, 8, 0.2,'2005-08-22 15:52:57'),
(NULL, 6, 9, 0.2,'2005-08-27 15:34:01'),
(NULL, 11, 10, 0.4,'2005-08-31 12:34:12'),
(NULL, 11, 11, 0.4,'2005-9-1 03:42:27'),
(NULL, 11, 12, 0.4,'2005-9-2 03:42:27'),
(NULL, 11, 13, 0.4,'2005-9-3 03:42:27'),
(NULL, 15, 14, 0.2,'2005-9-4 03:42:27'),
(NULL, 15, 15, 0.2,'2005-9-5 03:42:27'),
(NULL, 15, 16, 0.2,'2005-9-6 03:42:27'),
(NULL, 19, 17, 0.4,'2005-9-7 03:42:27'),
(NULL, 19, 18, 0.4,'2005-9-8 03:42:27'),
(NULL, 19, 19, 0.4,'2005-9-9 03:42:27'),
(NULL, 19, 20, 0.4,'2005-9-10 03:42:27'),
(NULL, 19, 21, 0.4,'2005-9-11 03:42:27'),
(NULL, 13, 22, 0.2,'2005-9-12 03:42:27'),
(NULL, 13, 23, 0.2,'2005-9-13 03:42:27'),
(NULL, 13, 24, 0.2,'2005-9-14 03:42:27'),
(NULL, 13, 25, 0.2,'2005-9-15 03:42:27'),
(NULL, 13, 26, 0.2,'2005-9-16 03:42:27'),
(NULL, 13, 27, 0.2,'2005-9-17 03:42:27'),
(NULL, 13, 28, 0.2,'2005-9-18 03:42:27'),
(NULL, 9, 29, 0.4,'2005-9-19 03:42:27'),
(NULL, 9, 30, 0.4,'2005-9-19 03:42:30');



INSERT INTO user VALUES
(NULL, 'Tester', 'Customer', 'testC', 1, '0000-00-00 00:00:00','CUSTOMER',0),
(NULL, 'Tester', 'Employee', 'testE', 1, '0000-00-00 00:00:00','EMPLOYEE',0),
(NULL, 'Tester', 'Admin', 'testA', 1, '0000-00-00 00:00:00','ADMIN',0);

