SELECT 
    (SELECT COUNT(id) FROM orders) AS total_orders,
    (SELECT COUNT(id) FROM order_details) AS items_sold;