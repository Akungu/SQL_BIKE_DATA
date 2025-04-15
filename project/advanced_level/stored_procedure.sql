--24. Create a procedure to get total sales for a store.

CREATE OR REPLACE PROCEDURE get_total_sales(p_store_id int)
LANGUAGE plpgsql
AS $$
DECLARE
v_total_sales NUMERIC;
v_store_name VARCHAR(20);


BEGIN
SELECT ROUND(SUM(quantity * (list_price - discount))) AS total_sales,
       store_name
       
    INTO
    v_total_sales,
    v_store_name
 FROM order_items
LEFT JOIN orders ON order_items.order_id=orders.order_id
LEFT JOIN stores ON orders.store_id=stores.store_id
WHERE orders.store_id = p_store_id

GROUP BY store_name;

RAISE NOTICE 'Total sales for store % (%): %', p_store_id, v_store_name, v_total_sales;

END;
$$;

CALL get_total_sales(2);

