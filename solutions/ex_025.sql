with max_speed_pc as (
  select max(speed) as 'speed'
  from pc
  where ram in (select min(ram) from pc)
)

select distinct p.maker
from pc
inner join product p on pc.model = p.model
where
  speed in (select speed from max_speed_pc)
  and ram in (select min(ram) from pc)

intersect

select maker
from product
where type='Printer'
