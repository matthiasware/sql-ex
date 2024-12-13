with overall as(
select price, maker
from pc p
join product pr on (p.model = pr.model)
where maker = 'A'

union all

select price, maker
from laptop l
join product pr on (l.model = pr.model)
where maker='A'
)
select avg(price)
from overall
