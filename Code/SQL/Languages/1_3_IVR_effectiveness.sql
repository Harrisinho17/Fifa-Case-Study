WITH ivr_vs_agent AS (
    SELECT
        SUM(
            total_already_submitted_application +
            total_status_of_ticket_application +
            total_how_to_check_the_status +
            total_ticket_application_process +
            total_ticket_prices +
            total_payment_methods +
            total_online_process +
            total_information_about_ticket_sales +
            total_sales_phases +
            total_ticket_categories +
            total_ticket_products +
            total_health_and_safety_measures +
            total_household_restrictions +
            total_types_of_accessibility_tickets
        ) AS total_ivr_resolved,
        SUM(
            total_connection_with_agent +
            total_connection_with_agent_2
        ) AS total_agent_escalations,
        SUM(
            total_already_submitted_application +
            total_status_of_ticket_application +
            total_how_to_check_the_status +
            total_ticket_application_process +
            total_ticket_prices +
            total_payment_methods +
            total_online_process +
            total_information_about_ticket_sales +
            total_sales_phases +
            total_ticket_categories +
            total_ticket_products +
            total_health_and_safety_measures +
            total_household_restrictions +
            total_types_of_accessibility_tickets +
            total_connection_with_agent +
            total_connection_with_agent_2
        ) AS total_interactions
    FROM five_language_ivr_total
)
SELECT
    total_ivr_resolved,
    total_agent_escalations,
    total_interactions,
    (total_ivr_resolved * 100.0 / total_interactions) AS ivr_effectiveness_percentage,
    (total_agent_escalations * 100.0 / total_interactions) AS agent_escalation_percentage
FROM ivr_vs_agent;