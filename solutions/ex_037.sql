with all_ships as (
select ship as name, class
from outcomes
join ships on ships.name=outcomes.ship

union

select ship as name, class
from outcomes
join classes on classes.class=outcomes.ship

union

select name, class
from ships
)
select class
from all_ships
group by
class
having count(class)=1
