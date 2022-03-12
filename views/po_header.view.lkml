view: po_header {
  sql_table_name: `retailcg_synthetic_datasetV2.po_header`
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

  dimension_group: first_ship_dt {
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
    sql: ${TABLE}.first_ship_dt ;;
  }

  dimension_group: last_ship_dt {
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
    sql: ${TABLE}.last_ship_dt ;;
  }

  dimension: nbr_lines {
    type: string
    sql: ${TABLE}.nbr_lines ;;
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

  dimension: total_amt {
    type: string
    sql: ${TABLE}.total_amt ;;
  }

  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendor_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
