WITH interactions_by_day AS (
    SELECT
        date,
        EXTRACT(DOW FROM date::DATE) AS day_of_week, 
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
    GROUP BY date
),
categorized_interactions AS (
    SELECT
        date,
        day_of_week,
        total_interactions,
        CASE
            WHEN day_of_week IN (1, 2, 3, 4, 5) THEN 'Week' 
            WHEN day_of_week IN (0, 6) THEN 'Weekend'       
        END AS period
    FROM interactions_by_day
)
SELECT
    period,
    SUM(total_interactions) AS total_interactions,
    COUNT(DISTINCT date) AS total_days,
    SUM(total_interactions) * 1.0 / COUNT(DISTINCT date) AS avg_interactions_per_day
FROM categorized_interactions
GROUP BY period
ORDER BY period;