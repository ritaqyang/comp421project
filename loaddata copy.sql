-- Include your INSERT SQL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the INSERT statements for the tables with foreign key references
--    ONLY AFTER the parent tables!

-- This is only an example of how you add INSERT statements to this file.
--   You may remove it.

-- INSERT INTO MYTEST01 (id, value) VALUES(4, 1300);
-- A more complex syntax that saves you typing effort.
-- INSERT INTO MYTEST01 (id, value) VALUES
-- (7, 5144)
-- ,(3, 73423)
-- ,(6, -1222)
-- ;
-- */

-- /* PART 1 */

INSERT INTO Teams VALUES
('Argentina' , 'Argentine Football Association' , 'https://www.afa.com.ar/' , 'C'),
('Australia' , 'Football Australia' , 'https://en.wikipedia.org/wiki/Australia_men%27s_national_soccer_team' , 'D'),
('Belgium' , 'FIFA' , 'https://en.wikipedia.org/wiki/Belgium_national_football_team' , 'F'),
('Brazil' , 'Brazilian Football Confederation' , 'https://www.cob.org.br/en/confederacoes/CBF' , 'G'),
('Cameroon' , 'Fédération Camerounaise de Football' , 'https://en.wikipedia.org/wiki/Cameroon_national_football_team' , 'G'),
('Canada' , 'Canada Soccer' , 'https://canadasoccer.com/' , 'F'),
('Costa Rica' , 'FEDEFUTBOL' , 'https://en.wikipedia.org/wiki/Costa_Rica_national_football_team' , 'E'),
('Croatia' , 'Croatian Football Federation ' , 'https://en.wikipedia.org/wiki/Croatia_women%27s_national_football_team' , 'F'),
('Denmark' , 'Danish Football Association (DBU)' , 'https://en.wikipedia.org/wiki/Denmark_national_football_team' , 'D'),
('Ecuador' , ' Ecuadorian Football Federation' , 'https://en.wikipedia.org/wiki/Ecuador_national_football_team' , 'A'),
('England' , 'FA' , 'https://www.englandfootball.com/' , 'B'),
('France' , 'FFF' , 'https://uk.fff.fr/' , 'D'),
('Germany' , 'Deutscher Fußball-Bund' , 'https://en.wikipedia.org/wiki/Germany_national_football_team' , 'E'),
('Ghana' , 'Ghana Football Association (GFA)' , 'https://en.wikipedia.org/wiki/Ghana_national_football_team' , 'H'),
('Iran' , 'Football Federation Islamic Republic of Iran ' , 'https://en.wikipedia.org/wiki/Iran_national_football_team' , 'B'),
('Japan' , 'サッカー日本代表' , 'https://en.wikipedia.org/wiki/Japan_national_football_team' , 'E'),
('Mexico' , 'Mexican Football Federation' , 'https://fmf.mx/' , 'C'),
('Morocco' , 'FRMF.' , 'https://en.wikipedia.org/wiki/Morocco_national_football_team' , 'F'),
('Netherlands' , 'KNVB' , 'https://en.wikipedia.org/wiki/Netherlands_national_football_team' , 'A'),
('Poland' , 'PZPN' , 'https://en.wikipedia.org/wiki/Poland_national_football_team' , 'C'),
('Portugal' , 'FPF' , 'https://en.wikipedia.org/wiki/Portugal_national_football_team' , 'H'),
('Qatar' , 'Qatar' , 'https://en.wikipedia.org/wiki/Qatar_national_football_team' , 'A'),
('Saudi Arabia' , 'المنتخب الْعَرَبِي السُّعُودِيّ لِكُرَّةُ الْقَدَم' , 'https://en.wikipedia.org/wiki/Saudi_Arabia_national_football_team' , 'C'),
('Senegal' , 'Senegalese Football Federation' , 'https://en.wikipedia.org/wiki/Senegal_national_football_team' , 'A'),
('Serbia' , 'Football Association of Serbia' , 'https://en.wikipedia.org/wiki/Serbia_national_football_team' , 'G'),
('South Korea' , 'Korea Football Association' , 'https://en.wikipedia.org/wiki/South_Korea_national_football_team' , 'H'),
('Spain' , 'Royal Spanish Football Federation' , 'https://en.wikipedia.org/wiki/Spain_national_football_team' , 'E'),
('Switzerland' , 'the Swiss Football Association.' , 'https://en.wikipedia.org/wiki/Switzerland_national_football_team' , 'G'),
('Tunisia' , 'منتخب تُونُس لِكُرَّةُ الْقَدَم' , 'https://en.wikipedia.org/wiki/Tunisia_national_football_team' , 'D'),
('Uruguay' , 'Uruguayan Football Association' , 'https://www.auf.org.uy/' , 'H'),
('USA' , 'US Soccer' , 'https://www.ussoccer.com/' , 'B'),
('Wales' , 'Wales' , 'https://en.wikipedia.org/wiki/Wales_national_football_team' , 'B')
;
