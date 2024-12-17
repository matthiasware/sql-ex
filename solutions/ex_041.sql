with all_models as (
select model, price from pc
union select model, price from laptop
union select model, price from printer
)
select
 maker,
 case
  when sum(case when price is null then 1 else 0 end) > 0
  then null else max(price) end
from product join all_models on product.model=all_models.model
group by maker
