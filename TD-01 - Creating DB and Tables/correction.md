# Creating Database

## How To Create a Database

## Exercice
1. Create your working database.

```
CREATE TABLE IF NOT EXISTS disquaire CHARACTER SET 'utf-8';
```

# Creating Tables

## How To Create a Table

## Exercices
> PK stands for **Primary Key**
### 1. **Prepare** the request to create the following tables **without foreign keys** :


### 2. Add the relationships :

1. Add (1-n) relationships to existing tables :

**Disque :** id_artiste (FK)

**Morceaux :**  id_disque (FK)

**Emprunteur:** id_adresse (FK)

2. Create a new table for the (n-n) relationship :

**EmprunteurDisque:** id_emprunteur, code_disque


```

DROP DATABASE IF EXISTS disquaire;
CREATE DATABASE IF NON EXISTS disquaire CHARACTER SET 'utf8';
use disquaire;

CREATE TABLE IF NOT EXISTS Artistes (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
		title VARCHAR(70) NOT NULL,
        style VARCHAR(40),
        
        PRIMARY KEY(id)

    ) ENGINE=INNODB;
    

CREATE TABLE IF NOT EXISTS Albums (
	code_inv VARCHAR(6) NOT NULL,
    title VARCHAR(50) NOT NULL,
    release_date YEAR,

	PRIMARY KEY (code_inv)
    
) ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS Titres (

	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	titre VARCHAR(60) NOT NULL,
    plage TINYINT NOT NULL,
    duree TIME,
    
    PRIMARY KEY (id)
) ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS Emprunteurs (

	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    firstname VARCHAR(40) NOT NULL, 
    surname VARCHAR(40) NOT NULL,
    birthdate DATE,
    
    PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Adresses (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    street VARCHAR(60),
    zip CHAR(5),
    city VARCHAR(40),
    
    PRIMARY KEY (id)
) engine=INNODB;

SHOW TABLES;

/*
Mise à jour des tables pour rajouter les FK
*/


ALTER TABLE Titres
ADD code_inv_album VARCHAR(6) NOT NULL;

ALTER TABLE Titres
ADD CONSTRAINT titre_has_album
FOREIGN KEY (code_inv_album)
REFERENCES Albums(code_inv)
ON DELETE CASCADE
ON UPDATE CASCADE;


ALTER TABLE Albums
ADD id_artiste INT UNSIGNED NOT NULL;

ALTER TABLE Albums
ADD CONSTRAINT album_has_artiste
FOREIGN KEY (id_artiste)
REFERENCES Artistes(id)
ON DELETE CASCADE
ON UPDATE CASCADE;


ALTER TABLE Adresses
ADD id_emprunteur INT UNSIGNED NOT NULL;

ALTER TABLE Adresses
ADD CONSTRAINT address_belongs_to_emprunteur
FOREIGN KEY (id_emprunteur)
REFERENCES Emprunteurs(id)
ON DELETE CASCADE
ON UPDATE CASCADE;


CREATE TABLE IF NOT EXISTS albums_has_emprunteurs (
  code_inv_album VARCHAR(6) NOT NULL,
  id_emprunteur INT UNSIGNED NOT NULL,

  PRIMARY KEY (code_inv_album, id_emprunteur),


  CONSTRAINT fk_albums_has_emprunteurs_albums1
    FOREIGN KEY (code_inv_album)
    REFERENCES disquaire.albums(code_inv)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,

  CONSTRAINT fk_albums_has_emprunteurs_emprunteurs1
    FOREIGN KEY (id_emprunteur)
    REFERENCES disquaire.emprunteurs (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
```

