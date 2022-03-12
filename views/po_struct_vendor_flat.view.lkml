view: po_struct_vendor_flat {
  sql_table_name: `retailcg_synthetic_datasetV2.po_struct_vendor_flat`
    ;;

  dimension: asn_line_amt {
    type: number
    sql: ${TABLE}.asn_line_amt ;;
  }

  dimension: asn_number {
    type: string
    sql: ${TABLE}.asn_number ;;
  }

  dimension: asn_order_qty {
    type: number
    sql: ${TABLE}.asn_order_qty ;;
  }

  dimension: asn_product_id {
    type: string
    sql: ${TABLE}.asn_product_id ;;
  }

  dimension: asn_recvd_qty {
    type: number
    sql: ${TABLE}.asn_recvd_qty ;;
  }

  dimension: asn_ship_to_node {
    type: string
    sql: ${TABLE}.asn_ship_to_node ;;
  }

  dimension: asn_unit_price {
    type: number
    sql: ${TABLE}.asn_unit_price ;;
  }

  dimension: po_amt {
    type: number
    sql: ${TABLE}.po_amt ;;
  }

  dimension_group: po {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.po_date ;;
  }

  dimension_group: po_first_ship_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.po_first_ship_dt ;;
  }

  dimension_group: po_last_ship_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.po_last_ship_dt ;;
  }

  dimension: po_number {
    type: string
    sql: ${TABLE}.po_number ;;
  }

  dimension: po_status {
    type: string
    sql: ${TABLE}.po_status ;;
  }

  dimension: po_vendor {
    type: string
    sql: ${TABLE}.po_vendor ;;
  }

  dimension: vendor_med_lead_time {
    type: number
    sql: ${TABLE}.vendor_med_lead_time ;;
  }

  dimension: vendor_median_fill_rate {
    type: number
    sql: ${TABLE}.vendor_median_fill_rate ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
