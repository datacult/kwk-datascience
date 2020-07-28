view: maternal_mortality_emotions {
  sql_table_name: `kwkdatascience.team_two.Maternal_Mortality_Emotions`
    ;;

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: emotions {
    type: string
    sql: ${TABLE}.Emotions ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
