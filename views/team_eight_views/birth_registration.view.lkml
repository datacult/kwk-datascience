view: birth_registration {
  sql_table_name: `kwkdatascience.team_eight.birth_registration`
    ;;

  dimension: country_or_area {
    type: string
    sql: ${TABLE}.country_or_area ;;
  }

  measure: female_birth_registration_pct {
    type: average
    sql: ${TABLE}.female_birth_registration_pct ;;
    value_format_name: percent_0
  }

  measure: male_birth_registration_pct {
    type: average
    sql: ${TABLE}.male_birth_registration_pct ;;
    value_format_name: percent_0
  }

  measure: total_birth_registration_pct {
    type: average
    sql: ${TABLE}.total_birth_registration_pct ;;
    value_format_name: percent_0
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
