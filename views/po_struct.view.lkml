view: po_struct {
  sql_table_name: `retailcg_synthetic_datasetV2.po_struct`
    ;;

  dimension_group: crt {
    type: time
    description: "bq-datetime"
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

  dimension: po_amt {
    type: number
    sql: ${TABLE}.po_amt ;;
  }

  dimension_group: po {
    type: time
    description: "%E4Y/%m/%d"
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
    description: "%E4Y/%m/%d"
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

  dimension: po_import_flag {
    type: yesno
    sql: ${TABLE}.po_import_flag ;;
  }

  dimension_group: po_last_ship_dt {
    type: time
    description: "%E4Y/%m/%d"
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

  dimension: po_nbr_lines {
    type: number
    sql: ${TABLE}.po_nbr_lines ;;
  }

  dimension: po_number {
    type: string
    sql: ${TABLE}.po_number ;;
  }

  dimension: po_status {
    type: string
    sql: ${TABLE}.po_status ;;
  }

  dimension: po_type {
    type: string
    sql: ${TABLE}.po_type ;;
  }

  dimension: po_vendor {
    type: string
    sql: ${TABLE}.po_vendor ;;
  }

  dimension: pod {
    hidden: yes
    sql: ${TABLE}.pod ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: po_struct__pod {
  dimension: asn_number {
    type: string
    sql: asn_number ;;
  }

  dimension: imo_vessel_id {
    type: number
    sql: imo_vessel_id ;;
  }

  dimension: line_amt {
    type: number
    sql: line_amt ;;
  }

  dimension: line_nbr {
    type: number
    sql: line_nbr ;;
  }

  dimension: order_qty {
    type: number
    sql: order_qty ;;
  }

  dimension: po_struct__pod {
    type: string
    hidden: yes
    sql: po_struct__pod ;;
  }

  dimension: product_id {
    type: string
    sql: product_id ;;
  }

  dimension: recvd_qty {
    type: number
    sql: recvd_qty ;;
  }

  dimension: shipto_node {
    type: string
    sql: shipto_node ;;
  }

  dimension: unit_price {
    type: number
    sql: unit_price ;;
  }
}
