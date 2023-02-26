SELECT *
FROM Purchases P;

SELECT B.city, B.province, B.country,
FROM Billing_addresses B;



SELECT DISTINCT P.transaction_id
FROM Tickets T,Purchases P
WHERE T.tid = P.tid AND T.gname LIKE '%France%' AND T.tid in (SELECT S.tid
                                            FROM Sold_tickets S
                                            WHERE S.sold_price > 150);


SELECT *
FROM (SELECT P.transaction_id, COUNT(DISTINCT P.tid) AS num_tickets
      FROM Purchases P
      WHERE P.transaction_id IN (SELECT DISTINCT P.transaction_id
                                 FROM Tickets T,Purchases P
                                 WHERE T.tid = P.tid AND T.gname LIKE '%France%' AND T.tid in (SELECT S.tid
                                                                                               FROM Sold_tickets S
                                                                                               WHERE S.sold_price > 150))
      GROUP BY P.transaction_id)
WHERE num_tickets > 2;

SELECT P.transaction_id, COUNT(DISTINCT P.tid) AS num_tickets
FROM Purchases P
WHERE P.transaction_id IN (SELECT DISTINCT P.transaction_id
                           FROM Tickets T,Purchases P
                           WHERE T.tid = P.tid AND T.gname LIKE '%France%' AND T.tid in (SELECT S.tid
                                                                                         FROM Sold_tickets S
                                                                                         WHERE S.sold_price > 150))
GROUP BY P.transaction_id;

