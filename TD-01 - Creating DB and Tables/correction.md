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
CREATE TABLE `artistes` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `creation_date` YEAR NOT NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `disques` (
  `code` VARCHAR(12) NOT NULL,
  `libelle` VARCHAR(45) NOT NULL,
  `creation_date` YEAR NOT NULL,
  PRIMARY KEY (`code`));

CREATE TABLE `morceauxs` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ordre_album` TINYINT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `emprunteurs` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(50),
  `prenom` VARCHAR(50),
  `age` TINYINT,
  PRIMARY KEY (`id`));

CREATE TABLE `adresses` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `street` VARCHAR(255) NOT NULL,
  `city` VARCHAR(30) NOT NULL,
  `zip` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`));
```

### 2. Add the relationships :

1. Add (1-n) relationships to existing tables :

**Disque :** id_artiste (FK)

**Morceaux :**  id_disque (FK)

**Emprunteur:** id_adresse (FK)

2. Create a new table for the (n-n) relationship :

**EmprunteurDisque:** id_emprunteur, code_disque