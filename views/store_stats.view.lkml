view: store_stats {
  sql_table_name: `retailcg_synthetic_datasetV2.store_stats`
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

  dimension: stats {
    hidden: yes
    sql: ${TABLE}.stats ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: store_stats__stats {
  dimension: conversion {
    type: number
    sql: conversion ;;
  }

  dimension: month {
    type: number
    sql: month ;;
  }

  dimension: sales {
    type: number
    sql: sales ;;
  }

  dimension: store_stats__stats {
    type: string
    hidden: yes
    sql: store_stats__stats ;;
  }

  dimension: traffic {
    type: number
    sql: traffic ;;
  }
}
