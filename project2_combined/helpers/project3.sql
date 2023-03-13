SELECT *
FROM Tickets T, Sold_tickets S
WHERE T.tid = S.tid AND T.gid = 1;