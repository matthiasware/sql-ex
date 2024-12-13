select Income_o.point, Income_o.date, inc, out
from Income_o
left join Outcome_o on
 Income_o.date=Outcome_o.date and
 Income_o.point=Outcome_o.point

union

select Outcome_o.point, Outcome_o.date, inc, out
from Outcome_o
left join Income_o on
 Income_o.date=Outcome_o.date and
 Income_o.point=Outcome_o.point
