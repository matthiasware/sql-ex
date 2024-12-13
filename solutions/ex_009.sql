select distinct maker
from Product
join PC
on PC.model=Product.model
where PC.speed>=450
