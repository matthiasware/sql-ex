with all_ships as (
    select ships.name, classes.numGuns, classes.displacement
    from ships
    join classes
    on classes.class = ships.class

    union

    select outcomes.ship as name, classes.numGuns, classes.displacement
    from outcomes
    join classes
    on classes.class = outcomes.ship
),
max_vals as (
    select max(numGuns) as maxGuns, displacement
    from all_ships
    group by displacement
)
select name
from max_vals
join all_ships
    on max_vals.maxGuns=all_ships.numGuns
    and max_vals.displacement=all_ships.displacement
