view: maternal_mortality_data_pain {
  sql_table_name: `kwkdatascience.team_two.Maternal_Mortality_Data_Pain`
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

  dimension: location_of_pain {
    type: string
    sql: ${TABLE}.Location_of_pain ;;
  }

  dimension: pain__1_10_ {
    type: number
    sql: ${TABLE}.Pain__1_10_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
