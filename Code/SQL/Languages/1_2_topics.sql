WITH topic_totals AS (
    SELECT
        'total_already_submitted_application' AS topic,
        SUM(total_already_submitted_application) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_status_of_ticket_application' AS topic,
        SUM(total_status_of_ticket_application) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_connection_with_agent' AS topic,
        SUM(
		total_connection_with_agent +
		total_connection_with_agent_2
		) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_how_to_check_the_status' AS topic,
        SUM(total_how_to_check_the_status) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_return_to_main_menu' AS topic,
        SUM(
            total_return_to_main_menu +
            total_return_to_main_menu_2 +
            total_return_to_main_menu_3 +
            total_return_to_main_menu_4 +
            total_return_to_main_menu_5
        ) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_how_to_complete_or_submit_an_application' AS topic,
        SUM(total_how_to_complete_or_submit_an_application) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_ticket_application_process' AS topic,
        SUM(total_ticket_application_process) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_online_process' AS topic,
        SUM(total_online_process) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_household_restrictions' AS topic,
        SUM(
		total_household_restrictions +
		total_household_restrictions_2 +
		total_household_restrictions_3
		) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_other_information_for_the_process' AS topic,
        SUM(total_other_information_for_the_process) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_the_personal_details' AS topic,
        SUM(total_the_personal_details) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_types_of_accessibility_tickets' AS topic,
        SUM(total_types_of_accessibility_tickets) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_information_about_ticket_sales' AS topic,
        SUM(total_information_about_ticket_sales) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_ticket_products' AS topic,
        SUM(total_ticket_products) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_sales_phases' AS topic,
        SUM(total_sales_phases) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_ticket_categories' AS topic,
        SUM(total_ticket_categories) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_ticket_prices' AS topic,
        SUM(total_ticket_prices) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_confirmed_tickets' AS topic,
        SUM(total_confirmed_tickets) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_payment_methods' AS topic,
        SUM(total_payment_methods + 
			total_payment_methods_2
		) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_any_other_enquires' AS topic,
        SUM(total_any_other_enquires) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_cancellation_and_resale' AS topic,
        SUM(total_cancellation_and_resale) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_matches' AS topic,
        SUM(total_matches) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_legal_documents' AS topic,
        SUM(total_legal_documents) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_fan_id' AS topic,
        SUM(total_fan_id) AS total_interactions
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'total_health_and_safety_measures' AS topic,
        SUM(total_health_and_safety_measures) AS total_interactions
    FROM five_language_ivr_total
)
SELECT
    topic,
    total_interactions
FROM topic_totals
ORDER BY total_interactions DESC;
