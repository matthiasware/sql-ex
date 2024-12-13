select Ships.class, Ships.name, Classes.country
from Ships
left join Classes on Ships.class=Classes.class
where Classes.numGuns>=10
