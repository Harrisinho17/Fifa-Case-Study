WITH topic_variability AS (
    SELECT
        'already_submitted_application' AS topic,
        STDDEV(total_already_submitted_application) AS variability
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'status_of_ticket_application' AS topic,
        STDDEV(total_status_of_ticket_application) AS variability
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'connection_with_agent' AS topic,
          STDDEV(
		total_connection_with_agent +
		total_connection_with_agent_2
		) AS variability
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'how_to_check_the_status' AS topic,
        STDDEV(total_how_to_check_the_status) AS variability
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'return_to_main_menu' AS topic,
        STDDEV(
            total_return_to_main_menu +
            total_return_to_main_menu_2 +
            total_return_to_main_menu_3 +
            total_return_to_main_menu_4 +
            total_return_to_main_menu_5
        ) AS variability
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'how_to_complete_or_submit_an_application' AS topic,
        STDDEV(total_how_to_complete_or_submit_an_application) AS variability
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'ticket_application_process' AS topic,
        STDDEV(total_ticket_application_process) AS variability
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'online_process' AS topic,
        STDDEV(total_online_process) AS variability
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'household_restrictions' AS topic,
        STDDEV(
		total_household_restrictions +
		total_household_restrictions_2 +
		total_household_restrictions_3
		)  AS variability
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'other_information_for_the_process' AS topic,
        STDDEV(total_other_information_for_the_process) AS variability
    FROM five_language_ivr_total
    UNION ALL
    SELECT
        'the_personal_details' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
     UNION ALL
    SELECT
        'types_of_accessibility_tickets' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL

    SELECT
        'information_about_ticket_sales' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL
    SELECT
        'ticket_products' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL
    SELECT
        'sales_phases' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL
    SELECT
        'ticket_categories' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL
    SELECT
        'ticket_prices' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL
    SELECT
        'confirmed_tickets' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL

    SELECT
        'payment_methods' AS topic,
         STDDEV(total_payment_methods + 
			total_payment_methods_2
		) AS variability
    FROM five_language_ivr_total
	 UNION ALL

    SELECT
        'any_other_enquireis' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL
    SELECT
        'cancellation_and_resale' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL

    SELECT
        'matches' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL
    SELECT
        'legal_documents' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL

    SELECT
        'fan_id' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total
	 UNION ALL
    SELECT
        'health_and_safety_measures' AS topic,
        STDDEV(total_the_personal_details) AS variability
    FROM five_language_ivr_total


)
SELECT
    topic,
    variability
FROM topic_variability
ORDER BY variability DESC
LIMIT 5;