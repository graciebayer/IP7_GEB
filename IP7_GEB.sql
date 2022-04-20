USE premier_products;
SELECT * FROM City;
SELECT * FROM Country;
SELECT * FROM CountryLanguage;
SELECT * FROM customer;
SELECT * FROM order_line;
SELECT * FROM orders;
SELECT * FROM part;
SELECT * FROM sales_rep;
SELECT last_name, first_name, sales_rep_num, city FROM sales_rep;
SELECT order_num, customer_num FROM orders;
SELECT * FROM orders WHERE rownum <= 2;
SELECT * FROM customer WHERE sales_rep_num = 20;
SELECT customer_name, balance, credit_limit FROM customer
WHERE sales_rep_num = 20;
SELECT part_num, num_ordered, quoted_price, num_ordered*quoted_price
FROM order_line WHERE num_ordered=1 and order_num=21617;
SELECT * FROM orders WHERE order_date>='2010-10-20' 
and order_date<='2010-10-22';
SELECT * FROM part WHERE part_description like "D%" and 
part_description like "%er";
SELECT all(balance) FROM customer;
SELECT min(balance) FROM customer;
SELECT count(*) FROM customer;
SELECT order_num FROM order_line WHERE quoted_price>500 and 
quoted_price<1000;
CREATE table FROM customer and sales_rep WHERE customer.customer_name and 
sales_rep.last_name, sales_rep.first_name