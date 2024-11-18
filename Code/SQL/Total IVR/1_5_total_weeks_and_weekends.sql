WITH interactions_by_day AS (
    SELECT
        date,
        EXTRACT(DOW FROM date::DATE) AS day_of_week, 
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
    GROUP BY date
),
categorized_interactions AS (
    SELECT
        date,
        day_of_week,
        interactions,
        CASE
            WHEN day_of_week IN (1, 2, 3, 4, 5) THEN 'Week' 
            WHEN day_of_week IN (0, 6) THEN 'Weekend'       
        END AS period
    FROM interactions_by_day
)
SELECT
    period,
    SUM(interactions) AS interactions,
    COUNT(DISTINCT date) AS days,
    SUM(interactions) * 1.0 / COUNT(DISTINCT date) AS avg_interactions_per_day
FROM categorized_interactions
GROUP BY period
ORDER BY period;