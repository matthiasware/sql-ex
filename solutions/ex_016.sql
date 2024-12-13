select distinct t1.model, t2.model, t1.speed, t1.ram
from PC as t1, PC as t2
where
    t1.ram=t2.ram and
    t1.speed=t2.speed and
    t1.model>t2.model
