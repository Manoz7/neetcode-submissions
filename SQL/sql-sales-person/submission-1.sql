-- Write your query below
select sp.name 
from sales_person sp
where sp.sales_id NOT IN (
    select o.sales_id
    from orders o 
    join company c on o.com_id = c.com_id
    where c.name = 'CRIMSON'
)



