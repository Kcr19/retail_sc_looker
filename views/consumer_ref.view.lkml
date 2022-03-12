view: consumer_ref {
  sql_table_name: `retailcg_synthetic_datasetV2.consumer_ref`
    ;;

  dimension: addr {
    type: string
    sql: ${TABLE}.addr ;;
  }

  dimension: avg_monthly_trips {
    type: number
    sql: ${TABLE}.avg_monthly_trips ;;
  }

  dimension: avg_ord_val {
    type: number
    sql: ${TABLE}.avg_ord_val ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: consumer_id {
    type: string
    sql: ${TABLE}.consumer_id ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension_group: crt_dt {
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
    sql: ${TABLE}.crt_dt ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension_group: last_purch_dt {
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
    sql: ${TABLE}.last_purch_dt ;;
  }

  dimension: loyalty_mem {
    type: yesno
    sql: ${TABLE}.loyalty_mem ;;
  }

  dimension: loyalty_num {
    type: string
    sql: ${TABLE}.loyalty_num ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: profit_decile {
    type: string
    sql: ${TABLE}.profit_decile ;;
  }

  dimension: revenue_decile {
    type: string
    sql: ${TABLE}.revenue_decile ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: tier {
    type: string
    sql: ${TABLE}.tier ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
