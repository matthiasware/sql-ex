select avg(speed)
from PC
left join Product on Products.model=PC.model
where Product.maker='A'
