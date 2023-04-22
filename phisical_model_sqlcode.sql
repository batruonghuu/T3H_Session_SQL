CREATE DATABASE nhasach_db;

\connect nhasach_db

CREATE TABLE bng_nhasach (
  nsID INT NOT NULL PRIMARY KEY,
  nsTen varchar(50),
  nsDiachi varchar(100)
);

CREATE TABLE bng_phankhu (
  nsID INT,
  pkID INT UNIQUE,
  pkTen varchar(50),
  pkTangLau int,
  pkMoTa varchar(500),
  PRIMARY KEY (nsID, pkID),
  FOREIGN KEY (nsID) REFERENCES bng_nhasach ON DELETE CASCADE
);

CREATE TABLE bng_giadesach (
  gdsID INT PRIMARY KEY,
  gdsMoTa varchar(500)
);

CREATE TABLE bng_pk_gds (
  pkID serial REFERENCES bng_giadesach (gdsID),
  gdsID serial REFERENCES bng_phankhu (pkID),
  PRIMARY KEY (pkID, gdsID)
);

