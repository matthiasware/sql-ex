with all_ships_country as (
select
	c.country,
	s.name as name
from
	Classes c
join Ships s
on
	c.class = s.class
union
select
	c.country,
	o.ship as name
from
	Outcomes o
join Classes c
on
	c.class = o.ship),

country_ship_result as (
select
	allsc.country,
	allsc.name,
	case
		when o.result = 'sunk' then 1
		else 0
	end as result_sunk
from
	all_ships_country allsc
left join Outcomes O
on
	allsc.name = o.ship)

select
	distinct country
from
	country_ship_result
group by
	country
having
	count(distinct name) = sum(result_sunk)
