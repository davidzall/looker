- view: factrequestsexpress
  sql_table_name: public.factrequestsexpress
  fields:

  - dimension_group: checkindate
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.checkindate

  - dimension: clientnotes
    sql: ${TABLE}.clientnotes

  - dimension_group: completed
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.completed

  - dimension_group: created
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.created

  - dimension: day_key
    type: int
    sql: ${TABLE}.day_key

  - dimension: escalation_key
    sql: ${TABLE}.escalation_key

  - dimension_group: firstresponded
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.firstresponded

  - dimension: firstrespondedby
    sql: ${TABLE}.firstrespondedby

  - dimension: forwardedreference
    type: int
    sql: ${TABLE}.forwardedreference

  - dimension: forwardedstatus
    type: int
    sql: ${TABLE}.forwardedstatus

  - dimension: forwardedto
    sql: ${TABLE}.forwardedto

  - dimension: forwardid
    sql: ${TABLE}.forwardid

  - dimension: guest_key
    sql: ${TABLE}.guest_key

  - dimension: gueststayid
    sql: ${TABLE}.gueststayid

  - dimension: havebasket
    type: yesno
    sql: ${TABLE}.havebasket

  - dimension: hotel_key
    sql: ${TABLE}.hotel_key

  - dimension: itemtype
    sql: ${TABLE}.itemtype

  - dimension_group: modified
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.modified

  - dimension: modifiedby
    sql: ${TABLE}.modifiedby

  - dimension: notes
    sql: ${TABLE}.notes

  - dimension: options
    sql: ${TABLE}.options

  - dimension: price
    type: number
    sql: ${TABLE}.price

  - dimension: requestid
    type: int
    sql: ${TABLE}.requestid

  - dimension: requestrevenue
    type: number
    sql: ${TABLE}.requestrevenue

  - dimension: requestrevenuelocal
    type: number
    sql: ${TABLE}.requestrevenuelocal

  - dimension: requesttime
    sql: ${TABLE}.requesttime

  - dimension: requesttitle
    sql: ${TABLE}.requesttitle

  - dimension: requesttype
    sql: ${TABLE}.requesttype

  - dimension: responcein5
    type: yesno
    sql: ${TABLE}.responcein5

  - dimension: responselevel
    sql: ${TABLE}.responselevel

  - dimension: responsetime
    type: int
    sql: ${TABLE}.responsetime

  - dimension: roomno
    sql: ${TABLE}.roomno

  - dimension: status
    sql: ${TABLE}.status

  - dimension_group: statuschanged
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.statuschanged

####  meaassures

  - measure: count
    type: count
    drill_fields: []

  - measure: totalrevenue_cad
    type: sum
    sql: ${requestrevenue}
    value_format: '$#,##0.00'

  - measure: totalrevenue_local
    type: sum
    sql: ${requestrevenuelocal}
    value_format: '$#,##0.00'

  - measure: totalrevenue_cancelled_cad
    type: sum
    sql: ${requestrevenue}
    filters: 
        status: 'Cancelled'
    value_format: '$#,##0.00'
        
  - measure: totalrevenue_cancelled_local
    type: sum
    sql: ${requestrevenuelocal}
    filters: 
        status: 'Cancelled'
    value_format: '$#,##0.00'
        
  - measure: checkin_count
    type: count
    drill_fields: []
    filters: 
        requesttype: 'PreCheckIn'
  - measure: checkin_completed
    type: count
    drill_fields: []
    filters: 
        requesttype: 'PreCheckIn'
        status: 'Complete'
        
  - measure: completed_offers  
    type: count
    drill_fields: []
    filters: 
        requesttype: 'Offer'
        status: 'Complete'
        
  - measure: total_offers   
    type: count
    drill_fields: []
    filters: 
        requesttype: 'Offer'

  - measure: offers_revenue_total_cad
    type: sum
    sql: ${requestrevenue}
    filters: 
        requesttype: 'Offer'
    value_format: '$#,##0.00'

  - measure: offers_revenue_complete_cad
    type: sum
    sql: ${requestrevenue}
    filters: 
        requesttype: 'Offer'
        status: 'Complete'
    value_format: '$#,##0.00'


  - measure: completed_upgrades  
    type: count
    drill_fields: []
    filters: 
        requesttype: 'RoomUpgrade'
        status: 'Complete'
        
  - measure: total_upgrades   
    type: count
    drill_fields: []
    filters: 
        requesttype: 'RoomUpgrade'
        
  - measure: upgrades_revenue_total_cad
    type: sum
    sql: ${requestrevenue}
    filters: 
        requesttype: 'RoomUpgrade'
    value_format: '$#,##0.00'

  - measure: upgrades_revenue_complete_cad
    type: sum
    sql: ${requestrevenue}
    filters: 
        requesttype: 'RoomUpgrade'
        status: 'Complete'
    value_format: '$#,##0.00'

    
