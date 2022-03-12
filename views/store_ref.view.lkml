view: store_ref {
  sql_table_name: `retailcg_synthetic_datasetV2.store_ref`
    ;;

  dimension: addr {
    type: string
    sql: ${TABLE}.addr ;;
  }

  dimension: alt_dc {
    type: string
    sql: ${TABLE}.alt_dc ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: cost_profile {
    type: string
    sql: ${TABLE}.cost_profile ;;
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

  dimension: dft_dc {
    type: string
    sql: ${TABLE}.dft_dc ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [store_name]
  }
}
