SELECT *
FROM Tickets T, Sold_tickets S
WHERE T.tid = S.tid AND T.gid = 1;

SELECT *
FROM Games
WHERE Games.date < current_timestamp;