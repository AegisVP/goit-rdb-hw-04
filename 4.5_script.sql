SELECT
    cat.name AS category_name,
    COUNT(od.id) AS products_ordered,
    AVG(od.quantity) AS average_products
FROM order_details AS od
JOIN products AS p ON od.product_id = p.id
LEFT JOIN categories AS cat ON p.category_id = cat.id
GROUP BY cat.name
HAVING average_products > 21;