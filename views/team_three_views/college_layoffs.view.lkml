view: college_layoffs {
  derived_table: {
    sql:
    WITH remix_to_ignition AS
(
SELECT
concat(string_field_0,string_field_1) AS string_field_0,
string_field_2 as string_field_1,
string_field_3 as string_field_2,
string_field_4 as string_field_3,
string_field_5 as string_field_4,
string_field_6 as string_field_5,
cast(null as string) as string_field_6
FROM kwkdatascience.team_three.college_layoffs
WHERE string_field_4 in ('Furlough')
),

rest_of_data AS
(
SELECT * FROM kwkdatascience.team_three.college_layoffs
WHERE string_field_4 not in ('Furlough')
)

SELECT * FROM remix_to_ignition
UNION ALL
SELECT * FROM rest_of_data;;
  }

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
    sql: cast(${TABLE}.string_field_4 as numeric) ;;
  }

}
