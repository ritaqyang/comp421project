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
  
INSERT INTO Players VALUES
  ('France' , 37160 , 'Rosalynd Spours' , 'Goalie' , '1991-04-14'),
  ('Brazil' , 54286 , 'Friederike Bolan' , 'Right Fullback' , '1999-05-16'),
  ('Brazil' , 779 , 'Tobin De Francesco' , 'Left Fullback' , '1994-01-02'),
  ('Portugal' , 30 , 'Test Test' , 'Center Back' , '1999-01-19'),
  ('Germany' , 837 , 'Ingrim Bassick' , 'Center Back' , '1981-07-01'),
  ('Poland' , 69555 , 'Test Test' , 'Defending' , '1980-11-22'),
  ('Brazil' , 9431 , 'Sande Bridge' , 'Right Midfielder' , '1992-01-23'),
  ('Portugal' , 74 , 'Test Test' , 'Center Midfielder' , '1990-10-04'),
  ('Portugal' , 80370 , 'Torin Lissandre' , 'Center Forward' , '1994-08-27'),
  ('United States' , 8778 , 'Test Test' , 'Attacking Midfielder' , '2000-10-03'),
  ('Mexico' , 7649 , 'Addy Domingues' , 'Left Midfielder' , '1994-07-26'),
  ('Uruguay' , 5 , 'Alistair Scrafton' , 'Goalie' , '1992-03-22'),
  ('Brazil' , 21 , 'Nelli Shorten' , 'Right Fullback' , '1985-09-13'),
  ('Tunisia' , 90 , 'Test Test' , 'Left Fullback' , '1989-06-15'),
  ('Portugal' , 81494 , 'Brooks Ankers' , 'Center Back' , '1996-01-22'),
  ('Brazil' , 4 , 'Karlens Corrao' , 'Center Back' , '1994-02-08'),
  ('Denmark' , 26 , 'Cheryl Biasetti' , 'Defending' , '1997-07-02'),
  ('Iran' , 5359 , 'Pen Philcott' , 'Right Midfielder' , '1991-06-17'),
  ('Germany' , 8 , 'Noell Killerby' , 'Center Midfielder' , '1995-02-16'),
  ('Poland' , 3 , 'Tommie Tethacot' , 'Center Forward' , '2002-03-01'),
  ('Brazil' , 62 , 'Delano Toohey' , 'Attacking Midfielder' , '2003-06-10'),
  ('Brazil' , 3 , 'Bordie Lamberti' , 'Left Midfielder' , '1988-07-19'),
  ('Japan' , 5688 , 'Baldwin Gianni' , 'Goalie' , '1999-11-04'),
  ('France' , 673 , 'Jolynn Abdon' , 'Right Fullback' , '1992-05-06'),
  ('Portugal' , 68 , 'Oralee McElree' , 'Left Fullback' , '1980-12-10'),
  ('United States' , 4 , 'Tito Dawidman' , 'Center Back' , '1976-04-12'),
  ('Japan' , 2846 , 'Fleming Oldale' , 'Center Back' , '1990-09-09'),
  ('Morocco' , 2471 , 'Germayne Kiln' , 'Defending' , '1988-05-31'),
  ('Argentina' , 94336 , 'Austin Brabbins' , 'Right Midfielder' , '1981-01-28'),
  ('Japan' , 421 , 'Aile Tigwell' , 'Center Midfielder' , '1996-10-12'),
  ('United States' , 53134 , 'Netti Hellwich' , 'Center Forward' , '1987-07-06'),
  ('Poland' , 87582 , 'Liesa Ilyuchyov' , 'Attacking Midfielder' , '1997-08-14'),
  ('United States' , 7 , 'Allison Meadley' , 'Left Midfielder' , '1981-02-09'),
  ('Argentina' , 4717 , 'Barr Luggar' , 'Goalie' , '1991-02-02'),
  ('Mexico' , 2854 , 'Cybill McNae' , 'Right Fullback' , '1997-04-26'),
  ('Ecuador' , 779 , 'Allison Meadley' , 'Left Fullback' , '1978-03-15'),
  ('Croatia' , 953 , 'Loren Whyffen' , 'Center Back' , '1994-11-22'),
  ('United States' , 2190 , 'Abner Tilne' , 'Center Back' , '2004-12-01'),
  ('Germany' , 23050 , 'Lezley Strettell' , 'Defending' , '1977-09-01'),
  ('Morocco' , 9366 , 'Nicko Abrehart' , 'Right Midfielder' , '1994-03-16'),
  ('Argentina' , 2446 , 'Isadora Scambler' , 'Center Midfielder' , '1990-01-29'),
  ('France' , 58 , 'Norri Walsham' , 'Center Forward' , '1993-03-01'),
  ('Portugal' , 1564 , 'Merola Mayes' , 'Attacking Midfielder' , '1978-02-26'),
  ('United States' , 2972 , 'Dallas Gittus' , 'Left Midfielder' , '1987-11-16'),
  ('France' , 29 , 'Lorelei Booler' , 'Goalie' , '1977-04-09'),
  ('France' , 30384 , 'Tonie Warricker' , 'Right Fullback' , '2002-01-29'),
  ('Canada' , 238 , 'Tess Zecchinii' , 'Left Fullback' , '1986-12-05'),
  ('Netherlands' , 31 , 'Berny Simmank' , 'Center Back' , '2000-07-13'),
  ('Brazil' , 8171 , 'Karoly Rentz' , 'Center Back' , '1982-06-04'),
  ('Canada' , 323 , 'Christine Sinclair' , 'Defending' , '1988-05-22')
   ;

 INSERT INTO Coaches VALUES
  ('Poland' , 'Zeke De Moreno' , '1988-11-25' , 'head'),
  ('Brazil' , 'Lyman Cicullo' , '1987-03-06' , 'assistant'),
  ('Canada' , 'Joelly Richens' , '1982-06-06' , 'head'),
  ('Poland' , 'Rycca Pennaman' , '1984-07-01' , 'assistant'),
  ('Brazil' , 'Martyn Thring' , '1998-10-23' , 'head'),
  ('Brazil' , 'Bentlee Antczak' , '1995-02-02' , 'assistant'),
  ('France' , 'Kaylil Acomb' , '1999-04-03' , 'head'),
  ('Argentina' , 'Binni Gudyer' , '1988-04-29' , 'assistant'),
  ('Poland' , 'Kalvin Pratten' , '1990-03-23' , 'head'),
  ('Brazil' , 'Kirby Pallister' , '1999-12-13' , 'assistant'),
  ('Brazil' , 'Shayne Poulsom' , '1992-04-04' , 'head'),
  ('France' , 'Doralyn Novotne' , '1986-07-06' , 'assistant'),
  ('Iran' , 'Fulvia Node' , '1982-04-25' , 'head'),
  ('Brazil' , 'Hollie Muglestone' , '1980-10-08' , 'assistant'),
  ('Argentina' , 'Adiana Byers' , '1977-05-12' , 'head'),
  ('Portugal' , 'Zeb Baynam' , '1982-07-25' , 'assistant'),
  ('Japan' , 'Hertha Fallens' , '1984-05-22' , 'head'),
  ('Brazil' , 'Gav Jex' , '1993-04-28' , 'assistant'),
  ('Argentina' , 'Allis Berrycloth' , '1993-05-15' , 'head'),
  ('Portugal' , 'Nataniel Childs' , '1993-05-05' , 'assistant')
   ;
