select distinct maker, speed
from Product p join Laptop l on p.model=l.model
where hd>=10
