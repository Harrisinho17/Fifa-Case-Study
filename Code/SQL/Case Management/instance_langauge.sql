SELECT 
    SUM(german) AS german_total,
    SUM(english) AS english_total,
    SUM(spanish) AS spanish_total,
    SUM(french) AS french_total,
	SUM(arabic) AS arabic_total 
FROM 
  	case_management;