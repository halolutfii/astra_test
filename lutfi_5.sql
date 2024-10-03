CREATE TABLE `orders` (
    `id` varchar(255) NOT NULL PRIMARY KEY,
    `price` int(255) DEFAULT NULL,
    `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `customers` (
    `id` varchar(255) NOT NULL PRIMARY KEY,
    `name` varchar(255) DEFAULT NULL,
    `order_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SELECT c.name, o.price FROM customers c
JOIN orders o ON c.order_id = o.id
WHERE o.order_date BETWEEN (
        SELECT MIN(order_date) 
        FROM orders
    ) AND DATE_ADD((SELECT MIN(order_date) FROM orders), INTERVAL 10 YEAR)
ORDER BY o.price DESC
LIMIT 1;

