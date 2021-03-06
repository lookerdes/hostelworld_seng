view: products {
  sql_table_name: public.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    link: {
      label: "Affinity Analysis"
      url: "https://saleseng.dev.looker.com/dashboards/447?Hostel={{ value | url_encode }}"
      icon_url: "https://pbs.twimg.com/profile_images/661115636723109888/s913HMwz.png"
    }
    link: {
      label: "Free Cancellation Project"
      url: "https://saleseng.dev.looker.com/dashboards/446?Hostel={{ value | url_encode }}"
      icon_url: "https://pbs.twimg.com/profile_images/661115636723109888/s913HMwz.png"
    }
  }

  dimension: brand {
    label: "Chain"
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    label: "Type"
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: distribution_center_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.distribution_center_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: retail_price {
    label: "Average Price Per Night"
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, distribution_centers.id, distribution_centers.name, inventory_items.count]
  }
}
