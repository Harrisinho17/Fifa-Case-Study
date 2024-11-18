CREATE VIEW total_cases_view AS
SELECT 
    SUM(new_cases) AS new_cases_total,
    SUM(email) AS email_total,
    SUM(phone) AS phone_total,
    SUM(portal) AS portal_total,
    SUM(ivr) AS ivr_total,
    SUM(german) AS german_total,
    SUM(english) AS english_total,
    SUM(spanish) AS spanish_total,
    SUM(french) AS french_total,
    SUM(arabic) AS arabic_total,
    SUM(domestic) AS domestic_total,
    SUM(international) AS international_total,
    SUM(unknown) AS unknown_total
FROM 
    case_management;

