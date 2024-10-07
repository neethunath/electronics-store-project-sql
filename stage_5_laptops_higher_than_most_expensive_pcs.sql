-- Stage 5: Identify laptops priced higher than any PC.
-- This query selects laptop models and their prices along with the maker from 
-- the Product table. It also calculates the price difference between each laptop
-- and the most expensive PC, as well as the difference between each laptop and 
-- the average laptop price. The results are sorted by laptop price in descending order.

SELECT 
    L.model AS laptop_model, 
    P.maker AS laptop_maker, 
    L.price AS laptop_price, 
    L.price - (SELECT MAX(price) FROM PC) AS price_difference_max_pc, 
    L.price - (SELECT AVG(price) FROM Laptop) AS price_difference_avg_laptop
FROM 
    Laptop L
JOIN 
    Product P ON L.model = P.model
WHERE 
    L.price > (SELECT MAX(price) FROM PC)
ORDER BY 
    L.price DESC;
