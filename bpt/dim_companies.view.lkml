view: companies {
  sql_table_name: "CLEAN"."DIM_COMPANIES"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  measure: active_clinics {
    group_label: "KPIs"
    type: sum
    sql: ${TABLE}."ACTIVE_CLINICS" ;;
  }

#   dimension: additional_patients_to_100 {
#     group_label: "KPIs"
#     type: number
#     sql: ${TABLE}."ADDITIONAL_PATIENTS_TO_100" ;;
#   }

  dimension: address {
    group_label: "Geo"
    type: string
    sql: ${TABLE}."ADDRESS" ;;
  }

  # dimension: appointment_1_year {
  #   group_label: "KPIs"
  #   type: number
  #   sql: ${TABLE}."APPOINTMENT_1_YEAR" ;;
  # }

  # dimension: appointment_30_days {
  #   group_label: "KPIs"
  #   type: number
  #   sql: ${TABLE}."APPOINTMENT_30_DAYS" ;;
  # }

  # dimension: appointment_90_days {
  #   group_label: "KPIs"
  #   type: number
  #   sql: ${TABLE}."APPOINTMENT_90_DAYS" ;;
  # }

  dimension_group: archivedat {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."ARCHIVEDAT" AS TIMESTAMP_NTZ) ;;
  }

  # dimension: avatarurl {
  #   type: string
  #   sql: ${TABLE}."AVATARURL" ;;
  # }

  # dimension: callers_1_year {
  #   type: number
  #   group_label: "KPIs"
  #   sql: ${TABLE}."CALLERS_1_YEAR" ;;
  # }

  # dimension: callers_30_days {
  #   type: number
  #   group_label: "KPIs"
  #   sql: ${TABLE}."CALLERS_30_DAYS" ;;
  # }

  # dimension: callers_90_days {
  #   type: number
  #   group_label: "KPIs"
  #   sql: ${TABLE}."CALLERS_90_DAYS" ;;
  # }

  # dimension: calls_1_year {
  #   type: number
  #   group_label: "KPIs"
  #   sql: ${TABLE}."CALLS_1_YEAR" ;;
  # }

  # dimension: calls_30_days {
  #   type: number
  #   group_label: "KPIs"
  #   sql: ${TABLE}."CALLS_30_DAYS" ;;
  # }

  # dimension: calls_90_days {
  #   type: number
  #   group_label: "KPIs"
  #   sql: ${TABLE}."CALLS_90_DAYS" ;;
  # }

  dimension: cancreateadminemployees {
    type: yesno
    group_label: "Yes/No Dimensions"
    sql: ${TABLE}."CANCREATEADMINEMPLOYEES" ;;
  }

  dimension: cancreatescheduleremployees {
    type: yesno
    group_label: "Yes/No Dimensions"
    sql: ${TABLE}."CANCREATESCHEDULEREMPLOYEES" ;;
  }

  dimension: city {
    type: string
    group_label: "Geo"
    sql: ${TABLE}."CITY" ;;
  }

  measure: clinics {
    type: sum
    group_label: "KPIs"
    sql: ${TABLE}."CLINICS" ;;
  }

  dimension: companyname {
    type: string
    label: "Name"
    sql: ${TABLE}."COMPANYNAME" ;;
  }

  measure: confirmation_rate {
    type: average
    group_label: "KPIs"
    sql: ${TABLE}."CONFIRMATION_RATE" ;;
  }

  measure: cost_per_clinic {
    type: average
    group_label: "KPIs"
    sql: ${TABLE}."COST_PER_CLINIC" ;;
  }

  dimension: country {
    type: string
    group_label: "Geo"
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension_group: createdat {
    label: "Created"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."CREATEDAT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: emrname {
    label: "EMR Name"
    type: string
    sql: ${TABLE}."EMRNAME" ;;
  }

  measure: est_new_patients {
    group_label: "KPIs"
    type: sum
    sql: ${TABLE}."EST_NEW_PATIENTS" ;;
  }

  dimension: hasbeenapproved {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."HASBEENAPPROVED" ;;
  }

  dimension: hashssnetworkclinics {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."HASHSSNETWORKCLINICS" ;;
  }

  dimension: hasintegration {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."HASINTEGRATION" ;;
  }

  dimension: hastwofactoroption {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."HASTWOFACTOROPTION" ;;
  }

  dimension: isactive {
    group_label: "Yes/No Dimensions"
    type: number
    sql: ${TABLE}."ISACTIVE" ;;
  }

  dimension: iseveryemployeeaprovider {
    type: yesno
    group_label: "Yes/No Dimensions"
    sql: ${TABLE}."ISEVERYEMPLOYEEAPROVIDER" ;;
  }

  dimension: ismobilerehab {
    type: yesno
    group_label: "Yes/No Dimensions"
    sql: ${TABLE}."ISMOBILEREHAB" ;;
  }

  dimension: isptcompany {
    type: yesno
    group_label: "Yes/No Dimensions"
    sql: ${TABLE}."ISPTCOMPANY" ;;
  }

  dimension: isrecordingoptionavailable {
    type: yesno
    group_label: "Yes/No Dimensions"
    sql: ${TABLE}."ISRECORDINGOPTIONAVAILABLE" ;;
  }


  dimension: locationid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."LOCATIONID" ;;
  }

  measure: no_response_rate {
    group_label: "KPIs"
    type: average
    sql: ${TABLE}."NO_RESPONSE_RATE" ;;
  }

  # dimension: patient_1_year {
  #   group_label: "KPIs"
  #   type: number
  #   sql: ${TABLE}."PATIENT_1_YEAR" ;;
  # }

  # dimension: patient_30_days {
  #   group_label: "KPIs"
  #   type: number
  #   sql: ${TABLE}."PATIENT_30_DAYS" ;;
  # }

  # dimension: patient_90_days {
  #   group_label: "KPIs"
  #   type: number
  #   sql: ${TABLE}."PATIENT_90_DAYS" ;;
  # }

  measure: patient_acquisition_cost {
    group_label: "KPIs"
    type: sum
    sql: ${TABLE}."PATIENT_ACQUISITION_COST" ;;
  }

  # dimension: patient_revenue_at_800 {
  #   group_label: "KPIs"
  #   type: number
  #   sql: ${TABLE}."PATIENT_REVENUE_AT_800" ;;
  # }

  measure: plan_price {
    group_label: "KPIs"
    type: sum
    sql: ${TABLE}."PLAN_PRICE" ;;
  }

  measure: requests_per_clinic {
    group_label: "KPIs"
    type: sum
    sql: ${TABLE}."REQUESTS_PER_CLINIC" ;;
  }

  measure: response_failure_rate {
    group_label: "KPIs"
    type: average
    sql: ${TABLE}."RESPONSE_FAILURE_RATE" ;;
  }

  dimension: shouldfacilitydefaulttoservicearea {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."SHOULDFACILITYDEFAULTTOSERVICEAREA" ;;
  }

  dimension: shouldnewemployeesdefaulttoprovider {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."SHOULDNEWEMPLOYEESDEFAULTTOPROVIDER" ;;
  }

  dimension: shouldpreventnewadminemployees {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."SHOULDPREVENTNEWADMINEMPLOYEES" ;;
  }

  dimension: shouldpreventnewbasicemployees {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."SHOULDPREVENTNEWBASICEMPLOYEES" ;;
  }

  # dimension: smallavatarurl {
  #   type: string
  #   sql: ${TABLE}."SMALLAVATARURL" ;;
  # }

  dimension: state {
    type: string
    group_label: "Geo"
    sql: ${TABLE}."STATE" ;;
  }

  dimension: taxid {
    hidden: yes
    type: string
    sql: ${TABLE}."TAXID" ;;
  }

  dimension: taxidtype {
    hidden: yes
    type: string
    sql: ${TABLE}."TAXIDTYPE" ;;
  }

  # measure: u_appointments_90_days {
  #   group_label: "KPIs"
  #   type: average
  #   sql: ${TABLE}."U_APPOINTMENTS_90_DAYS" ;;
  # }

  # measure: u_calls_90_days {
  #   group_label: "KPIs"
  #   type: average
  #   sql: ${TABLE}."U_CALLS_90_DAYS" ;;
  # }

  dimension_group: updatedat {
    label: "Updated At"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."UPDATEDAT" AS TIMESTAMP_NTZ) ;;
  }

  measure: visible_clinics {
    group_label: "KPIs"
    type: sum
    sql: ${TABLE}."VISIBLE_CLINICS" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."WEBSITE" ;;
  }

  dimension: zipcode {
    group_label: "Geo"
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, emrname, companyname]
  }
}
