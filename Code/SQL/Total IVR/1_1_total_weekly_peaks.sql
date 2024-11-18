SELECT
	DATE_TRUNC('week', date) AS week_start,
    (   SUM(already_submitted_application) +
        SUM(status_of_ticket_application) +
        SUM(connection_with_agent) +
        SUM(how_to_check_the_status) +
        SUM(how_to_complete_or_submit_an_application) +
        SUM(ticket_application_process) +
        SUM(online_process) +
        SUM(household_restrictions) +
        SUM(other_information_for_the_process) +
        SUM(the_personal_details) +
        SUM(types_of_accessibility_tickets) +
        SUM(household_restrictions_2) +
        SUM(information_about_ticket_sales) +
        SUM(ticket_products) +
        SUM(sales_phases) +
        SUM(ticket_categories) +
        SUM(ticket_prices) +
        SUM(confirmed_tickets) +
        SUM(payment_methods) +
        SUM(payment_methods_2) +
        SUM(any_other_enquires) +
        SUM(cancellation_and_resale) +
        SUM(household_restrictions_3) +
        SUM(matches) +
        SUM(legal_documents) +
        SUM(connection_with_agent_2) +
        SUM(fan_id) +
        SUM(health_and_safety_measures)
    ) AS instances
FROM 
    total_ivr
GROUP BY 
    DATE_TRUNC('week', date)
ORDER BY 
    instances DESC;