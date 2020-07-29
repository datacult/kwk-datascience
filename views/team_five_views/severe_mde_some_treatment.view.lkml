view: severe_mde_some_treatment {
  sql_table_name: `kwkdatascience.team_five.severe_MDE_some_treatment`
    ;;

  dimension: number {
    type: number
    sql: ${TABLE}.Number ;;
  }



  dimension: rank {
    type: number
    sql: ${TABLE}.Rank ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: sum
    drill_fields: []
  }





  measure: percentage {
    type: sum
    sql: ${TABLE}.percentage ;;
  }



}
