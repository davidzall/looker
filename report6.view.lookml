- view: report6
  sql_table_name: public.report6
  fields:

  - dimension: checkincount
    type: int
    sql: ${TABLE}.checkincount

  - dimension: city
    sql: ${TABLE}.city

  - dimension: monthval
    type: int
    sql: ${TABLE}.monthval

  - dimension: mp_country_code
    sql: ${TABLE}.mp_country_code

  - dimension: system_key
    sql: ${TABLE}.system_key

  - measure: count
    type: count
    drill_fields: []


  - measure: checkincounts
    type: sum
    sql: ${checkincount}
