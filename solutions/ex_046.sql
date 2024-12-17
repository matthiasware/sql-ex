select
 distinct o.ship,
 c.displacement,
 c.numGuns
from
 Classes c
JOIN ships s
ON
	c.class = s.class
right JOIN Outcomes o
ON
	s.name = o.ship
	OR c.class = o.ship
WHERE
	o.battle = 'Guadalcanal'
