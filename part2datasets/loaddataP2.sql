-- Include your INSERT SQL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the INSERT statements for the tables with foreign key references
--    ONLY AFTER the parent tables!

-- This is only an example of how you add INSERT statements to this file.
--   You may remove it.

INSERT INTO MYTEST01 (id, value) VALUES(4, 1300);
-- A more complex syntax that saves you typing effort.
INSERT INTO MYTEST01 (id, value) VALUES
 (7, 5144)
,(3, 73423)
,(6, -1222)
;

/* part 2 */

INSERT INTO Customers(email,password,aid)

(fbloore0@surveymonkey.com,OMBNyNSedFJ,9661010730),
(tbucham5@shareasale.com,512oy996y,6708192985),
(gheapea@yellowbook.com,1X8cBo,5688024577),
(lcornessn@google.fr,Ci8FVZS,7804227884),
(ifranciottoio@wsj.com,rn18DtVho,3810930695),
(fjohnikin13@wp.com,CqWhKXONH1,7760599226),
(jradborn1a@java.com,rHZ7HdImQl,9467326892),
(kcomford1b@people.com.cn,PjqbXRG490X,0902324233),
(sbattle1e@who.int,4Y42rwr2y,2973550858),
(soven1m@usda.gov,urlyZoej,3248059036),
(gguidone1p@cbsnews.com,egl8IKni,1948558939),
(shatwell1w@slate.com,6Nq3n8I,8053921213),
(ejorden22@i2i.jp,mkkANema5,2323209825),
(iconnikie2h@odnoklassniki.ru,Jgn9Ms,2448681848),
(apobjay2l@arizona.edu,r8cWSPsahn,8114616989),
(gfullilove2v@yale.edu,RhHvMMcBC,4752361086),
(hkauschke31@google.pl,kdBsX9MIwQw,5335721189),
(vtatersale32@disqus.com,7bVaJt9F3hAw,0494673362),
(ttourner37@edublogs.org,GIiFwvBMd,7691429061);

INSERT INTO Billing_addresses(aid, address, address2, city, province, country, postal_code, phone, name)

(9661010730,197 Kennedy Circle,Apt 668,Luleå,Norrbotten,SE,973 23,459-827-4364,Fredia Bloore),
(6708192985,15399 Muir Way,PO Box 51485,København,Region Hovedstaden,DK,1360,356-434-0754,Thadeus Bucham),
(5688024577,77 Meadow Valley Place,Suite 94,Loma Bonita,Mexico,MX,52740,324-920-5491,Gearalt Heape),
(7804227884,80 Forest Park,Room 508,Arbois,Franche-Comté,FR,39605 CEDEX,326-582-5430,Lena Corness),
(3810930695,57 Almo Street,Room 1532,Alfeizerão,Leiria,PT,2460-105,975-780-3573,Ikey Franciottoi),
(7760599226,75419 Briar Crest Lane,Apt 1080,Halmstad,Halland,SE,302 55,604-616-0583,Frasier Johnikin),
(9467326892,703 Algoma Point,PO Box 15815,Uppsala,Uppsala,SE,754 48,126-818-6506,Jock Radborn),
(0902324233,970 Scott Alley,Suite 92,Fyllingsdalen,Hordaland,NO,5145,877-195-8572,Krista Comford),
(2973550858,51330 Anhalt Way,Suite 8,Quimper,Bretagne,FR,29551 CEDEX 9,532-630-9982,Sunshine Battle),
(3248059036,489 Crescent Oaks Place,13th Floor,Marseille,Provence-Alpes-Côte d'Azur,FR,13425 CEDEX 12,663-767-4167,Sibbie Oven),
(1948558939,9 Columbus Road,Suite 93,Arroteia,Viana do Castelo,PT,4940-342,330-235-7144,Gregory Guidone),
(8053921213,85225 Commercial Place,Apt 970,Umeå,Västerbotten,SE,905 92,842-889-4886,Sonnie Hatwell),
(2323209825,0114 Lakeland Terrace,Apt 976,Independencia,Puebla,MX,75780,953-791-9505,Elinor Jorden),
(2448681848,8 Comanche Street,Apt 527,Oslo,Oslo,NO,0477,263-371-9894,Ingram Connikie),
(8114616989,27 New Castle Junction,15th Floor,Baie-D'Urfé,Québec,CA,H9X,815-319-1147,Arie Pobjay),
(4752361086,37929 Golf Course Parkway,Room 369,Lage,Viana do Castelo,PT,4960-160,950-349-5340,Gun Fullilove),
(5335721189,237 Pond Street,Apt 848,Pexiligais,Lisboa,PT,2725-619,516-778-8690,Hana Kauschke),
(0494673362,00 Waubesa Point,Apt 1886,Vilar do Pinheiro,Porto,PT,4485-824,229-100-3756,Valerie Tatersale),
(7691429061,76875 Ridge Oak Park,PO Box 59620,Kungshamn,Västra Götaland,SE,456 42,737-549-5852,Tymothy Tourner),
