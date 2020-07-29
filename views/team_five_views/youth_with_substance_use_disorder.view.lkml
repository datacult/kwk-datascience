view: youth_with_substance_use_disorder {
  sql_table_name: `kwkdatascience.team_five.youth_with_substance_use_disorder`
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
    type: count
    drill_fields: []
  }

  measure: percentage {
    type: sum
    sql: ${TABLE}.Percentage ;;
  }
}
