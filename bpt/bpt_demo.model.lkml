connection: "bpt_test"

# include all the views
include: "/bpt/*.view"

explore: clinics {}
explore: companies {}


explore: appointments {
  label: "Appointments"

  join: clinics {
    type: left_outer
    relationship: many_to_one
    sql_on: ${appointments.clinicid} = ${clinics.id} ;;
  }

  join: companies {
    type: left_outer
    relationship: many_to_one
    sql_on: ${appointments.companyid} = ${companies.id} ;;
  }

  join: locations {
    type: left_outer
    relationship: many_to_one
    sql_on: ${locations.id} = ${clinics.locationid} ;;
  }

}


explore: video_appointments {
  label: "Video Appointments"

  join: clinics {
    type: left_outer
    relationship: many_to_one
    sql_on: ${video_appointments.clinicid} = ${clinics.id} ;;
  }

  join: companies {
    type: left_outer
    relationship: many_to_one
    sql_on: ${video_appointments.companyid} = ${companies.id} ;;
  }

  join: locations {
    type: left_outer
    relationship: many_to_one
    sql_on: ${locations.id} = ${clinics.locationid} ;;
  }

}
