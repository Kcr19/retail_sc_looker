view: lever_cost_profile {
  sql_table_name: `retailcg_synthetic_datasetV2.lever_cost_profile`
    ;;

  dimension: avg_inv_carry_cost_ {
    type: number
    sql: ${TABLE}.avg_inv_carry_cost_ ;;
  }

  dimension: avg_labor_ratehr {
    type: number
    sql: ${TABLE}.avg_labor_ratehr ;;
  }

  dimension: avg_proc_costsku {
    type: number
    sql: ${TABLE}.avg_proc_costsku ;;
  }

  dimension: prof_desc {
    type: string
    sql: ${TABLE}.prof_desc ;;
  }

  dimension: prof_id {
    type: string
    sql: ${TABLE}.prof_id ;;
  }

  dimension: prof_type {
    type: string
    sql: ${TABLE}.prof_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
