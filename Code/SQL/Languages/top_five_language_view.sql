CREATE OR REPLACE VIEW five_language_ivr_total AS
SELECT
    date,
    SUM(already_submitted_application) AS total_already_submitted_application,
    SUM(status_of_ticket_application) AS total_status_of_ticket_application,
    SUM(connection_with_agent) AS total_connection_with_agent,
    SUM(how_to_check_the_status) AS total_how_to_check_the_status,
    SUM(return_to_main_menu) AS total_return_to_main_menu,
    SUM(how_to_complete_or_submit_an_application) AS total_how_to_complete_or_submit_an_application,
    SUM(ticket_application_process) AS total_ticket_application_process,
    SUM(online_process) AS total_online_process,
    SUM(household_restrictions) AS total_household_restrictions,
    SUM(other_information_for_the_process) AS total_other_information_for_the_process,
    SUM(the_personal_details) AS total_the_personal_details,
    SUM(types_of_accessibility_tickets) AS total_types_of_accessibility_tickets,
    SUM(household_restrictions_2) AS total_household_restrictions_2,
    SUM(return_to_main_menu_2) AS total_return_to_main_menu_2,
    SUM(information_about_ticket_sales) AS total_information_about_ticket_sales,
    SUM(ticket_products) AS total_ticket_products,
    SUM(sales_phases) AS total_sales_phases,
    SUM(ticket_categories) AS total_ticket_categories,
    SUM(ticket_prices) AS total_ticket_prices,
    SUM(confirmed_tickets) AS total_confirmed_tickets,
    SUM(return_to_main_menu_3) AS total_return_to_main_menu_3,
    SUM(payment_methods) AS total_payment_methods,
    SUM(payment_methods_2) AS total_payment_methods_2,
    SUM(return_to_main_menu_4) AS total_return_to_main_menu_4,
    SUM(any_other_enquires) AS total_any_other_enquires,
    SUM(cancellation_and_resale) AS total_cancellation_and_resale,
    SUM(household_restrictions_3) AS total_household_restrictions_3,
    SUM(matches) AS total_matches,
    SUM(legal_documents) AS total_legal_documents,
    SUM(connection_with_agent_2) AS total_connection_with_agent_2,
    SUM(fan_id) AS total_fan_id,
    SUM(health_and_safety_measures) AS total_health_and_safety_measures,
    SUM(return_to_main_menu_5) AS total_return_to_main_menu_5
FROM (
    SELECT * FROM arabic_ivr
    UNION ALL
    SELECT * FROM english_ivr
    UNION ALL
    SELECT * FROM french_ivr
    UNION ALL
    SELECT * FROM german_ivr
    UNION ALL
    SELECT * FROM spanish_ivr
) combined_data
GROUP BY date;