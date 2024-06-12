-- ex1: hackerank-revising-the-select-query. 
SELECT NAME 
FROM CITY 
WHERE POPULATION > 120000 AND COUNTRYCODE ='USA'
-- ex2: hackerank-japanese-cities-attributes. 
SELECT * 
FROM CITY
WHERE COUNTRYCODE ='JPN'
-- ex3: hackerank-weather-observation-station-1. 
SELECT CITY, STATE
FROM STATION
-- ex4: hackerank-weather-observation-station-6. 
SELECT DISTINCT CITY
FROM STATION 
WHERE CITY LIKE 'A%'  OR CITY LIKE 'E%' 
OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%'
--ex5: hackerank-weather-observation-station-7. 
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%A'  OR CITY LIKE '%E'
OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U'
-- ex6: hackerank-weather-observation-station-9. 
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%'  AND CITY NOT  LIKE 'E%'
AND CITY NOT LIKE 'I%' AND CITY NOT LIKE 'O%' AND  CITY NOT LIKE 'U%'
-- ex7: hackerank-name-of-employees.
SELECT NAME 
FROM EMPLOYEE
ORDER BY NAME
-- ex8: hackerank-salary-of-employees. 
SELECT NAME 
FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10 
ORDER BY EMPLOYEE_ID
-- ex9: leetcode-recyclable-and-low-fat-products. 
SELECT PRODUCT_ID
FROM PRODUCTS
WHERE LOW_FATS = 'Y' AND RECYCLABLE = 'Y'
--ex10: leetcode-find-customer-referee. 
SELECT NAME 
FROM CUSTOMER 
WHERE REFEREE_ID <> 2 OR REFEREE_ID IS NULL;
-- ex11: leetcode-big-countries. 
SELECT NAME, POPULATION, AREA
FROM WORLD
WHERE AREA >= 3000000 OR POPULATION >= 25000000
-- ex12: leetcode-article-views. 
SELECT DISTINCT AUTHOR_ID AS ID
FROM VIEWS
WHERE AUTHOR_ID = VIEWER_ID
ORDER BY ID ASC;
-- ex13: datalemur-tesla-unfinished-part. 
SELECT PART, ASSEMBLY_STEP
FROM PARTS_ASSEMBLY
WHERE FINISH_DATE IS NULL
-- ex14: datalemur-lyft-driver-wages. 
SELECT *
FROM LYFT_DRIVERS
WHERE YEARLY_SALARY <= 30000 OR YEARLY_SALARY >= 70000
-- ex15: datalemur-find-the-advertising-channel.
SELECT ADVERTISING_CHANNEL
FROM UBER_ADVERTISING
WHERE MONEY_SPENT > 100000 AND YEAR = 2019

