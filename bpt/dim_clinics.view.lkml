view: clinics {
  sql_table_name: "CLEAN"."DIM_CLINICS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: about {
    type: string
    sql: ${TABLE}."ABOUT" ;;
  }

  dimension: appointmenttypeid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}."APPOINTMENTTYPEID" ;;
  }

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

  dimension: availabilitylastupdatedtimestamp {
    type: number
    hidden: yes
    sql: ${TABLE}."AVAILABILITYLASTUPDATEDTIMESTAMP" ;;
  }

  dimension: betterptsubscriptionactive {
    type: yesno
    group_label: "Yes/No Dimension"
    sql: ${TABLE}."BETTERPTSUBSCRIPTIONACTIVE" ;;
  }

  dimension: clinicname {
    label: "Name"
    type: string
    sql: ${TABLE}."CLINICNAME" ;;
  }

  dimension: companyid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}."COMPANYID" ;;
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

  dimension_group: deletedat {
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
    sql: CAST(${TABLE}."DELETEDAT" AS TIMESTAMP_NTZ) ;;
  }


  dimension: emrid {
    type: string
    hidden: yes
    sql: ${TABLE}."EMRID" ;;
  }

  dimension: hasalternatetimeui {
    type: yesno
    group_label: "Yes/No Dimension"
    sql: ${TABLE}."HASALTERNATETIMEUI" ;;
  }


  dimension: isactivesystem {
    type: yesno
    group_label: "Yes/No Dimension"
    sql: ${TABLE}."ISACTIVESYSTEM" ;;
  }

  dimension: isbasic {
    type: yesno
    group_label: "Yes/No Dimension"
    sql: ${TABLE}."ISBASIC" ;;
  }

  dimension: ishssaffiliate {
    type: yesno
    group_label: "Yes/No Dimension"
    sql: ${TABLE}."ISHSSAFFILIATE" ;;
  }

  dimension: isinsurancebetaparticipant {
    type: yesno
    group_label: "Yes/No Dimension"
    sql: ${TABLE}."ISINSURANCEBETAPARTICIPANT" ;;
  }

  dimension: isintegrated {
    type: yesno
    group_label: "Yes/No Dimension"
    sql: ${TABLE}."ISINTEGRATED" ;;
  }

  dimension: istelehealthactivesystem {
    type: yesno
    group_label: "Yes/No Dimension"
    sql: ${TABLE}."ISTELEHEALTHACTIVESYSTEM" ;;
  }

  dimension: locationid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}."LOCATIONID" ;;
  }

  dimension: npi {
    type: string
    sql: ${TABLE}."NPI" ;;
  }

  dimension: organizationname {
    label: "Clinic Org Name"
    type: string
    sql: ${TABLE}."ORGANIZATIONNAME" ;;
  }

  dimension: partnerid {
    hidden: yes
    type: string
    sql: ${TABLE}."PARTNERID" ;;
  }


  dimension: policyid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}."POLICYID" ;;
  }

  dimension: response_failure_rate {
    type: number
    sql: ${TABLE}."RESPONSE_FAILURE_RATE" ;;
  }

  dimension: socialid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."SOCIALID" ;;
  }

  dimension: timezone {
    type: string
    hidden: yes
    sql: ${TABLE}."TIMEZONE" ;;
  }

  dimension_group: updatedat {
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
    sql: CAST(${TABLE}."UPDATEDAT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: useclinicname {
    group_label: "Yes/No Dimension"
    type: yesno
    sql: ${TABLE}."USECLINICNAME" ;;
  }

  dimension: yelpid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}."YELPID" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, useclinicname, organizationname, clinicname]
  }
}
