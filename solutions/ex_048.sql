with all_classes as (
select class, result
from classes join outcomes on classes.class=outcomes.ship

union

select classes.class, result
from classes join ships on classes.class=ships.class
join outcomes on ships.name=outcomes.ship
)
select distinct class from all_classes
where result='sunk'
