select maker, count(model) as count_model
from product
where type='PC'
group by maker
having count(model) > 2
