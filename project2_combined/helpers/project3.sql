SELECT *
FROM Tickets T, Sold_tickets S
WHERE T.tid = S.tid AND T.gid = 1;

SELECT *
FROM Games
WHERE DATEDIFF(DAY,Games.date, current_timestamp)<72 ;

SELECT Games.id, Games.date, Games.time, CURRENT_DATE AS curdate, CURRENT_TIME AS curtime
FROM Games;

SELECT TIMESTAMPDIFF(HOUR,Games.date,CURRENT_DATE);




SELECT TIMESTAMPDIFF(Games.date, CURRENT_DATE) AS a
FROM Games;

SELECT DATEADD(day,3,CURRENT_DATE) AS date
FROM Games;

SELECT CONVERT(datetime,'2023-10-23')
FROM Games;


SELECT G.id, current_date
FROM Games G
WHERE G.date > current_date
UNION;


SELECT DATEDIFF(HOUR,CONVERT(datetime,G2.date),current_timestamp ) AS diff
FROM Games G2;

INSERT INTO Performs (country, shirt_num, id, etime,position, Rcard,Ycard) VALUES ('Portugal',30,5,'00:00:00','test centre position', 0, 0);
SELECT *
FROM Performs
WHERE position ='test centre position';



DELETE FROM Performs WHERE position = 'test centre position';
