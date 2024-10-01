SELECT COUNT(*) AS count
FROM order_details AS od
RIGHT JOIN orders AS o ON od.order_id = o.id
LEFT JOIN employees AS emp ON o.employee_id = emp.employee_id
WHERE emp.employee_id BETWEEN 3 AND 11
ORDER BY o.date;
