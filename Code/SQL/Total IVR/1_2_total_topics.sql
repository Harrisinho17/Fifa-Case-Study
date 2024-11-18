WITH topic_totals AS (
    SELECT
        'already_submitted_application' AS topic,
        SUM(already_submitted_application) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'status_of_ticket_application' AS topic,
        SUM(status_of_ticket_application) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'connection_with_agent' AS topic,
        SUM(
		connection_with_agent +
		connection_with_agent_2
		) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'how_to_check_the_status' AS topic,
        SUM(how_to_check_the_status) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'return_to_main_menu' AS topic,
        SUM(
            return_to_main_menu +
            return_to_main_menu_2 +
            return_to_main_menu_3 +
            return_to_main_menu_4 +
            return_to_main_menu_5
        ) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'how_to_complete_or_submit_an_application' AS topic,
        SUM(how_to_complete_or_submit_an_application) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'ticket_application_process' AS topic,
        SUM(ticket_application_process) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'online_process' AS topic,
        SUM(online_process) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'household_restrictions' AS topic,
        SUM(
		household_restrictions +
		household_restrictions_2 +
		household_restrictions_3
		) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'other_information_for_the_process' AS topic,
        SUM(other_information_for_the_process) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'the_personal_details' AS topic,
        SUM(the_personal_details) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'types_of_accessibility_tickets' AS topic,
        SUM(types_of_accessibility_tickets) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'information_about_ticket_sales' AS topic,
        SUM(information_about_ticket_sales) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'ticket_products' AS topic,
        SUM(ticket_products) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'sales_phases' AS topic,
        SUM(sales_phases) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'ticket_categories' AS topic,
        SUM(ticket_categories) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'ticket_prices' AS topic,
        SUM(ticket_prices) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'confirmed_tickets' AS topic,
        SUM(confirmed_tickets) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'payment_methods' AS topic,
        SUM(payment_methods + 
			payment_methods_2
		) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'any_other_enquires' AS topic,
        SUM(any_other_enquires) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'cancellation_and_resale' AS topic,
        SUM(cancellation_and_resale) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'matches' AS topic,
        SUM(matches) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'legal_documents' AS topic,
        SUM(legal_documents) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'fan_id' AS topic,
        SUM(fan_id) AS interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'health_and_safety_measures' AS topic,
        SUM(health_and_safety_measures) AS interactions
    FROM total_ivr
)
SELECT
    topic,
    interactions
FROM topic_totals
ORDER BY interactions DESC
LIMIT 5;