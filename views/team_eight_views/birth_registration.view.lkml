view: birth_registration {
  derived_table: {
    sql:
    select country_or_area,
    female_birth_registration_pct,
    male_birth_registration_pct,
    cast(total_birth_registration_pct AS numeric) as total_birth_registration_pct
from `kwkdatascience.team_eight.birth_registration`
where total_birth_registration_pct not in ('Ð');;
  }

  dimension: country_or_area {
    type: string
    sql: ${TABLE}.country_or_area ;;
  }

  measure: female_birth_registration_pct {
    type: average
    sql: ${TABLE}.female_birth_registration_pct*0.01 ;;
    value_format: "0.0%"
  }

  measure: male_birth_registration_pct {
    type: average
    sql: ${TABLE}.male_birth_registration_pct*0.01 ;;
    value_format: "0.0%"
  }

  measure: total_birth_registration_pct {
    type: average
    sql: ${TABLE}.total_birth_registration_pct*0.01 ;;
    value_format: "0.0%"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
