WITH language_totals AS (
    SELECT
        'Arabic' AS language,
        SUM(
            already_submitted_application +
            status_of_ticket_application +
            how_to_check_the_status +
            ticket_application_process +
            ticket_prices +
            payment_methods +
            online_process +
            information_about_ticket_sales +
            sales_phases +
            ticket_categories +
            ticket_products +
            health_and_safety_measures +
            household_restrictions +
            types_of_accessibility_tickets +
            connection_with_agent +
            connection_with_agent_2
        ) AS total_interactions
    FROM arabic_ivr
    UNION ALL
    SELECT
        'English' AS language,
        SUM(
            already_submitted_application +
            status_of_ticket_application +
            how_to_check_the_status +
            ticket_application_process +
            ticket_prices +
            payment_methods +
            online_process +
            information_about_ticket_sales +
            sales_phases +
            ticket_categories +
            ticket_products +
            health_and_safety_measures +
            household_restrictions +
            types_of_accessibility_tickets +
            connection_with_agent +
            connection_with_agent_2
        ) AS total_interactions
    FROM english_ivr
    UNION ALL
    SELECT
        'French' AS language,
        SUM(
            already_submitted_application +
            status_of_ticket_application +
            how_to_check_the_status +
            ticket_application_process +
            ticket_prices +
            payment_methods +
            online_process +
            information_about_ticket_sales +
            sales_phases +
            ticket_categories +
            ticket_products +
            health_and_safety_measures +
            household_restrictions +
            types_of_accessibility_tickets +
            connection_with_agent +
            connection_with_agent_2
        ) AS total_interactions
    FROM french_ivr
    UNION ALL
    SELECT
        'German' AS language,
        SUM(
            already_submitted_application +
            status_of_ticket_application +
            how_to_check_the_status +
            ticket_application_process +
            ticket_prices +
            payment_methods +
            online_process +
            information_about_ticket_sales +
            sales_phases +
            ticket_categories +
            ticket_products +
            health_and_safety_measures +
            household_restrictions +
            types_of_accessibility_tickets +
            connection_with_agent +
            connection_with_agent_2
        ) AS total_interactions
    FROM german_ivr
    UNION ALL
    SELECT
        'Spanish' AS language,
        SUM(
            already_submitted_application +
            status_of_ticket_application +
            how_to_check_the_status +
            ticket_application_process +
            ticket_prices +
            payment_methods +
            online_process +
            information_about_ticket_sales +
            sales_phases +
            ticket_categories +
            ticket_products +
            health_and_safety_measures +
            household_restrictions +
            types_of_accessibility_tickets +
            connection_with_agent +
            connection_with_agent_2
        ) AS total_interactions
    FROM spanish_ivr
),
total_interactions_sum AS (
    SELECT SUM(total_interactions) AS total_interactions_all FROM language_totals
)
SELECT
    l.language,
    l.total_interactions,
    (l.total_interactions * 100.0 / t.total_interactions_all) AS percentage_of_total
FROM language_totals l, total_interactions_sum t
ORDER BY percentage_of_total DESC;