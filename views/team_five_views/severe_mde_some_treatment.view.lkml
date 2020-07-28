view: severe_mde_some_treatment {
  sql_table_name: `kwkdatascience.team_five.severe_MDE_some_treatment`
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
