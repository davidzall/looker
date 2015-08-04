- connection: gddw

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: dimdate

- explore: dimguest

- explore: dimhotel

- explore: factrequestsexpress
  joins: 
   - join: dimdate 
     sql_on: dimdate.day = factrequestsexpress.day_key
     relationship: many_to_one
   - join: dimhotel  
     sql_on: dimhotel.hotel_key = factrequestsexpress.hotel_key
     relationship: many_to_one
    
  
- explore: factreservations



