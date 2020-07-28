view: college_layoffs {
  sql_table_name: `kwkdatascience.team_three.college_layoffs`
    ;;

  dimension: university {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: control {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.string_field_2 ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.string_field_3 ;;
  }



  dimension: type_of_workers_affected {
    type: string
    sql: ${TABLE}.string_field_5 ;;
  }

#   dimension: string_field_6 {
#     type: string
#     sql: ${TABLE}.string_field_6 ;;
#   }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: number_of_affected_workers{
    type: sum
    sql: ${TABLE}.string_field_4 ;;
  }

}
