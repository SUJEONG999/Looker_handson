connection: "looker-training"

# include all the views
include: "/views/**/*.view"

datagroup: crystal_test_123_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: crystal_test_123_default_datagroup

explore: retail_dataset {
  access_filter: {
    field: retail_dataset.bigcategory
    user_attribute: bigcategory
  }
}
