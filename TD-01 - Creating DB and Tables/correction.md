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

```

DROP TABLE IF EXISTS Artistes;
CREATE TABLE IF NOT EXISTS Artistes (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
		title VARCHAR(70) NOT NULL,
        style VARCHAR(40),
        
        PRIMARY KEY(id)

    ) ENGINE=INNODB;

    

DROP TABLE IF EXISTS Albums;    
CREATE TABLE IF NOT EXISTS Albums (
	code_inv VARCHAR(6) NOT NULL,
    title VARCHAR(50) NOT NULL,
    release_date YEAR,

	PRIMARY KEY (code_inv)
    
) ENGINE=INNODB;


DROP TABLE IF EXISTS Titres;
CREATE TABLE IF NOT EXISTS Titres (

	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	titre VARCHAR(60) NOT NULL,
    plage TINYINT NOT NULL,
    duree TIME,
    
    PRIMARY KEY (id)
) ENGINE=INNODB;


DROP TABLE IF EXISTS Emprunteurs;
CREATE TABLE IF NOT EXISTS Emprunteurs (

	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    firstname VARCHAR(40) NOT NULL, 
    surname VARCHAR(40) NOT NULL,
    birthdate DATE,
    
    PRIMARY KEY (id)
) ENGINE=INNODB;

DROP TABLE IF EXISTS Adresses;
CREATE TABLE IF NOT EXISTS Adresses (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    street VARCHAR(60),
    zip CHAR(5),
    city VARCHAR(40),
    
    PRIMARY KEY (id)
) engine=INNODB;



SHOW TABLES;
```

### 2. Add the relationships :

1. Add (1-n) relationships to existing tables :

**Disque :** id_artiste (FK)

**Morceaux :**  id_disque (FK)

**Emprunteur:** id_adresse (FK)

2. Create a new table for the (n-n) relationship :

**EmprunteurDisque:** id_emprunteur, code_disque
