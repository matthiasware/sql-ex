with all_ships as (
select name
from Ships
where name=class

union

select ship
from Outcomes
where ship in (select class from Classes)
)
select distinct name from all_ships
