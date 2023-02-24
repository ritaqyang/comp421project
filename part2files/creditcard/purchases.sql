
INSERT INTO Purchases(tid, transaction_id, t_date, t_time, c_num, email)
    VALUES

('26a63b38-7afa-4f70-893d-7ec146aef3b8','ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3','2022-12-18','21:43',4625736800046530,'apobjay2l@arizona.edu'),
('222b1d89-c483-4645-a880-ba1cb316499d','ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3','2022-12-18','21:43',4625736800046530,'apobjay2l@arizona.edu'),
('d77f9a6c-dd4e-455f-a732-d2dc724c6e70','ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3','2022-12-18','21:43',4625736800046530,'apobjay2l@arizona.edu'),
('fc1282e5-d76b-46d5-81ca-7ba133e1d33a','ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3','2022-12-18','21:43',4625736800046530,'apobjay2l@arizona.edu'),
('2ff48b4d-27d0-47f6-93b7-80605abc7210','ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3','2022-12-18','21:43',4625736800046530,'apobjay2l@arizona.edu'),
('7df47107-e20b-40ed-b372-86a91723e024','ba04f886-7fcb-4ad8-ae82-89fae8e9e2b3','2022-12-18','21:43',4625736800046530,'apobjay2l@arizona.edu');

SELECT S.tid
FROM Sold_tickets S;

SELECT C.c_num
FROM Credit_cards C;