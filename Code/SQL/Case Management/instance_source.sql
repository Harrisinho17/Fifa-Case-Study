SELECT 
	SUM(email) AS email_year_total,
	SUM(phone) AS phone_year_total,
	SUM(portal) AS portal_year_total,
	SUM(IVR) AS ivr_year_total
FROM case_management;