WITH totals AS (
  SELECT
    (SELECT SUM(value) FROM unnest(ARRAY[
      already_submitted_application,
      status_of_ticket_application,
      how_to_check_the_status,
      ticket_application_process,
      ticket_prices,
      payment_methods,
      online_process,
      information_about_ticket_sales,
      sales_phases,
      ticket_categories,
      ticket_products,
      health_and_safety_measures,
      household_restrictions,
      types_of_accessibility_tickets
    ]) AS value) AS ivr_resolved,

    (SELECT SUM(value) FROM unnest(ARRAY[
      connection_with_agent,
      connection_with_agent_2
    ]) AS value) AS agent_escalations
  FROM total_ivr
)
SELECT
  ivr_resolved,
  agent_escalations,
  ivr_resolved + agent_escalations AS interactions,
  ROUND(ivr_resolved * 100.0 / (ivr_resolved + agent_escalations), 2) AS ivr_effectiveness_percentage,
  ROUND(agent_escalations * 100.0 / (ivr_resolved + agent_escalations), 2) AS agent_escalation_percentage
FROM totals;
