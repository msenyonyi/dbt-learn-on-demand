with payments as (

    select 
        id as payment_id,
        orderid as order_id,
        amount/100 as amount,
        status,
        paymentmethod as payment_method,
        created as created_at
    from {{ source('stripe', 'payment')}}

)

select * from payments