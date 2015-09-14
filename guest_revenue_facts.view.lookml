- view: guest_revenue_facts
  derived_table:
    sql: |
      SELECT g.guest_key AS "guest_key"
              , SUM(CASE WHEN res.checkindate <= g.createddate + INTERVAL '24 hours' THEN res.totalrevenue ELSE 0 END) AS twenty_four_hour_revenue
              , SUM(CASE WHEN res.checkindate <= g.createddate + INTERVAL '30 days' THEN res.totalrevenue ELSE 0 END) AS thirty_day_revenue
              , SUM(CASE WHEN res.checkindate <= g.createddate + INTERVAL '90 days' THEN res.totalrevenue ELSE 0 END) AS ninety_day_revenue
              , SUM(CASE WHEN res.checkindate <= g.createddate + INTERVAL '365 days' THEN res.totalrevenue ELSE 0 END) AS first_year_revenue
            FROM factrequestsexpress fre
            LEFT JOIN factreservations res
              ON fre.hotel_key || fre.day_key::varchar = res.hotel_key || res.day_key::varchar
            LEFT JOIN dimguest g
              ON g.guest_key = fre.guest_key
            GROUP BY 1
            HAVING SUM(CASE WHEN res.checkindate <= g.createddate + INTERVAL '365 days' THEN res.totalrevenue ELSE 0 END) > SUM(CASE WHEN res.checkindate <= g.createddate + INTERVAL '24 hours' THEN res.totalrevenue ELSE 0 END) and SUM(CASE WHEN res.checkindate <= g.createddate + INTERVAL '24 hours' THEN res.totalrevenue ELSE 0 END) > 0
    sort_key: [user_id]
    persist_for: 12 hours
    
    
  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: guest_key
    sql: ${TABLE}.guest_key

  - dimension: twenty_four_hour_revenue
    type: number
    sql: ${TABLE}.twenty_four_hour_revenue

  - dimension: thirty_day_revenue
    type: number
    sql: ${TABLE}.thirty_day_revenue

  - dimension: ninety_day_revenue
    type: number
    sql: ${TABLE}.ninety_day_revenue

  - dimension: first_year_revenue
    type: number
    sql: ${TABLE}.first_year_revenue

  sets:
    detail:
      - guest_key
      - twenty_four_hour_revenue
      - thirty_day_revenue
      - ninety_day_revenue
      - first_year_revenue

