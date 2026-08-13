SELECT product_name, year, price
FROM Product p 
RIGHT JOIN Sale s
WHERE p.product_id = s.product_id;