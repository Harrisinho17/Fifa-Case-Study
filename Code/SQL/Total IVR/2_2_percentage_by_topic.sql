WITH topic_totals AS (
    SELECT
        'already_submitted_application' AS topic,
        SUM(already_submitted_application) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'status_of_ticket_application' AS topic,
        SUM(status_of_ticket_application) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'connection_with_agent' AS topic,
        SUM(
            connection_with_agent +
            connection_with_agent_2
        ) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'how_to_check_the_status' AS topic,
        SUM(how_to_check_the_status) AS total_interactions
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
        ) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'how_to_complete_or_submit_an_application' AS topic,
        SUM(how_to_complete_or_submit_an_application) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'ticket_application_process' AS topic,
        SUM(ticket_application_process) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'online_process' AS topic,
        SUM(online_process) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'household_restrictions' AS topic,
        SUM(
            household_restrictions +
            household_restrictions_2 +
            household_restrictions_3
        ) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'other_information_for_the_process' AS topic,
        SUM(other_information_for_the_process) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'the_personal_details' AS topic,
        SUM(the_personal_details) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'types_of_accessibility_tickets' AS topic,
        SUM(types_of_accessibility_tickets) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'information_about_ticket_sales' AS topic,
        SUM(information_about_ticket_sales) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'ticket_products' AS topic,
        SUM(ticket_products) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'sales_phases' AS topic,
        SUM(sales_phases) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'ticket_categories' AS topic,
        SUM(ticket_categories) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'ticket_prices' AS topic,
        SUM(ticket_prices) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'confirmed_tickets' AS topic,
        SUM(confirmed_tickets) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'payment_methods' AS topic,
        SUM(
            payment_methods +
            payment_methods_2
        ) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'any_other_enquires' AS topic,
        SUM(any_other_enquires) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'cancellation_and_resale' AS topic,
        SUM(cancellation_and_resale) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'matches' AS topic,
        SUM(matches) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'legal_documents' AS topic,
        SUM(legal_documents) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'fan_id' AS topic,
        SUM(fan_id) AS total_interactions
    FROM total_ivr
    UNION ALL
    SELECT
        'health_and_safety_measures' AS topic,
        SUM(health_and_safety_measures) AS total_interactions
    FROM total_ivr
),
total_interactions_sum AS (
    SELECT SUM(total_interactions) AS total_interactions_all FROM topic_totals
)
SELECT
    t.topic,
    t.total_interactions,
    (t.total_interactions * 100.0 / ts.total_interactions_all) AS percentage_of_total
FROM topic_totals t, total_interactions_sum ts
ORDER BY percentage_of_total DESC;