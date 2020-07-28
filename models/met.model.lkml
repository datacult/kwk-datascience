connection: "kwk"

# include all the views
include: "/views/**/*.view"

datagroup: met_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: met_default_datagroup

explore: met_objects {hidden: yes}
