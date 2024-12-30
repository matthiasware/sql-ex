with all_class_battles as (
select s.class, o.battle
from ships s
join outcomes o
on s.name=o.ship

union

select c.class, o.battle
from outcomes o
join classes c
on c.class=o.ship
)
select distinct battle
from all_class_battles
where class='Kongo'
