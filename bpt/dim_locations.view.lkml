view: locations {
  sql_table_name: "CLEAN"."DIM_LOCATIONS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    hidden: yes
    sql: ${TABLE}."ID" ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}."ADDRESS" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  # dimension_group: createdat {
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
  #   sql: CAST(${TABLE}."CREATEDAT" AS TIMESTAMP_NTZ) ;;
  # }

  # dimension: geo {
  #   type: string
  #   sql: ${TABLE}."GEO" ;;
  # }

  # dimension: isservicearea {
  #   type: yesno
  #   sql: ${TABLE}."ISSERVICEAREA" ;;
  # }

  # dimension: isverified {
  #   type: yesno
  #   sql: ${TABLE}."ISVERIFIED" ;;
  # }

  dimension: lat {
    type: number
    sql: ${TABLE}."LAT" ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}."LNG" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  # dimension_group: updatedat {
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
  #   sql: CAST(${TABLE}."UPDATEDAT" AS TIMESTAMP_NTZ) ;;
  # }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
