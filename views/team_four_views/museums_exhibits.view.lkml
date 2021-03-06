# this is team four's view
view: museum_exhibits {
  sql_table_name: `kwkdatascience.team_four.museum_exhibits`
    ;;

  dimension: artist_continent_of_origin {
    type: string
    sql: TRIM(${TABLE}.Artist_continent_of_origin) ;;
  }

# #   dimension: artist_continent {
# # #     type: location
# #       sql_latitude:
#         sql_longitude:
# # #   }

  dimension_group: end {
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
    sql: ${TABLE}.End_date ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: muesuem {
    label: "Museum Name"
    type: string
    sql: ${TABLE}.Muesuem ;;
  }

  dimension: Race {
    label: "Race"
    type: string
    sql: ${TABLE}.Race_ ;;
  }

  dimension: name {
    label: "Name of Artwork"
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.Start_date ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
