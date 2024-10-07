-- Stage 4: Identify manufacturers producing both PCs and laptops.
-- This query counts the number of PC-type and Laptop-type models produced
-- by each manufacturer (maker) in the Product table. It uses conditional 
-- aggregation to count the models and filters the results to include only 
-- those makers that produce both types.

SELECT 
    maker,
    SUM(CASE WHEN type = 'PC' THEN 1 ELSE 0 END) AS pc_count,
    SUM(CASE WHEN type = 'Laptop' THEN 1 ELSE 0 END) AS laptop_count
FROM 
    Product
GROUP BY 
    maker
HAVING 
    pc_count > 0 AND laptop_count > 0;
