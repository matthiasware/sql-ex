with all_ships as (
    select
        country,
        bore,
        name
    from
        classes c
    join
        ships s
    on
        c.class = s.class
    union
    select
        country,
        bore,
        ship as name
    from
        classes c
    join
        outcomes o
    on
        c.class = o.ship
)
select
    country,
    cast(avg(power(bore, 3.0)/ 2.0) as decimal (10,2)) as weight
from
    all_ships
group by
    country
order by
    weight desc