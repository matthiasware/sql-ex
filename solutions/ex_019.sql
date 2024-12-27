select maker, avg(screen)
from product
join laptop
on product.model=laptop.model
group by
    maker
