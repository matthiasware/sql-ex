with color_printers as (
select *
from
    printer
where
    color='y'
)
select distinct product.maker, printer.price
from
    color_printers as printer
join
    product
on
    printer.model = product.model
where
    price=(select min(price) from color_printers)
