-- Write your query below
SELECT employee_id,
CASE 
    when employee_id %2 != 0 AND name NOT LIKE 'M%' THEN salary
    ELSE 0
END AS bonus
FROM EMPLOYEES
ORDER BY employee_id;