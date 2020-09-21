view: video_appointments {
  sql_table_name: "CLEAN"."FACT_VIDEO_APPOINTMENTS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: bookingplatform {
    label: "Booking Platform"
    type: string
    sql: ${TABLE}."BOOKINGPLATFORM" ;;
  }

  dimension: caseid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."CASEID" ;;
  }

  dimension: clinicid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."CLINICID" ;;
  }

  dimension: companyid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."COMPANYID" ;;
  }

  dimension: confirmationstatus {
    label: "Confirmation Status"
    type: string
    sql: ${TABLE}."CONFIRMATIONSTATUS" ;;
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

  dimension: employeeid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."EMPLOYEEID" ;;
  }

  dimension_group: endtime {
    label: "End Time"
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
    sql: CAST(${TABLE}."ENDTIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension: has15_minreminderbeensent {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."HAS15MINREMINDERBEENSENT" ;;
  }

  dimension: has1_hourreminderbeensent {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."HAS1HOURREMINDERBEENSENT" ;;
  }

  dimension: iscalleligibleforbilling {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."ISCALLELIGIBLEFORBILLING" ;;
  }

  dimension: isdirectaccess {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."ISDIRECTACCESS" ;;
  }

  dimension: isinitialeval {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."ISINITIALEVAL" ;;
  }

  dimension_group: originalstarttime {
    label: "Original Start"
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
    sql: CAST(${TABLE}."ORIGINALSTARTTIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension: patientacceptedconsentform {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."PATIENTACCEPTEDCONSENTFORM" ;;
  }

  # dimension_group: patientacceptedconsentformat {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: CAST(${TABLE}."PATIENTACCEPTEDCONSENTFORMAT" AS TIMESTAMP_NTZ) ;;
  # }

  measure: patientduration {
    label: "Patient Duration"
    type: sum
    sql: ${TABLE}."PATIENTDURATION" ;;
  }

  dimension_group: patientfirstjoinat {
    hidden: yes
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
    sql: CAST(${TABLE}."PATIENTFIRSTJOINAT" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: patientlastexitat {
    hidden: yes
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
    sql: CAST(${TABLE}."PATIENTLASTEXITAT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: patientlink {
    label: "Patient Link"
    type: string
    sql: ${TABLE}."PATIENTLINK" ;;
  }

  measure: patientstarrating {
    label: "Avg Patient Rating"
    type: average
    sql: ${TABLE}."PATIENTSTARRATING" ;;
  }

  dimension_group: previousstarttime {
    hidden: yes
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
    sql: CAST(${TABLE}."PREVIOUSSTARTTIME" AS TIMESTAMP_NTZ) ;;
  }

  # dimension_group: providerfirstjoinat {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: CAST(${TABLE}."PROVIDERFIRSTJOINAT" AS TIMESTAMP_NTZ) ;;
  # }

  # dimension_group: providerlastexitat {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: CAST(${TABLE}."PROVIDERLASTEXITAT" AS TIMESTAMP_NTZ) ;;
  # }

  # dimension: providerlink {
  #   type: string
  #   sql: ${TABLE}."PROVIDERLINK" ;;
  # }

  dimension: referredby {
    label: "Referred By"
    type: string
    sql: ${TABLE}."REFERREDBY" ;;
  }

  # dimension: shorturl {
  #   type: string
  #   sql: ${TABLE}."SHORTURL" ;;
  # }

  dimension_group: starttime {
    label: "Start"
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
    sql: CAST(${TABLE}."STARTTIME" AS TIMESTAMP_NTZ) ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: timezone {
    hidden: yes
    type: string
    sql: ${TABLE}."TIMEZONE" ;;
  }

  dimension: uid {
    hidden: yes
    type: string
    sql: ${TABLE}."UID" ;;
  }

  dimension_group: updatedat {
    hidden: yes
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

  dimension: videoroomid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."VIDEOROOMID" ;;
  }

  dimension: videosessionid {
    hidden: yes
    type: string
    sql: ${TABLE}."VIDEOSESSIONID" ;;
  }

  measure: count {
    type: count
    drill_fields: [id,bookingplatform,confirmationstatus,createdat_date,starttime_date,endtime_date]
  }
}
