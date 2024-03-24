ALTER TABLE album DROP FOREIGN KEY FK_A_singerName;

TRUNCATE TABLE singer;
ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE musician ADD role varchar(50);
ALTER TABLE musician ADD bandName varchar(50);
INSERT INTO musician VALUES ("Alina", "Darcy", "Boles", 32,"vocals","Crazy Duo"),("Mysterio","Jessie","Chancey",23, "guitar","Mysterio"),("Rainbow", "Sarah", "Derrick", 47,"percussion","Crazy Duo"),("Luna", "Emily", "Seibold", 31,"piano","Luna");

ALTER TABLE album ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES musician (musicianName) ON UPDATE CASCADE ON DELETE CASCADE;

CREATE TABLE IF NOT EXISTS band (bandName varchar(50),
                                creation YEAR,
                                genre varchar(50),
                                PRIMARY KEY (bandName));
INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"),
                         ("Luna", 2009, "classical"),
                         ("Mysterio", 2019, "pop");