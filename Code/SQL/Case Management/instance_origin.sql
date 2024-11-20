SELECT 
    SUM(domestic) AS domestic_total,
    SUM(international) AS international_total,
    SUM(unknown) AS unknown_total
FROM 
  	case_management;