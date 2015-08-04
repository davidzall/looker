- view: dimhotel
  sql_table_name: public.dimhotel
  fields:

  - dimension: id
    primary_key: true
    sql: ${TABLE}.id

  - dimension: address
    sql: ${TABLE}.address

  - dimension: basketforwardingsystem
    sql: ${TABLE}.basketforwardingsystem

  - dimension: city
    sql: ${TABLE}.city

  - dimension: country
    sql: ${TABLE}.country

  - dimension_group: created
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.created

  - dimension: createdby
    sql: ${TABLE}.createdby

  - dimension: defaultcheckintime
    type: number
    sql: ${TABLE}.defaultcheckintime

  - dimension: defaultcheckouttime
    type: number
    sql: ${TABLE}.defaultcheckouttime

  - dimension: defaultlangcode
    sql: ${TABLE}.defaultlangcode

  - dimension: displayname
    sql: ${TABLE}.displayname

  - dimension_group: effectivedate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.effectivedate

  - dimension: enablereservationimport
    type: yesno
    sql: ${TABLE}.enablereservationimport

  - dimension: escalation
    type: yesno
    sql: ${TABLE}.escalation

  - dimension: escalationinterval
    type: int
    sql: ${TABLE}.escalationinterval

  - dimension: escalationlevels
    type: int
    sql: ${TABLE}.escalationlevels

  - dimension: exchangerate
    type: number
    sql: ${TABLE}.exchangerate

  - dimension_group: expirationdate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.expirationdate

  - dimension: expresscheckoutforwardsystem
    sql: ${TABLE}.expresscheckoutforwardsystem

  - dimension: guestaccessrequestforwardsystem
    sql: ${TABLE}.guestaccessrequestforwardsystem

  - dimension: hasroomdevices
    type: yesno
    sql: ${TABLE}.hasroomdevices

  - dimension: hotel_key
    sql: ${TABLE}.hotel_key

  - dimension: isdeleted
    type: yesno
    sql: ${TABLE}.isdeleted

  - dimension: keyval
    sql: ${TABLE}.keyval

  - dimension: locale
    sql: ${TABLE}.locale

  - dimension_group: modified
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.modified

  - dimension: modifiedby
    sql: ${TABLE}.modifiedby

  - dimension: name
    sql: ${TABLE}.name

  - dimension: officialurl
    sql: ${TABLE}.officialurl

  - dimension: parentsystemid
    sql: ${TABLE}.parentsystemid

  - dimension: precheckinforwardsystem
    sql: ${TABLE}.precheckinforwardsystem

  - dimension: propertyiscomingsoon
    type: yesno
    sql: ${TABLE}.propertyiscomingsoon

  - dimension: propertynameen
    sql: ${TABLE}.propertynameen

  - dimension: propertynamefr
    sql: ${TABLE}.propertynamefr

  - dimension: propertyorder
    type: int
    sql: ${TABLE}.propertyorder

  - dimension: revenuepercentage
    type: number
    sql: ${TABLE}.revenuepercentage

  - dimension: roomcount
    type: int
    sql: ${TABLE}.roomcount

  - dimension: servicecharge
    type: number
    sql: ${TABLE}.servicecharge

  - dimension: state
    sql: ${TABLE}.state

  - dimension: telephone
    sql: ${TABLE}.telephone

  - dimension: timezoneid
    sql: ${TABLE}.timezoneid

  - dimension: timezonevalue
    type: number
    sql: ${TABLE}.timezonevalue

  - dimension_group: wentlive
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.wentlive

  - measure: count
    type: count
    drill_fields: [id, name, displayname]

