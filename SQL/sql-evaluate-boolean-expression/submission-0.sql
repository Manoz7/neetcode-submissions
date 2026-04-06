-- Write your query below
select 
    e.left_operand, 
    e.operator, 
    e.right_operand,
    CASE
        WHEN e.operator = '>' THEN a.value > b.value
        WHEN e.operator = '<' THEN a.value < b.value
        WHEN e.operator = '=' THEN a.value = b.value
        ELSE 'false'
    END AS value
from expressions e
join variables a on e.left_operand = a.name
join variables b on e.right_operand = b.name