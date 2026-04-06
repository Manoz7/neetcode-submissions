-- Write your query below
select name 
from sales_person 
where sales_id NOT IN (
    select s.sales_id
    from orders o 
    join sales_person s on o.sales_id = s.sales_id
    join company c on o.com_id = c.com_id
    where c.name = 'CRIMSON'
)



