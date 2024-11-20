SELECT 
    EXTRACT(MONTH FROM a.date) AS month,
    SUM(a.instances) AS total_instances_2022,
    SUM(b.instances) AS total_instances_2023,
    (SUM(b.instances) - SUM(a.instances)) AS difference,
    CASE 
        WHEN SUM(a.instances) = 0 THEN NULL -- Avoid division by zero
        ELSE ((SUM(b.instances) - SUM(a.instances)) / SUM(a.instances)) * 100 
    END AS yoy_growth_percent
FROM 
    total_ivr_instances_22 a
LEFT JOIN 
    total_ivr_instances_23 b
ON 
    EXTRACT(MONTH FROM a.date) = EXTRACT(MONTH FROM b.date) 
    AND EXTRACT(DAY FROM a.date) = EXTRACT(DAY FROM b.date) 
GROUP BY 
    EXTRACT(MONTH FROM a.date)
ORDER BY 
    month;