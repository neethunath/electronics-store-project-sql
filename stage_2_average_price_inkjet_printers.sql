-- Stage 2: Identify the average price of Inkjet printers that are color ('C').
-- This query calculates the average price of printers with 'Inkjet' type 
-- and 'C' color (Color printers). The result is rounded to 2 decimal places.

SELECT 
    ROUND(AVG(price), 2) AS average_price
FROM 
    Printer
WHERE 
    type = 'Inkjet'
    AND color = 'C';

