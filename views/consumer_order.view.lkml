view: repeat_customer {
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
view: consumer_order {
  sql_table_name: `retailcg_synthetic_datasetV2.consumer_order`
    ;;

  dimension: associate_id {
    type: string
    description: "store or contact center associate who assisted the customer"
    sql: ${TABLE}.associate_id ;;
  }

  dimension: channel {
    type: string
    description: "channel from where the purchase was made"
    sql: ${TABLE}.channel ;;
  }

  dimension: consumer_id {
    type: string
    description: "consumer identifier for loyalty consumers"
    sql: ${TABLE}.consumer_id ;;
  }

  dimension_group: crt {
    type: time
    description: "date/time created"
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

  dimension: fulfilled_by {
    type: string
    description: "the DC or store that fulfilled this order"
    sql: ${TABLE}.fulfilled_by ;;
  }

  dimension: loyalty_num {
    type: string
    description: "loyalty number of loyalty customer"
    sql: ${TABLE}.loyalty_num ;;
  }

  dimension: ol {
    hidden: yes
    sql: ${TABLE}.ol ;;
  }

  dimension: ord_disc_amt {
    type: number
    description: "Total of all the discounts in the order"
    sql: ${TABLE}.ord_disc_amt ;;
  }

  dimension: ord_final_amt {
    type: number
    description: "final amount of the entire order"
    sql: ${TABLE}.ord_final_amt ;;
  }

  dimension: ord_line_amt {
    type: number
    description: "total of all the order line amounts"
    sql: ${TABLE}.ord_line_amt ;;
  }

  dimension: ord_tax {
    type: number
    description: "total of all the line level taxes"
    sql: ${TABLE}.ord_tax ;;
  }

  dimension_group: order {
    type: time
    description: "date/time when the order was placed"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.order_date ;;
  }

  dimension: order_id {
    type: string
    description: "unique id of the order"
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_lines {
    type: number
    description: "total number of lines in the order"
    sql: ${TABLE}.order_lines ;;
  }

  dimension: parcel_id {
    type: string
    description: "parcel identifier for products shipped"
    sql: ${TABLE}.parcel_id ;;
  }

  dimension: tender_token {
    type: string
    description: "tokenized identifier for card payment"
    sql: ${TABLE}.tender_token ;;
  }

  dimension: tender_type {
    type: string
    description: "type of payment used"
    sql: ${TABLE}.tender_type ;;
  }

  dimension: tier {
    type: string
    description: "loyalty tier"
    sql: ${TABLE}.tier ;;
  }

  dimension: transaction_id {
    type: string
    description: "POS transaction identifier for store orders"
    sql: ${TABLE}.transaction_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: ord_final_sum {
    type: sum
    drill_fields: []
    sql: ${TABLE}.ord_final_amt ;;
  }
  measure: ord_final_avg {
    type: average
    drill_fields: []
    sql: ${TABLE}.ord_final_amt ;;
  }
  measure: transactions_count{
    type: count_distinct
    drill_fields: []
    sql: ${TABLE}.transaction_id ;;
  }
  measure: customer_count{
    type: count_distinct
    drill_fields: []
    sql: ${TABLE}.consumer_id ;;
  }
  measure: loyalty_count{
    type: count_distinct
    drill_fields: [tier, loyalty_count]
    sql: ${TABLE}.loyalty_num ;;
  }
  dimension: primary_key {
    primary_key: yes
    sql: ${TABLE}.order_id ;;
  }
}

view: consumer_order__ol {
  dimension: brand {
    type: string
    description: "brand of product"
    full_suggestions: yes
    sql: brand ;;
  }

  dimension: class {
    type: string
    description: "class of product's hierarchy"
    full_suggestions: yes
    sql: class ;;
  }

  dimension: consumer_order__ol {
    type: string
    description: "Structure of order lines"
    hidden: yes
    sql: consumer_order__ol ;;
  }

  dimension: dept {
    type: string
    description: "dept of product's hierarchy"
    full_suggestions: yes
    sql: dept ;;
  }

  dimension: line_amt {
    type: number
    description: "line amount"
    sql: line_amt ;;
  }

  dimension: line_disc {
    type: number
    description: "line discount%"
    sql: line_disc ;;
  }

  dimension: line_final_amt {
    type: number
    description: "total amount for the line including discounts, taxes"
    sql: line_final_amt ;;
  }

  dimension: line_qty {
    type: number
    description: "quantity ordered"
    sql: line_qty ;;
  }

  dimension: line_tax {
    type: number
    description: "tax for order line"
    sql: line_tax ;;
  }

  dimension: order_line {
    type: number
    description: "order line number"
    sql: order_line ;;
  }

  dimension: prod_id {
    type: string
    description: "product ordered"
    sql: prod_id ;;
  }

  dimension: sub_class {
    type: string
    description: "sub class of product's hierarchy"
    full_suggestions: yes
    sql: sub_class ;;
  }

  dimension: unit_price {
    type: number
    description: "unit price of product"
    sql: unit_price ;;
  }

  dimension: upc_code {
    type: number
    description: "upc code of product"
    sql: upc_code ;;
  }

  dimension: vendor {
    type: string
    description: "product vendor"
    full_suggestions: yes
    sql: vendor ;;
  }
  dimension: p_key{
    primary_key: yes
    sql: ${upc_code} ;;
  }
}
