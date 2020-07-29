view: mental_health {
  sql_table_name: `kwkdatascience.team_five.mental_health`
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

  measure: percentage {
    type: sum
    sql: ${TABLE}.Percentage ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
