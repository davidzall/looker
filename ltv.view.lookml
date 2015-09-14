- view: ltv
  derived_table:
#   distkey: 
#   sortkeys:
#   sql_trigger_value: SELECT currentdate
    sql: |
      SELECT guest_key, 
      SUM(requestrevenue) as ltv
      FROM factrequestsexpress 
      GROUP BY 1

  fields:

  - dimension: guest_key
    sql: ${TABLE}.guest_key
    primary_key: true

  - dimension: ltv
    type: number
    sql: ${TABLE}.ltv
    
  - measure: total_ltv
    type: sum
    sql: ${ltv}

  sets:
    detail:
      - guest_key

