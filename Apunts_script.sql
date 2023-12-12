USE M16_narcis;

DROP TABLE IF EXISTS Arxius;
DROP TABLE IF EXISTS nodeFormatiu;
DROP TABLE IF EXISTS modul;
DROP TABLE IF EXISTS cicle;

CREATE TABLE cicle(
nom varchar(25),
descripcio TEXT,
PRIMARY KEY(nom)
);

CREATE TABLE modul(
nom varchar(25),    
nom_cicle varchar(25),
descripcio TEXT,
FOREIGN KEY(nom_cicle) REFERENCES cicle(nom),
PRIMARY KEY(nom,nom_cicle)
);

CREATE TABLE nodeFormatiu(
id INT AUTO_INCREMENT,
nom varchar(25),
nom_modul varchar(25),
FOREIGN KEY(nom_modul) REFERENCES modul(nom),
PRIMARY KEY(nom,nom_modul)
);

CREATE TABLE Arxius(
id INT AUTO_INCREMENT,
id_nodeFormatiu INT AUTO_INCREMENT,
descripcio TEXT,
imatge LONGBLOB,
FOREIGN KEY(nom_nodeFormatiu) REFERENCES nodeFormatiu(id),
PRIMARY KEY(id,nom_nodeFormatiu)
);

