-- Céation des tables
CREATE TABLE tb_customer_data (
    cust_id VARCHAR(10) PRIMARY KEY,
    cust_name VARCHAR(50),
    phone BIGINT,
    email VARCHAR(50),
    address VARCHAR(250)
);


CREATE TABLE tb_product_info (
    prod_id VARCHAR(10) PRIMARY KEY,
    prod_name VARCHAR(50),
    brand VARCHAR(50),
    price INTEGER
);



CREATE TABLE tb_order_details (
    od_id BIGINT PRIMARY KEY,
    prod_id VARCHAR(10),
    quantity INTEGER,
    cust_id VARCHAR(10),
    disc_percent INTEGER,
    date DATE
);



select * from tb_order_details

