--Ejercicio #1
SELECT TOP(3) Name
FROM dbo.StudentLateness
--GROUP BY Week
ORDER BY NumbersOfLate DESC

--Ejercicio #2

SELECT TOP(2) st.Name, s.Name
FROM StudentLateness st
INNER JOIN Sibling s
ON s.Id = st.IdSibling
AND st.Id = 'dad32355-9edd-4e0b-8fc1-b9d7214f5383'


--Ejercicio #3

SELECT s.Name, f.Name, m.Name
FROM StudentLateness s
INNER JOIN Father f
    ON f.Id = s.IdFather
    AND s.Id = 'dad32355-9edd-4e0b-8fc1-b9d7214f5383'
INNER JOIN Mother m
    ON m.Id = s.IdMother
    AND s.Id = 'dad32355-9edd-4e0b-8fc1-b9d7214f5383'

--Ejercicio #4

SELECT City, COUNT(City)
FROM StudentLateness
WHERE NumbersOfLate >= 0
GROUP BY City
--ORDER BY NumbersOfLate DESC

