-- Stage 1: Identify PCs with 16 GB of RAM or more.
-- The results are ordered by RAM (ascending)
-- and speed (descending) to show higher speeds within the same RAM capacity.

SELECT 
    pc_code, model, speed, ram
FROM 
    PC
WHERE 
    ram >= 16
ORDER BY 
    ram, speed DESC;
