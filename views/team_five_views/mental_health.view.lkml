view: mental_health {
  sql_table_name: `kwkdatascience.team_five.mental_health`
    ;;

  dimension: number {
    type: number
    sql: ${TABLE}.Number ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.Percentage ;;
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
    type: count
    drill_fields: []
  }
}
