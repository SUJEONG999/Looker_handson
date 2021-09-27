view: retail_dataset {
  sql_table_name: `Looker_Training.retail_dataset`
    ;;

  dimension: bigcategory {
    type: string
    sql: ${TABLE}.bigcategory ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: customerid {
    type: string
    sql: ${TABLE}.customerid ;;
  }

  dimension: customername {
    type: string
    sql: ${TABLE}.customername ;;
  }

  dimension: customertype {
    type: string
    sql: ${TABLE}.customertype ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: double_field_19 {
    type: number
    sql: ${TABLE}.double_field_19 ;;
  }

  dimension_group: orderdate {
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
    sql: ${TABLE}.orderdate ;;
  }

  dimension: orderid {
    type: string
    sql: ${TABLE}.orderid ;;
  }

  dimension: postcode {
    type: number
    sql: ${TABLE}.postcode ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: productid {
    type: string
    sql: ${TABLE}.productid ;;
  }

  dimension: productname {
    type: string
    sql: ${TABLE}.productname ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: regiontype {
    type: string
    sql: ${TABLE}.regiontype ;;
  }

  dimension: seq {
    type: number
    sql: ${TABLE}.seq ;;
  }

  dimension_group: shipdate {
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
    sql: ${TABLE}.shipdate ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: subcaregory {
    type: string
    sql: ${TABLE}.subcaregory ;;
  }

  measure: count {
    type: count
    drill_fields: [productname, customername]
  }

  ############################################

  measure: total_discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  measure: total_price {
    type: number
    sql: ${TABLE}.price ;;
  }

  measure: total_quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  measure: total_profit{
    type: number
    sql: sum(${TABLE}.price) *  sum(${TABLE}.quantity)* (1-sum(${TABLE}.discount));;
  }
}
