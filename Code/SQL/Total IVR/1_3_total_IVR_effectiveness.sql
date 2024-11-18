WITH ivr_vs_agent AS (
    SELECT
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
            types_of_accessibility_tickets
        ) AS ivr_resolved,
        SUM(
            connection_with_agent +
            connection_with_agent_2
        ) AS agent_escalations,
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
        ) AS interactions
    FROM total_ivr
)
SELECT
    ivr_resolved,
    agent_escalations,
    interactions,
    (ivr_resolved * 100.0 / interactions) AS ivr_effectiveness_percentage,
    (agent_escalations * 100.0 / interactions) AS agent_escalation_percentage
FROM ivr_vs_agent;