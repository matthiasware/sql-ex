with printer_maker as (
select distinct maker from Product where type = 'Printer'
)

select Product.maker, avg(PC.hd) as Avg_hd
from PC
join Product on Product.model=PC.model
where Product.maker in (select maker from printer_maker)
group by Product.maker
