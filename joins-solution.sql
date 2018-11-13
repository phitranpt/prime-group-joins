--Base Mode

-- Get all customers and their addresses.

-- SELECT customers.first_name, addresses.street
-- FROM customers
-- JOIN addresses ON addresses.customer_id = customers.id;

-- Get all orders and their line items (orders, quantity and product).

-- SELECT orders.id, line_items.quantity, products.description FROM orders
-- JOIN line_items ON line_items.order_id = orders.address_id
-- JOIN products ON products.id = line_items.product_id;

-- Which warehouses have cheetos?

-- SELECT warehouse.warehouse, products.description FROM warehouse
-- JOIN warehouse_product ON warehouse_product.warehouse_id = warehouse.id
-- JOIN products ON products.id = warehouse_product.product_id
-- WHERE products.description = 'cheetos';

-- Which warehouses have diet pepsi?

-- SELECT warehouse.warehouse, products.description FROM warehouse
-- JOIN warehouse_product ON warehouse_product.warehouse_id = warehouse.id
-- JOIN products ON products.id = warehouse_product.product_id
-- WHERE products.description = 'diet pepsi';

-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

-- SELECT customers.first_name, SUM(line_items.quantity) FROM customers
-- JOIN addresses ON addresses.customer_id = customers.id
-- JOIN orders ON orders.address_id = addresses.id
-- JOIN line_items ON line_items.order_id = orders.id
-- GROUP BY customers.first_name;

-- How many customers do we have?

-- SELECT COUNT(customers.first_name) FROM customers;

-- How many products do we carry?

-- SELECT COUNT(products.id) FROM products;

-- What is the total available on-hand quantity of diet pepsi?

-- SELECT products.description, SUM(warehouse_product.on_hand) FROM products
-- JOIN warehouse_product ON warehouse_product.product_id = products.id
-- WHERE products.description = 'diet pepsi'
-- GROUP BY products.description;

-- Stretch Mode

-- How much was the total cost for each order?



-- How much has each customer spent in total?

-- How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).