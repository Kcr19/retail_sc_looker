view: po_detail {
  sql_table_name: `retailcg_synthetic_datasetV2.po_detail`
    ;;

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

  dimension: intransit_qty {
    type: number
    sql: ${TABLE}.intransit_qty ;;
  }

  dimension: order_qty {
    type: number
    sql: ${TABLE}.order_qty ;;
  }

  dimension: po_line {
    type: number
    sql: ${TABLE}.po_line ;;
  }

  dimension: po_number {
    type: string
    sql: ${TABLE}.po_number ;;
  }

  dimension: prod_id {
    type: string
    sql: ${TABLE}.prod_id ;;
  }

  dimension: received_qty {
    type: number
    sql: ${TABLE}.received_qty ;;
  }

  dimension: shipto_node {
    type: string
    sql: ${TABLE}.shipto_node ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}.unit_price ;;
  }

  dimension: upc_code {
    type: number
    sql: ${TABLE}.upc_code ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
