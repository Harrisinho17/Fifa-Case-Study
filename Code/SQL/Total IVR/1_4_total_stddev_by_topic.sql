WITH topic_variability AS (
    SELECT
        'already_submitted_application' AS topic,
        STDDEV(already_submitted_application) AS variability
    from total_ivr
    UNION ALL
    SELECT
        'status_of_ticket_application' AS topic,
        STDDEV(status_of_ticket_application) AS variability
    from total_ivr
    UNION ALL
    SELECT
        'connection_with_agent' AS topic,
          STDDEV(
		connection_with_agent +
		connection_with_agent_2
		) AS variability
    from total_ivr
    UNION ALL
    SELECT
        'how_to_check_the_status' AS topic,
        STDDEV(how_to_check_the_status) AS variability
    from total_ivr
    UNION ALL
    SELECT
        'return_to_main_menu' AS topic,
        STDDEV(
            return_to_main_menu +
            return_to_main_menu_2 +
            return_to_main_menu_3 +
            return_to_main_menu_4 +
            return_to_main_menu_5
        ) AS variability
    from total_ivr
    UNION ALL
    SELECT
        'how_to_complete_or_submit_an_application' AS topic,
        STDDEV(how_to_complete_or_submit_an_application) AS variability
    from total_ivr
    UNION ALL
    SELECT
        'ticket_application_process' AS topic,
        STDDEV(ticket_application_process) AS variability
    from total_ivr
    UNION ALL
    SELECT
        'online_process' AS topic,
        STDDEV(online_process) AS variability
    from total_ivr
    UNION ALL
    SELECT
        'household_restrictions' AS topic,
        STDDEV(
		household_restrictions +
		household_restrictions_2 +
		household_restrictions_3
		)  AS variability
    from total_ivr
    UNION ALL
    SELECT
        'other_information_for_the_process' AS topic,
        STDDEV(other_information_for_the_process) AS variability
    from total_ivr
    UNION ALL
    SELECT
        'the_personal_details' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
     UNION ALL
    SELECT
        'types_of_accessibility_tickets' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL

    SELECT
        'information_about_ticket_sales' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL
    SELECT
        'ticket_products' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL
    SELECT
        'sales_phases' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL
    SELECT
        'ticket_categories' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL
    SELECT
        'ticket_prices' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL
    SELECT
        'confirmed_tickets' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL

    SELECT
        'payment_methods' AS topic,
         STDDEV(payment_methods + 
			payment_methods_2
		) AS variability
    from total_ivr
	 UNION ALL

    SELECT
        'any_other_enquireis' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL
    SELECT
        'cancellation_and_resale' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL

    SELECT
        'matches' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL
    SELECT
        'legal_documents' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL

    SELECT
        'fan_id' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr
	 UNION ALL
    SELECT
        'health_and_safety_measures' AS topic,
        STDDEV(the_personal_details) AS variability
    from total_ivr


)
SELECT
    topic,
    variability
FROM topic_variability
ORDER BY variability DESC
LIMIT 5;