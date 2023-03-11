
SELECT *
FROM Teams;

SELECT *
FROM Players;

SELECT *
FROM Coaches;

SELECT *
FROM Referees;

SELECT *
FROM Stadiums;

SELECT *
FROM Games;

SELECT *
FROM Goals;

SELECT *
FROM Refs_game;

SELECT *
FROM Performs;


SELECT DISTINCT P.country
FROM Players P;

SELECT P.country,P.pname, P.position,YEAR(CURRENT_DATE)-YEAR(P.DOB) AS age
FROM Players P;


SELECT country, PlayerAvgAge
FROM(SELECT country, AVG(p_age) AS PlayerAvgAge
        FROM (SELECT P.country,P.pname, YEAR(CURRENT_DATE)-YEAR(P.DOB) AS p_age
        FROM Players P
        WHERE P.position LIKE '%Midfielder%')
        GROUP BY country)
WHERE PlayerAvgAge < 35 AND COUNTRY IN (SELECT country
                                        FROM Goals)
ORDER BY 2;




SELECT country, AVG(c_age) AS CoachAvgAge
FROM (SELECT C.country,C.cname,YEAR(CURRENT_DATE)-YEAR(C.DOB) AS c_age
      FROM Coaches C)
GROUP BY country
Order by 2;




SELECT P.country, COUNT(pname)AS NumPlayers
FROM Players P
WHERE DOB > '1990-01-01'
GROUP BY P.country;

SELECT country,COUNT(cname) AS NumCoaches
FROM Coaches
WHERE DOB > '1990-01-01'
GROUP BY country;



ALTER TABLE Games_P2 Add CONSTRAINT gamecheck CHECK( date  >  '2023-01-01');

