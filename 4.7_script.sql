SELECT
    o.id AS order_number,
    o.date AS order_date,
    s.name AS order_shipper,
    CONCAT(emp.last_name, ' ', emp.first_name) AS order_manager,
    c.name AS order_customer,
    CONCAT(p.name, ' (', p.unit, ')') AS product,
    od.quantity AS product_quantity,
    cat.name AS product_category,
    sup.name AS product_supplier
FROM order_details AS od
LEFT JOIN products AS p ON od.product_id = p.id
RIGHT JOIN orders AS o ON od.order_id = o.id
LEFT JOIN shippers AS s ON o.shipper_id = s.id
LEFT JOIN customers AS c ON o.customer_id = c.id
LEFT JOIN employees AS emp ON o.employee_id = emp.employee_id
LEFT JOIN suppliers AS sup ON p.supplier_id = sup.id
LEFT JOIN categories AS cat ON p.category_id = cat.id
ORDER BY order_date
LIMIT 4
OFFSET 1;