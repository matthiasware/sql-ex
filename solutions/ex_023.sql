select maker
from Product
join PC on PC.model=Product.model
where PC.speed>=750

intersect

select maker
from Product
join Laptop on Laptop.model=Product.model
where Laptop.speed>=750
