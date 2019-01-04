# Exercices

## SQLBolt
### 8.2
```
select *
from buildings
where not exists 
        (select distinct building
        from employees
        where building_name = building)
 
```
