- view: factreservations
  sql_table_name: public.factreservations
  fields:

  - dimension: availableofferscount
    type: number
    sql: ${TABLE}.availableofferscount

  - dimension: cancelledcount
    sql: ${TABLE}.cancelledcount

  - dimension: cancelledrevenue
    type: number
    sql: ${TABLE}.cancelledrevenue

  - dimension: checkedinscount
    type: number
    sql: ${TABLE}.checkedinscount

  - dimension_group: checkindate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.checkindate

  - dimension: day_key
    type: int
    sql: ${TABLE}.day_key

  - dimension: deliveredemailscount
    type: number
    sql: ${TABLE}.deliveredemailscount

  - dimension: duplicateemailscount
    type: number
    sql: ${TABLE}.duplicateemailscount

  - dimension: hotel_key
    sql: ${TABLE}.hotel_key

  - dimension: offerdollar
    type: number
    sql: ${TABLE}.offerdollar

  - dimension: offerscount
    type: number
    sql: ${TABLE}.offerscount

  - dimension: openrate
    type: number
    sql: ${TABLE}.openrate

  - dimension: reservationid
    type: int
    sql: ${TABLE}.reservationid

  - dimension: reservationscount
    type: number
    sql: ${TABLE}.reservationscount

  - dimension: reservationsmissingemailcount
    type: number
    sql: ${TABLE}.reservationsmissingemailcount

  - dimension: reservationswithemailcount
    type: number
    sql: ${TABLE}.reservationswithemailcount

  - dimension: reservationswithemailpercentage
    type: number
    sql: ${TABLE}.reservationswithemailpercentage

  - dimension: totalrevenue
    type: number
    sql: ${TABLE}.totalrevenue

  - dimension: upgradedollar
    type: number
    sql: ${TABLE}.upgradedollar

  - dimension: upgradescount
    type: number
    sql: ${TABLE}.upgradescount

  - measure: count
    type: count
    drill_fields: []

