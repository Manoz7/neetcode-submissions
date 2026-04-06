-- Write your query below

    SELECT s.seller_name
        from seller s 
        where not exists (
            select 1 
            from orders o
            where o.seller_id = s.seller_id
            and o.sale_date >= '2020-01-01'
            and o.sale_date <= '2020-12-31'
        )
    order by s.seller_name ASC



