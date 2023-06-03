--Ejercicio #1
SELECT Week, COUNT(Id) as 'Number of Students late per Week' 
FROM StudentLateness
WHERE NumbersOfLate > 0
GROUP BY Week
ORDER BY COUNT(Id) DESC

SELECT Month, COUNT(Id) as 'Number of Students late per Month' 
FROM StudentLateness
WHERE NumbersOfLate > 0
GROUP BY Month 
ORDER BY COUNT(Id) DESC
-------------------------------------------------------------

SELECT Week, SUM(NumbersOfLate) as 'Number of lates per Week' 
FROM StudentLateness
WHERE NumbersOfLate > 0
GROUP BY Week
ORDER BY SUM(NumbersOfLate) DESC

SELECT Month, SUM(NumbersOfLate) as 'Number of lates per Month' 
FROM StudentLateness
WHERE NumbersOfLate > 0
GROUP BY Month 
ORDER BY SUM(NumbersOfLate) DESC

-------------------------------------------------------------

SELECT TOP(3) Week, Name, NumbersOfLate
FROM dbo.StudentLateness
WHERE NumbersOfLate > 0
ORDER BY NumbersOfLate DESC

SELECT TOP(3) Month, Name, NumbersOfLate
FROM dbo.StudentLateness
WHERE NumbersOfLate > 0
ORDER BY NumbersOfLate DESC

--Ejercicio #2

SELECT TOP(2) st.Name, s.Name as 'Sibling Name'
FROM StudentLateness st
INNER JOIN Sibling s
ON s.Id = st.IdSibling
ORDER BY st.NumbersOfLate DESC
--AND st.Id = 'dad32355-9edd-4e0b-8fc1-b9d7214f5383'



--Ejercicio #3

SELECT s.Name, f.Name as 'Father Name', m.Name as 'Mother Name',
	f.Contact as 'Father Contact', m.Contact as 'Mother Contact'
FROM StudentLateness s
INNER JOIN Father f
    ON f.Id = s.IdFather
    AND s.Id = 'dad32355-9edd-4e0b-8fc1-b9d7214f5383'
INNER JOIN Mother m
    ON m.Id = s.IdMother
    AND s.Id = 'dad32355-9edd-4e0b-8fc1-b9d7214f5383'

--Ejercicio #4

SELECT City, COUNT(City) as 'Numbers of studens late'
FROM StudentLateness
WHERE NumbersOfLate > 0
GROUP BY City
ORDER BY COUNT(City) DESC