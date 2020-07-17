view: met_objects {
  sql_table_name: `kwkdatascience.the_met.objects`;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

#   dimension: object_number {
#     type: string
#     sql: ${TABLE}.object_number ;;
#   }

  dimension: is_highlight {
    type: string
    sql: ${TABLE}.is_highlight ;;
  }

#   dimension: is_public_domain {
#     type: string
#     sql: ${TABLE}.is_public_domain ;;
#   }
#
#   dimension: object_id {
#     type: number
#     sql: ${TABLE}.object_id ;;
#   }
#
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: object_name {
    type: string
    sql: ${TABLE}.object_name ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: culture {
    type: string
    sql: ${TABLE}.culture ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.period ;;
  }

  dimension: dynasty {
    type: string
    sql: ${TABLE}.dynasty ;;
  }

#   dimension: reign {
#     type: string
#     sql: ${TABLE}.reign ;;
#   }
#
#   dimension: portfolio {
#     type: string
#     sql: ${TABLE}.portfolio ;;
#   }
#
#   dimension: artist_role {
#     type: string
#     sql: ${TABLE}.artist_role ;;
#   }
#
#   dimension: artist_prefix {
#     type: string
#     sql: ${TABLE}.artist_prefix ;;
#   }
#
#   dimension: artist_display_name {
#     type: string
#     sql: ${TABLE}.artist_display_name ;;
#   }
#
#   dimension: artist_display_bio {
#     type: string
#     sql: ${TABLE}.artist_display_bio ;;
#   }
#
#   dimension: artist_suffix {
#     type: string
#     sql: ${TABLE}.artist_suffix ;;
#   }
#
#   dimension: artist_alpha_sort {
#     type: string
#     sql: ${TABLE}.artist_alpha_sort ;;
#   }
#
#   dimension: artist_nationality {
#     type: string
#     sql: ${TABLE}.artist_nationality ;;
#   }
#
#   dimension: artist_begin_date {
#     type: string
#     sql: ${TABLE}.artist_begin_date ;;
#   }
#
#   dimension: artist_end_date {
#     type: string
#     sql: ${TABLE}.artist_end_date ;;
#   }
#
  dimension: object_date {
    type: string
    sql: ${TABLE}.object_date ;;
  }

  dimension: object_begin_date {
    type: string
    sql: ${TABLE}.object_begin_date ;;
  }

  dimension: object_end_date {
    type: string
    sql: ${TABLE}.object_end_date ;;
  }
#
#   dimension: medium {
#     type: string
#     sql: ${TABLE}.medium ;;
#   }
#
#   dimension: dimensions {
#     type: string
#     sql: ${TABLE}.dimensions ;;
#   }
#
#   dimension: credit_line {
#     type: string
#     sql: ${TABLE}.credit_line ;;
#   }
#
#   dimension: geography_type {
#     type: string
#     sql: ${TABLE}.geography_type ;;
#   }
#
#   dimension: city {
#     type: string
#     sql: ${TABLE}.city ;;
#   }
#
#   dimension: state {
#     type: string
#     sql: ${TABLE}.state ;;
#   }
#
#   dimension: county {
#     type: string
#     sql: ${TABLE}.county ;;
#   }
#
  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }
#
#   dimension: region {
#     type: string
#     sql: ${TABLE}.region ;;
#   }
#
#   dimension: subregion {
#     type: string
#     sql: ${TABLE}.subregion ;;
#   }
#
#   dimension: locale {
#     type: string
#     sql: ${TABLE}.locale ;;
#   }
#
#   dimension: locus {
#     type: string
#     sql: ${TABLE}.locus ;;
#   }
#
#   dimension: excavation {
#     type: string
#     sql: ${TABLE}.excavation ;;
#   }
#
#   dimension: river {
#     type: string
#     sql: ${TABLE}.river ;;
#   }
#
  dimension: classification {
    type: string
    sql: ${TABLE}.classification ;;
  }

  dimension: rights_and_reproduction {
    type: string
    sql: ${TABLE}.rights_and_reproduction ;;
  }

  dimension: link_resource {
    type: string
    sql: ${TABLE}.link_resource ;;
  }
#
#   dimension_group: metadata_date {
#     type: time
#     sql: ${TABLE}.metadata_date ;;
#   }
#
#   dimension: repository {
#     type: string
#     sql: ${TABLE}.repository ;;
#   }

  set: detail {
    fields: [
      department,
      title,
      country,
      classification,
      object_date
    ]
  }
}
