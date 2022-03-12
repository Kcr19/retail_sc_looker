view: prod_ref {
  sql_table_name: `retailcg_synthetic_datasetV2.prod_ref`
    ;;

  dimension: avg {
    hidden: yes
    sql: ${TABLE}.avg ;;
  }

  dimension: avg_rating {
    type: number
    sql: ${TABLE}.avg_rating ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.class ;;
  }

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

  dimension: dept {
    type: string
    sql: ${TABLE}.dept ;;
  }

  dimension: five_star {
    type: number
    sql: ${TABLE}.five_star ;;
  }

  dimension: four_star {
    type: number
    sql: ${TABLE}.four_star ;;
  }

  dimension: min_reorder_qty {
    type: number
    sql: ${TABLE}.min_reorder_qty ;;
  }

  dimension: nbr_of_reviews {
    type: number
    sql: ${TABLE}.nbr_of_reviews ;;
  }

  dimension: one_star {
    type: number
    sql: ${TABLE}.one_star ;;
  }

  dimension: prod_desc {
    type: string
    sql: ${TABLE}.prod_desc ;;
  }

  dimension: prod_id {
    type: string
    sql: ${TABLE}.prod_id ;;
  }

  dimension: reorder_point {
    type: number
    sql: ${TABLE}.reorder_point ;;
  }

  dimension: sub_class {
    type: string
    sql: ${TABLE}.sub_class ;;
  }

  dimension: three_star {
    type: number
    sql: ${TABLE}.three_star ;;
  }

  dimension: two_star {
    type: number
    sql: ${TABLE}.two_star ;;
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

view: prod_ref__avg {
  dimension: month {
    type: number
    sql: month ;;
  }

  dimension: on_hand_qty {
    type: number
    sql: on_hand_qty ;;
  }

  dimension: prod_ref__avg {
    type: string
    hidden: yes
    sql: prod_ref__avg ;;
  }

  dimension: rcvd_qty {
    type: number
    sql: rcvd_qty ;;
  }

  dimension: sales {
    type: number
    sql: sales ;;
  }

  dimension: sell_thru_rate {
    type: number
    sql: sell_thru_rate ;;
  }

  dimension: sold_qty {
    type: number
    sql: sold_qty ;;
  }
}
