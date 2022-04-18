#customer_num
#order_num
#order_num
#part_num
#sales_rep_num

USE premier_products;
SELECT * FROM customer, order_line, orders, part, sales_rep;
SELECT last_name, first_name, sales_rep_num, city FROM sales_rep;
SELECT order_num, customer_num FROM orders;
SELECT * FROM order_line limit 2;
SELECT * FROM customer WHERE sales_rep_num = 20;
SELECT customer_name, balance, credit_limit FROM customer WHERE sales_rep_num = 20;
SELECT part_num, num_ordered, quoted_price, num_ordered * quoted_price as total_price FROM order_line WHERE order_num = 21617 limit 1;
SELECT order_num FROM orders WHERE order_date >= 2010-10-20 and order_date <= 2010-10-22;
SELECT part_num from part WHERE part_description like 'D%' and '%er';
SELECT sum(balance) FROM customer;
SELECT min(balance) FROM customer;
SELECT count(*) FROM customer;
SELECT order_num FROM order_line WHERE (quoted_price < 500) and (quoted_price > 1000);
SELECT customer_name, last_name, first_name FROM customer, sales_rep, sales_rep WHERE customer.sales_rep_num = sales_rep.sales_rep_num;