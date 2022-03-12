view: replen_sch_profile {
  sql_table_name: `retailcg_synthetic_datasetV2.replen_sch_profile`
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

  dimension: day_of_month {
    type: number
    sql: ${TABLE}.day_of_month ;;
  }

  dimension: day_of_week1 {
    type: number
    sql: ${TABLE}.day_of_week1 ;;
  }

  dimension: day_of_week2 {
    type: number
    sql: ${TABLE}.day_of_week2 ;;
  }

  dimension: freq {
    type: string
    sql: ${TABLE}.freq ;;
  }

  dimension: from_dc {
    type: string
    sql: ${TABLE}.from_dc ;;
  }

  dimension: intraday_freq {
    type: number
    sql: ${TABLE}.intraday_freq ;;
  }

  dimension: to_store {
    type: string
    sql: ${TABLE}.to_store ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
