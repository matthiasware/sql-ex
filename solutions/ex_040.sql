with all_maker as (
select maker
from Product
group by maker
having
 count(distinct type)=1
 and count(distinct model)>1
)

select distinct all_maker.maker, product.type
from all_maker join product on all_maker.maker=product.maker
