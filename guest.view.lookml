- view: dimguest
  sql_table_name: public.dimguest
  fields:

  - dimension: confirmationcode
    sql: ${TABLE}.confirmationcode

  - dimension: createdby
    sql: ${TABLE}.createdby

  - dimension_group: createddate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.createddate

  - dimension_group: effectivedate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.effectivedate

  - dimension: email
    sql: ${TABLE}.email

  - dimension_group: expirationdate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.expirationdate

  - dimension: expiredby
    sql: ${TABLE}.expiredby

  - dimension_group: expireddate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.expireddate

  - dimension: facebookuser
    type: yesno
    sql: ${TABLE}.facebookuser

  - dimension: facebookusername
    sql: ${TABLE}.facebookusername

  - dimension: fullname
    sql: ${TABLE}.fullname

  - dimension: guest_key
    sql: ${TABLE}.guest_key

  - dimension: guestid
    sql: ${TABLE}.guestid

  - dimension: lang
    sql: ${TABLE}.lang

  - dimension: mergedinto
    sql: ${TABLE}.mergedinto

  - dimension: messagechannels
    type: int
    sql: ${TABLE}.messagechannels

  - dimension: modifiedby
    sql: ${TABLE}.modifiedby

  - dimension_group: modifieddate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.modifieddate

  - dimension: telephone
    sql: ${TABLE}.telephone

  - measure: count
    type: count
    drill_fields: [fullname, facebookusername]

