CREATE TABLE `superhero` (
    `id` BIGINT(255) NOT NULL PRIMARY KEY,
    `name` varchar(100) DEFAULT NULL,
    `latitude` float DEFAULT NULL,
    `longitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `superhero` (`id`, `name`, `latitude`, `longitude`) VALUES
(1, 'BATMAN', 50.23, 85.45),
(2, 'Spiderman', 65.43, 65.43),
(3, 'Thor', 45.34, 30.89),
(4, 'Iron Man', 85.34, 80.98),
(5, 'Deadpool', 25.12, 69.21),
(6, 'Hulk', 30.34, 20.98),
(7, 'Doctor Strange', 40.45, 40.56),
(8, 'Captain America', 70.00, 75.32),
(9, 'Avengers', 81.32, 90.84),
(10, 'Superman', 85.32, 45.78);

SELECT ID FROM SUPERHERO WHERE LATITUDE < 50 AND LONGITUDE < 50;