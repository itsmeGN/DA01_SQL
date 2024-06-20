-- ex1: hackerrank-weather-observation-station-3.
SELECT DISTINCT CITY
FROM STATION
WHERE ID% 2 = 0
-- ex2: hackerrank-weather-observation-station-4.
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) 
FROM STATION
-- ex3: hackerrank-the-blunder.
SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, 0, ''))) 
FROM
employees;
--ex4: datalemur-alibaba-compressed-mean.
SELECT
ROUND(CAST(SUM(item_count * order_occurrences) / sum(order_occurrences) 
AS DECIMAL),1) AS mean
FROM items_per_order
-- ex5: datalemur-matching-skills.
SELECT candidate_id
FROM candidates 
WHERE skill in ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING count(skill)=3
ORDER BY candidate_id
-- ex6: datalemur-verage-post-hiatus-1.
  SELECT user_id, DATE(max(post_date)) - DATE(min(post_date)) AS days_between
FROM posts
WHERE post_date >= '2021-01-01' AND  post_date < '2022-01-01'
GROUP BY user_id
HAVING COUNT(post_id) >=2
-- ex7: datalemur-cards-issued-difference.
SELECT card_name, 
MAX(issued_amount) - MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC
-- ex8: datalemur-non-profitable-drugs.
SELECT manufacturer,
COUNT(drug) AS drug_count,
ABS(SUM(cogs - total_sales)) AS total_loss
FROM pharmacy_sales
WHERE total_sales < cogs
GROUP BY manufacturer
ORDER BY total_loss desc
-- ex9: leetcode-not-boring-movies.
SELECT *
FROM CINEMA
WHERE id%2=1 AND description <> 'boring'
ORDER BY rating DESC
-- ex10: leetcode-number-of-unique-subject.
SELECT teacher_id,
COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id
-- ex11: leetcode-find-followers-count.
SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id 
-- ex12:leetcode-classes-more-than-5-students.
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(DISTINCT student) >=5
