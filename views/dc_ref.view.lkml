view: dc_ref {
  sql_table_name: `retailcg_synthetic_datasetV2.dc_ref`
    ;;

  dimension: addr {
    type: string
    sql: ${TABLE}.addr ;;
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

  dimension: dc_id {
    type: string
    sql: ${TABLE}.dc_id ;;
  }

  dimension: dc_name {
    type: string
    sql: ${TABLE}.dc_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [dc_name]
  }
}
