- view: qview
  
# # Specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.edwd
#
# # Or, you could make this view a derived table, like this:
#   derived_table:
#     sql: |
#       SELECT
#         users.id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.date) as most_recent_purchase_date
#       FROM orders
#       GROUP BY user.id

 # fields:
# #     Define your dimensions and measures here, like this:
#     - dimension: profit
#       type: number
#       sql: ${TABLE}.profit
#
#     - measure: total_profit
#       type: sum
#       sql: ${profit}

  derived_table:  
     sql: |
       SELECT        dimhotel.name as name, dimdate.monthnameen as month, factrequestsexpress.requesttype as rtype, factrequestsexpress.status as stat,factrequestsexpress.requestrevenue as revenue, factrequestsexpress.checkindate as checkindate
       FROM            factrequestsexpress INNER JOIN
                         dimhotel ON factrequestsexpress.hotel_key = dimhotel.hotel_key INNER JOIN
                         dimdate ON factrequestsexpress.day_key = dimdate.day where dimhotel.name like 'LIVE - Affinia %'
  fields:
     - dimension: name
       sql: ${TABLE}.name

     - dimension: rtype
       sql: ${TABLE}.rtype

     - dimension: month
       sql: ${TABLE}.month

     - dimension: stat
       sql: ${TABLE}.stat
       
     - dimension: checkindate
       sql: ${TABLE}.checkindate


     - measure: total_revenue
       type: sum
       sql: ${TABLE}.revenue
       value_format: '$#,##0.00'
