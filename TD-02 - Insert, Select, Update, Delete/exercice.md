# Inserting Data

## How To Insert Data

```
INSERT INTO Table (field1, field2, field3)
VALUES ('val1', 'val2, '2019-01-02 12:00:00');

/* Multiple Insert : */

INSERT INTO Table (field1, field2, field3)
VALUES ('val1', 'val2, '2019-01-02 12:00:00'),
('val1', 'val2, '2019-01-02 12:00:00'),
('val1', 'val2, '2019-01-02 12:00:00')
('val1', 'val2, '2019-01-02 12:00:00');
```


## Exercice

# Selecting Data

## How To Select Data

```
SELECT DISTINCT field1, field2
FROM Table
WHERE field1 LIKE '%something%'
AND field2=3
ORDER BY field2
LIMIT 0, 100
```


## Exercice

# Updating Data

## How To Update Data

```
UPDATE Table
SET field1 = val1, field2 = val2
WHERE ...
```

## Exercice

# Deleting Data

## How To Delete Data

```
DELETE FROM Table
WHERE ...
```

## Exercice

