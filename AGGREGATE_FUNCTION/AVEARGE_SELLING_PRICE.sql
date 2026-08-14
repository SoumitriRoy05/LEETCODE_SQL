select p.product_id, 
COALESCE(Round(SUM(p.price*u.units)/SUM(u.units),2),0) AS average_price
from Prices p
left join UnitsSold u
on p.product_id=u.product_id
AND u.purchase_date between p.start_date and p.end_date
GROUP BY p.product_id;