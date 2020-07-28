# this is team four's view
view: museums_exhibits {
  sql_table_name: `kwkdatascience.team_four.museums_exhibits`
    ;;

  dimension: artist_continent_of_origin {
    type: string
    sql: ${TABLE}.Artist_continent_of_origin ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.End_date ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: muesuem {
    type: string
    sql: ${TABLE}.Muesuem ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Start_date ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
