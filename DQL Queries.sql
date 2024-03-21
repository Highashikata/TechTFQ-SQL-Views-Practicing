select * from tb_customer_data;
select * from tb_order_details;
select * from tb_product_info;


--- Creating the View
CREATE VIEW order_summary
AS
  SELECT o.od_id,
         o.DATE,
         p.prod_name,
         c.cust_name,
         ( p.price * o.quantity ) - (
         ( p.price * o.quantity ) * disc_percent :: FLOAT / 100 ) AS cost
  FROM   tb_customer_data c
         join tb_order_details o
           ON o.cust_id = c.cust_id
         join tb_product_info p
           ON p.prod_id = o.prod_id; 



---- Fetching the view
select * from order_summary;



----- create view of expensive products
create view product_status_price as
SELECT *,
       CASE
         WHEN price < 500 THEN 'Cheap'
         WHEN price >= 500 THEN 'Expensive'
       END AS prod_status
FROM   tb_product_info
WHERE  price > 1000; 


create view testdemo as
select distinct * from product_status_price; 


select * from product_status_price



