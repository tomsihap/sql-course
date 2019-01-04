# Using MySQL's Sakila Example
## Exercices
1. Dans combien de films a joué chaque acteur ?

```
select actor.first_name, actor.last_name, COUNT(*)

from film_actor /* Table de jointure */
inner join film on film_actor.film_id = film.film_id /* Jointure vers table A */
inner join actor on film_actor.actor_id = actor.actor_id /* Jointure vers table B */

group by actor.actor_id /* On groupe par acteur */

order by actor.last_name /* On trie par nom d'acteur */
```
```


2. Combien de fois ont été loués chaque films ?

```

```
