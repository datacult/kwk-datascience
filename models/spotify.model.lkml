connection: "kwk"

# include all the views
include: "/views/**/*.view"

datagroup: spotify_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: spotify_default_datagroup

explore: top_tracks {}
