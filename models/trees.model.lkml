connection: "kwk"

# include all the views
include: "/views/**/*.view"

datagroup: trees_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: trees_default_datagroup

explore: tree_census_2015 {}
