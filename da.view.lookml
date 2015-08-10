- view: da
  derived_table:
    sql: |
      select top 10 * from FactRequestsExpress fr
      left outer join FactReservations re on fr.day_key=re.day_key and fr.Hotel_key=re.hotel_key

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: requestid
    type: number
    sql: ${TABLE}.requestid

  - dimension: hotel_key
    sql: ${TABLE}.hotel_key

  - dimension: guest_key
    sql: ${TABLE}.guest_key

  - dimension: day_key
    sql: ${TABLE}.day_key

  - dimension: requesttitle
    sql: ${TABLE}.requesttitle

  - dimension: requesttype
    sql: ${TABLE}.requesttype

  - dimension: status
    sql: ${TABLE}.status

  - dimension: requesttime
    sql: ${TABLE}.requesttime

  - dimension: roomno
    sql: ${TABLE}.roomno

  - dimension: clientnotes
    sql: ${TABLE}.clientnotes

  - dimension: options
    sql: ${TABLE}.options

  - dimension: created
    sql: ${TABLE}.created

  - dimension: statuschanged
    sql: ${TABLE}.statuschanged

  - dimension: completed
    sql: ${TABLE}.completed

  - dimension: notes
    sql: ${TABLE}.notes

  - dimension: modified
    sql: ${TABLE}.modified

  - dimension: modifiedby
    sql: ${TABLE}.modifiedby

  - dimension: forwardedto
    sql: ${TABLE}.forwardedto

  - dimension: forwardedreference
    sql: ${TABLE}.forwardedreference

  - dimension: forwardedstatus
    sql: ${TABLE}.forwardedstatus

  - dimension: escalation_key
    sql: ${TABLE}.escalation_key

  - dimension: responselevel
    sql: ${TABLE}.responselevel

  - dimension: forwardid
    sql: ${TABLE}.forwardid

  - dimension: price
    type: number
    sql: ${TABLE}.price

  - dimension: itemtype
    sql: ${TABLE}.itemtype

  - dimension: firstresponded
    sql: ${TABLE}.firstresponded

  - dimension: firstrespondedby
    sql: ${TABLE}.firstrespondedby

  - dimension: responsetime
    sql: ${TABLE}.responsetime

  - dimension: responcein5
    sql: ${TABLE}.responcein5

  - dimension: requestrevenue
    type: number
    sql: ${TABLE}.requestrevenue

  - dimension: havebasket
    sql: ${TABLE}.havebasket

  - dimension: checkindate
    sql: ${TABLE}.checkindate

  - dimension: gueststayid
    sql: ${TABLE}.gueststayid

  - dimension: requestrevenuelocal
    type: number
    sql: ${TABLE}.requestrevenuelocal

  - dimension: reservationscount
    sql: ${TABLE}.reservationscount

  - dimension: reservationswithemailcount
    sql: ${TABLE}.reservationswithemailcount

  - dimension: reservationswithemailpercentage
    sql: ${TABLE}.reservationswithemailpercentage

  - dimension: reservationsmissingemailcount
    sql: ${TABLE}.reservationsmissingemailcount

  - dimension: deliveredemailscount
    sql: ${TABLE}.deliveredemailscount

  - dimension: openrate
    sql: ${TABLE}.openrate

  - dimension: checkedinscount
    sql: ${TABLE}.checkedinscount

  - dimension: upgradescount
    sql: ${TABLE}.upgradescount

  - dimension: upgradedollar
    sql: ${TABLE}.upgradedollar

  - dimension: offerscount
    sql: ${TABLE}.offerscount

  - dimension: offerdollar
    sql: ${TABLE}.offerdollar

  - dimension: totalrevenue
    sql: ${TABLE}.totalrevenue

  - dimension: duplicateemailscount
    sql: ${TABLE}.duplicateemailscount

  - dimension: cancelledcount
    sql: ${TABLE}.cancelledcount

  - dimension: cancelledrevenue
    sql: ${TABLE}.cancelledrevenue

  - dimension: reservationid
    sql: ${TABLE}.reservationid

  - dimension: availableofferscount
    sql: ${TABLE}.availableofferscount

  sets:
    detail:
      - requestid
      - hotel_key
      - guest_key
      - day_key
      - requesttitle
      - requesttype
      - status
      - requesttime
      - roomno
      - clientnotes
      - options
      - created
      - statuschanged
      - completed
      - notes
      - modified
      - modifiedby
      - forwardedto
      - forwardedreference
      - forwardedstatus
      - escalation_key
      - responselevel
      - forwardid
      - price
      - itemtype
      - firstresponded
      - firstrespondedby
      - responsetime
      - responcein5
      - requestrevenue
      - havebasket
      - checkindate
      - gueststayid
      - requestrevenuelocal
      - reservationscount
      - reservationswithemailcount
      - reservationswithemailpercentage
      - reservationsmissingemailcount
      - deliveredemailscount
      - openrate
      - checkedinscount
      - upgradescount
      - upgradedollar
      - offerscount
      - offerdollar
      - totalrevenue
      - duplicateemailscount
      - cancelledcount
      - cancelledrevenue
      - reservationid
      - availableofferscount

