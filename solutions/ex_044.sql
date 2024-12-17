with all_ships as (
select name from ships
union
select ship from outcomes
)
select name
from all_ships
where name like 'R%'
