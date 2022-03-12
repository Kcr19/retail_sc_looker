view: vendor_ref {
  sql_table_name: `retailcg_synthetic_datasetV2.vendor_ref`
    ;;

  dimension: avg_fill_rate {
    type: number
    sql: ${TABLE}.avg_fill_rate ;;
  }

  dimension: avg_lead_time {
    type: number
    sql: ${TABLE}.avg_lead_time ;;
  }

  dimension: compliance_rating {
    type: number
    sql: ${TABLE}.compliance_rating ;;
  }

  dimension_group: crt {
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
    sql: ${TABLE}.crt_date ;;
  }

  dimension: median_fill_rate {
    type: number
    sql: ${TABLE}.median_fill_rate ;;
  }

  dimension: median_lead_time {
    type: number
    sql: ${TABLE}.median_lead_time ;;
  }

  dimension: qc_rating {
    type: number
    sql: ${TABLE}.qc_rating ;;
  }

  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendor_id ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.vendor_name ;;
  }

  dimension: vendor_prefix {
    type: number
    sql: ${TABLE}.vendor_prefix ;;
  }

  measure: count {
    type: count
    drill_fields: [vendor_name]
  }
}
