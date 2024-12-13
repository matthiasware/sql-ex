select model, speed, hd
from PC
where
    price<600
    and (cd='12x' or cd='24x')
