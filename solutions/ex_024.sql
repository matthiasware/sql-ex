with all_devices as
(select price, model from PC
union
select price, model from Laptop
union
select price, model from Printer
)
select model from all_devices
where price=(select max(price) from all_devices)
