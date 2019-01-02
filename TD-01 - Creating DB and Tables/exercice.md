# Creating Database
> We will now work on MySQL Workbench to type SQL requests.

> From now on, you will take absolute care about the following instructions :
> - **Prepare** : you type the request without validating it
> -  **Execute**: you may execute the request, by clicking on the *lightning* icon or by typing the `CTRL+Enter` shortcut.
	

## How To Create a Database

1. You will **prepare** your request to create your first database. Create a DB as so :
`CREATE DATABASE dbname`
2. You will **prepare** your request by adding a charset to it :
3. `CREATE DATABASE dbname CHARACTER SET 'utf8'`
4. You may **execute** the request.

## How To Delete a Database

1. You will **prepare** your request to delete your newly created database :
`DROP DATABASE dbname`
2. You will **prepare** your request by adding an *if* condition, testing whether the DB exists or not :
3. `DROP DATABASE IF EXISTS dbname`
4. You may **execute** the request.

## Exercice
1. Create your working database.

# Creating Tables

## How To Create a Table

1. Select your DB in MySQL Workbench to be able to work with it.
2. You can create a Table by **preparing** the following instructions :

```
    CREATE TABLE TableName (
        id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
        field1 VARCHAR(40) NOT NULL,
        field2 CHAR(1),
        field3 DATETIME NOT NULL,
        field4 VARCHAR(30),
        field5 TEXT,
        PRIMARY KEY (id)
    )
    ENGINE=INNODB;
```

4. Do not forget to verify if the table exists : you may want to create the table only if it **doesn't** exists : `CREATE TABLE IF NOT EXISTS TableName ...`. **Execute** your request when it is correct.

3. Verify that the request works by showing tables as so : `SHOW TABLES;`

## How To Delete a Table

1. You can delete your table by **preparing** `DROP TABLE TableName;`.
2. Edit your request to verify `IF EXISTS` then **execute** your request.


## Exercices
> PK stands for **Primary Key**
### 1. **Prepare** the request to create the following tables **without foreign keys** :

**Artiste :** id (PK), nom, prénom.
**Disque :** code (PK), libellé, année. 
> Le code est la clé primaire de la relation. Attention au type de données du code !

**Morceaux :**  id (PK), numero du morceau dans l'album, nom du morceau.

**Emprunteur:** id (PK), nom, prénom, âge, ville où il habite, nombre d’heures enseignées.
**Adresse:** id (PK), nom et numéro de rue, nom de la ville, code postal.

### 2. Add the relationships :

1. Add (1-n) relationships to existing tables :
**Disque :** id_artiste (FK)
**Morceaux :**  id_disque (FK)
**Emprunteur:** id_adresse (FK)

2. Create a new table for the (n-n) relationship :
**EmprunteurDisque:** id_emprunteur, code_disque
