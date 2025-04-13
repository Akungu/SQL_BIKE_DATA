ALTER TABLE stocks DROP CONSTRAINT stocks_pkey;
ALTER TABLE stocks ADD PRIMARY KEY (store_id, product_id);