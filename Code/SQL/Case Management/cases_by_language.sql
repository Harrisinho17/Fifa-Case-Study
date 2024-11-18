SELECT 
	SUM(german)  as german_cases,
	SUM(english) as english_cases,
	SUM(spanish) as spanish_cases,
	SUM(french) as french_cases,
	SUM(arabic) as arabic_cases
FROM case_management;