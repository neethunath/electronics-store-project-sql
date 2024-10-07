-- Stage 6: Identify the second most expensive PCs based on RAM capacity.
-- This query retrieves PC details such as pc_code, model, speed, ram, 
-- hd, cd, and price from the PC table. It uses the RANK() window function 
-- to rank PCs within partitions defined by their RAM capacity and selects 
-- those with a rank of 2 (i.e., second most expensive for each RAM value).

SELECT 
    pc_code, 
    model, 
    speed, 
    ram, 
    hd, 
    cd, 
    price
FROM (
    SELECT 
        pc_code, 
        model, 
        speed, 
        ram, 
        hd, 
        cd, 
        price, 
        RANK() OVER (PARTITION BY ram ORDER BY price DESC) AS price_rank
    FROM 
        PC
) AS ranked_pcs
WHERE 
    price_rank = 2;
