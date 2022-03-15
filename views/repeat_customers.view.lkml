view: repeat_customers {
  derived_table: {
    sql: SELECT
          count(consumer_order_consumer_id) as repeat_customers
      FROM
          (SELECT
                  consumer_order.consumer_id  AS consumer_order_consumer_id,
                  COUNT(DISTINCT consumer_order.transaction_id ) AS consumer_order_transactions_count
              FROM `retailcg_synthetic_datasetV2.consumer_order`
           AS consumer_order
              WHERE (consumer_order.consumer_id ) IS NOT NULL
              GROUP BY
                  1
              HAVING consumer_order_transactions_count > 1) AS t3
      ORDER BY
          1
      LIMIT 5000
 ;;
  }
  dimension: primary_key {
    primary_key: yes
    sql: ${TABLE}.order_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: repeat_customers {
    type: number
    sql: ${TABLE}.repeat_customers ;;
  }

  set: detail {
    fields: [repeat_customers]
  }
}
