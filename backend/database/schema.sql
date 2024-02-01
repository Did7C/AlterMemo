DROP TABLE IF EXISTS Utilisateur;

DROP TABLE IF EXISTS Tache;

DROP TABLE IF EXISTS ListeDeTaches;

DROP TABLE IF EXISTS TacheDansListe;

DROP TABLE IF EXISTS TableDejointure;


CREATE TABLE Utilisateur
(
  idUtilisateur int PRIMARY KEY,
  nomUtilisateur varchar
(255)
);

CREATE TABLE Tache
(
  idTache int PRIMARY KEY,
  description varchar
(255),
  estTerminee bool,
  dateEcheance date,
  idUtilisateur int
);

CREATE TABLE ListeDeTaches
(
  idListe int PRIMARY KEY,
  nomListe varchar
(255)
);

CREATE TABLE TacheDansListe
(
  idTacheDansListe int PRIMARY KEY,
  idListe int,
  idTache int
);

CREATE TABLE TableDeJointure
(
  id int PRIMARY KEY,
  idUtilisateur int,
  idListe int
);

