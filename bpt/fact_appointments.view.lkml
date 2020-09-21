view: appointments {
  sql_table_name: "CLEAN"."FACT_APPOINTMENTS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    hidden: yes
    sql: ${TABLE}."ID" ;;
  }

  dimension: cancelledby {
    type: string
    hidden: yes
    sql: ${TABLE}."CANCELLEDBY" ;;
  }

  dimension: caseid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}."CASEID" ;;
  }

  dimension: clinicid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}."CLINICID" ;;
  }

  dimension: companyid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}."COMPANYID" ;;
  }

  dimension: confirmationstatus {
    label: "Confirmation Status"
    type: string
    sql: ${TABLE}."CONFIRMATIONSTATUS" ;;
  }

  dimension_group: confirmedtime {
    label: "Confirmed Time"
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
    sql: CAST(${TABLE}."CONFIRMEDTIME" AS TIMESTAMP_NTZ) ;;
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

  dimension: employeetherapistid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."EMPLOYEETHERAPISTID" ;;
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

  measure: fee {
    type: sum
    sql: ${TABLE}."FEE" ;;
  }

  dimension: ismedicare {
    label: "Is Medicare"
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."ISMEDICARE" ;;
  }

  dimension: isreviewed {
    group_label: "Yes/No Dimensions"
    type: yesno
    sql: ${TABLE}."ISREVIEWED" ;;
  }

  dimension: patientid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."PATIENTID" ;;
  }

  dimension: referrer {
    type: string
    sql: ${TABLE}."REFERRER" ;;
  }

  dimension: respond_delay_hours {
    hidden: yes
    type: number
    sql: ${TABLE}."RESPOND_DELAY_HOURS" ;;
  }

  dimension_group: starttime {
    label: "Start Time"
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
    label: "Appointment Status"
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: timezone {
    hidden: yes
    type: string
    sql: ${TABLE}."TIMEZONE" ;;
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

  measure: count {
    type: count
    drill_fields: [id,confirmationstatus,createdat_date,endtime_date,fee,status,companies.address, companies.state, companies.name]
  }
}
