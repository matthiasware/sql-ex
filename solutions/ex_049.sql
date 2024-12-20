with ship_bores as (
select
  s.name as ship,
  c.bore
from
  classes c
join ships s
on
  c.class=s.class

union

select
  o.ship,
  c.bore
from
  outcomes o
join
  classes c
on
  c.class=o.ship
)
select ship
from ship_bores
where bore='16.0'
