view: shipper_ref {
  sql_table_name: `retailcg_synthetic_datasetV2.shipper_ref`
    ;;

  dimension: cur_port {
    type: string
    sql: ${TABLE}.cur_port ;;
  }

  dimension: imo_vessel_id {
    type: number
    sql: ${TABLE}.imo_vessel_id ;;
  }

  dimension: last_rep_dest {
    type: string
    sql: ${TABLE}.last_rep_dest ;;
  }

  dimension: last_rep_lat {
    type: number
    sql: ${TABLE}.last_rep_lat ;;
  }

  dimension: last_rep_long {
    type: number
    sql: ${TABLE}.last_rep_long ;;
  }

  dimension_group: last_update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_update ;;
  }

  dimension: vessel_name {
    type: string
    sql: ${TABLE}.vessel_name ;;
  }

  measure: count {
    type: count
    drill_fields: [vessel_name]
  }
}
