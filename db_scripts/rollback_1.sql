ALTER TABLE album DROP FOREIGN KEY FK_A_singerName;

TRUNCATE TABLE musician;
ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer RENAME COLUMN musicianName TO singerName;
ALTER TABLE singer DROP COLUMN role;
ALTER TABLE singer DROP COLUMN bandName;
INSERT INTO singer VALUES ("Alina", "Darcy", "Boles", 32),("Mysterio","Jessie","Chancey",23),("Rainbow", "Sarah", "Derrick", 47),("Luna", "Emily", "Seibold", 31);

ALTER TABLE album ADD CONSTRAINT FK_A_singerName FOREIGN KEY (singerName) REFERENCES singer (singerName) ON UPDATE CASCADE ON DELETE CASCADE;

DROP TABLE band;