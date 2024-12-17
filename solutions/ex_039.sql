with damaged_ships as (
 select *
 from outcomes join battles on battle=name
 where result = 'damaged'
)

select distinct ship
from damaged_ships
where exists (
 select *
 from outcomes join battles on battle=name
 where damaged_ships.ship=ship and damaged_ships.date<date
)
