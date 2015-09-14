- view: dimdate
  sql_table_name: public.dimdate
  fields:

  - dimension: day
    type: int
    sql: ${TABLE}.dayval

  - dimension: daynameen
    sql: ${TABLE}.daynameen

  - dimension: dayofmonth
    type: number
    sql: ${TABLE}.dayofmonth

  - dimension: dayofweek
    type: number
    sql: ${TABLE}.dayofweek

  - dimension: dayofweeknameen
    sql: ${TABLE}.dayofweeknameen

  - dimension: isworkingday
    type: int
    sql: ${TABLE}.isworkingday

  - dimension: isworkingdaynameen
    sql: ${TABLE}.isworkingdaynameen

  - dimension: month
    type: int
    sql: ${TABLE}.monthval

  - dimension: monthnameen
    sql: ${TABLE}.monthnameen

  - dimension: monthofyear
    type: number
    sql: ${TABLE}.monthofyear

  - dimension: monthofyearnameen
    sql: ${TABLE}.monthofyearnameen

  - dimension: quarter
    type: int
    sql: ${TABLE}.quarterval

  - dimension: quarternameen
    sql: ${TABLE}.quarternameen

  - dimension: quarterofyear
    type: number
    sql: ${TABLE}.quarterofyear

  - dimension: quarterofyearnameen
    sql: ${TABLE}.quarterofyearnameen

  - dimension_group: thedate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.thedate

  - dimension: week
    type: number
    sql: ${TABLE}.week

  - dimension: year
    type: number
    sql: ${TABLE}.year

  - measure: count
    type: count
    drill_fields: []

