connection: "retail_cpg_synthetic_v2"

# include all the views
include: "/views/**/*.view"

datagroup: retail_sc_demo_v2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: retail_sc_demo_v2_default_datagroup

explore: dc_ref {}

explore: po_header {}

explore: lever_cost_profile {}

explore: po_detail {}

explore: po_struct_vendor_flat {}

explore: consumer_ref {}

explore: consumer_order {
  join: consumer_order__ol {
    view_label: "Consumer Order: Ol"
    sql: LEFT JOIN UNNEST(${consumer_order.ol}) as consumer_order__ol ;;
    relationship: one_to_many
  }
}

explore: po_struct {
  join: po_struct__pod {
    view_label: "Po Struct: Pod"
    sql: LEFT JOIN UNNEST(${po_struct.pod}) as po_struct__pod ;;
    relationship: one_to_many
  }
}

explore: store_stats {
  join: store_stats__stats {
    view_label: "Store Stats: Stats"
    sql: LEFT JOIN UNNEST(${store_stats.stats}) as store_stats__stats ;;
    relationship: one_to_many
  }
}

explore: prod_ref {
  join: prod_ref__avg {
    view_label: "Prod Ref: Avg"
    sql: LEFT JOIN UNNEST(${prod_ref.avg}) as prod_ref__avg ;;
    relationship: one_to_many
  }
}

explore: store_ref {}

explore: replen_sch_profile {}

explore: vendor_ref {}

explore: zip_ref {}

explore: shipper_ref {}
