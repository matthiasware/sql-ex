with allq as (select income.point, income.date, out, inc
from income left join
outcome on income.point = outcome.point and
income.date = outcome.date and income.code= outcome.code

union all

select outcome.point, outcome.date, out, inc
from outcome left join
income on income.point = outcome.point and
	income.date = outcome.date and income.code=outcome.code)

select point, date, sum(out) as out, sum(inc) as inc
from allq
group by point, date
