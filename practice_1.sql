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
