select product.maker, max(pc.price)
from pc
join product
on pc.model=product.model
group by product.maker
