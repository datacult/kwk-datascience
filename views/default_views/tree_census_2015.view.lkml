view: tree_census_2015 {
  sql_table_name: `kwkdatascience.nyc.tree_census_2015` ;;

  measure: count {
    type: count
  }

  dimension: tree_id {
    type: number
    hidden: yes
    sql: ${TABLE}.tree_id ;;
  }

  dimension_group: tree_created_at {
    type: time
    timeframes: [date,month,year]
    sql: timestamp(${TABLE}.created_at) ;;
  }

  # dimension: tree_dbh {
  #   type: number
  #   sql: ${TABLE}.tree_dbh ;;
  # }

  measure: stump_diameter {
    type: sum
    sql: ${TABLE}.stump_diam ;;
  }


  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: health {
    type: string
    sql: ${TABLE}.health ;;
  }

  dimension: spc_latin {
    type: string
    sql: ${TABLE}.spc_latin ;;
  }

  dimension: spc_common {
    type: string
    sql: ${TABLE}.spc_common ;;
  }

  # dimension: steward {
  #   type: string
  #   sql: ${TABLE}.steward ;;
  # }

  # dimension: guards {
  #   type: string
  #   sql: ${TABLE}.guards ;;
  # }

  # dimension: sidewalk {
  #   type: string
  #   sql: ${TABLE}.sidewalk ;;
  # }

  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }

  dimension: problems {
    type: string
    sql: ${TABLE}.problems ;;
  }

  # dimension: root_stone {
  #   type: string
  #   sql: ${TABLE}.root_stone ;;
  # }

  # dimension: root_grate {
  #   type: string
  #   sql: ${TABLE}.root_grate ;;
  # }

  # dimension: root_other {
  #   type: string
  #   sql: ${TABLE}.root_other ;;
  # }

  # dimension: trunk_wire {
  #   type: string
  #   sql: ${TABLE}.trunk_wire ;;
  # }

  # dimension: trnk_light {
  #   type: string
  #   sql: ${TABLE}.trnk_light ;;
  # }

  # dimension: trnk_other {
  #   type: string
  #   sql: ${TABLE}.trnk_other ;;
  # }

  # dimension: brch_light {
  #   type: string
  #   sql: ${TABLE}.brch_light ;;
  # }

  # dimension: brch_shoe {
  #   type: string
  #   sql: ${TABLE}.brch_shoe ;;
  # }

  # dimension: brch_other {
  #   type: string
  #   sql: ${TABLE}.brch_other ;;
  # }

  dimension: tree_address {
    type: string
    sql: ${TABLE}.address ;;
  }

  # dimension: zipcode {
  #   type: number
  #   sql: ${TABLE}.zipcode ;;
  # }

  # dimension: zip_city {
  #   type: string
  #   sql: ${TABLE}.zip_city ;;
  # }

  # dimension: cb_num {
  #   type: number
  #   sql: ${TABLE}.cb_num ;;
  # }

  # dimension: borocode {
  #   type: number
  #   sql: ${TABLE}.borocode ;;
  # }

  dimension: boroname {
    type: string
    sql: ${TABLE}.boroname ;;
  }

  # dimension: cncldist {
  #   type: number
  #   sql: ${TABLE}.cncldist ;;
  # }

  # dimension: st_assem {
  #   type: number
  #   sql: ${TABLE}.st_assem ;;
  # }

  # dimension: st_senate {
  #   type: number
  #   sql: ${TABLE}.st_senate ;;
  # }

  # dimension: nta {
  #   type: string
  #   sql: ${TABLE}.nta ;;
  # }

  # dimension: nta_name {
  #   type: string
  #   sql: ${TABLE}.nta_name ;;
  # }

  # dimension: boro_ct {
  #   type: number
  #   sql: ${TABLE}.boro_ct ;;
  # }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  # dimension: x_sp {
  #   type: number
  #   sql: ${TABLE}.x_sp ;;
  # }

  # dimension: y_sp {
  #   type: number
  #   sql: ${TABLE}.y_sp ;;
  # }

  dimension: location_gps {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

}
