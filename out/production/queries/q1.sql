SELECT S.sname, S.location, G2.date
FROM Stadiums S, Games G2
WHERE S.sname = G2.stadium AND G2.id IN ( SELECT G.id
                                          FROM Goals G
                                          WHERE G.country IN (SELECT P.country
                                                              FROM Players P
                                                              WHERE P.pname = 'Christine Sinclair')
                                          INTERSECT
                                          SELECT G.id
                                          FROM Goals G
                                          WHERE G.shirt_num IN(SELECT P.shirt_num
                                                               FROM Players P
                                                               WHERE pname = 'Christine Sinclair'));

SELECT S.sname, S.location, G2.date
FROM Stadiums S, Games G2
WHERE S.sname = G2.stadium AND G2.id IN ( SELECT id
                                          FROM Goals
                                          WHERE country IN (SELECT P.country
                                                              FROM Players P
                                                              WHERE P.pname = 'Christine Sinclair')
                                          INTERSECT
                                          SELECT G.id
                                          FROM Goals G
                                          WHERE G.shirt_num IN(SELECT P.shirt_num
                                                               FROM Players P
                                                               WHERE pname = 'Christine Sinclair'));


SELECT sname, location, date FROM Stadiums JOIN Games ON Stadiums.sname = Games.stadium WHERE id in (SELECT id FROM Goals WHERE country = (SELECT country FROM Players WHERE pname = 'Christine Sinclair') AND shirt_num = (SELECT shirt_num FROM Players WHERE pname = 'Christine Sinclair'));


SELECT *
FROM Games G
WHERE G.id = 29;




SELECT G2.stadium
FROM Games G2
WHERE G2.id IN (SELECT G.id
                FROM Goals G
                WHERE G.country IN (SELECT P.country
                                    FROM Players P
                                    WHERE P.pname = 'Christine Sinclair')
                INTERSECT
                SELECT G.id
                FROM Goals G
                WHERE G.shirt_num IN(SELECT P.shirt_num
                                     FROM Players P
                                     WHERE pname = 'Christine Sinclair'));



SELECT G.id
FROM Goals G
WHERE G.country IN (SELECT P.country
                 FROM Players P
                 WHERE P.pname = 'Christine Sinclair')
INTERSECT
SELECT G.id
FROM Goals G
WHERE G.shirt_num IN(SELECT P.shirt_num
                     FROM Players P
                     WHERE pname = 'Christine Sinclair');



SELECT P.shirt_num
FROM Players P
WHERE pname = 'Christine Sinclair';

SELECT P.country
FROM Players P
WHERE pname = 'Christine Sinclair';

SELECT *
FROM Stadiums;

SELECT *
FROM Games;