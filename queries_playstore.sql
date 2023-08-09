-- Comments in SQL Start with dash-dash --
SELECT * FROM analytics WHERE id = 1880;
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';
SELECT category, COUNT(*) FROM analytics GROUP BY category;
SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
SELECT app_name, count(*) FROM analytics WHERE rating >= 4.8 GROUP BY app_name;
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
SELECT app_name, min_installs, rating FROM analytics WHERE min_installs <= 50 AND rating >= 0 ORDER BY rating DESC;
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;
SELECT app_name, reviews FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews DESC LIMIT 10;
SELECT app_name,  last_updated FROM analytics ORDER BY last_updated ASC LIMIT 1;
SELECT app_name, price FROM analytics ORDER BY price DESC LIMIT 1;
SELECT COUNT(reviews) FROM analytics;
SELECT category, COUNT(*) AS total FROM analytics GROUP BY category HAVING COUNT(*) >= 300 ORDER BY total DESC;
SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC;