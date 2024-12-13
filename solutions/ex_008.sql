Select maker
from Product
where Product.type='PC'
except
select maker
from Product
where Product.type='Laptop'
