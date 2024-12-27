select distinct p.type, l.model, l.speed
from laptop l
join product p
on p.model=l.model
where l.speed<(select min(pc.speed) from pc)s



with min_price as (
    select
    min(price)
    from
    printer
    where
    color='y'
    )
select * from min_price