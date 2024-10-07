-- Stage 3: Identify the total price of all laptop models produced by each maker.
-- This query joins the Laptop and Product tables to find the total price of 
-- all laptops for each manufacturer (maker). The results are grouped by 
-- maker and sorted by total_price in ascending order.

SELECT 
    maker, 
    SUM(price) AS total_price
FROM 
    Laptop
JOIN 
    Product ON Laptop.model = Product.model
GROUP BY 
    maker
ORDER BY 
    total_price;
