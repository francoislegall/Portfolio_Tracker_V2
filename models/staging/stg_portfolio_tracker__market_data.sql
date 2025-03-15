with

market_data as (

    select
        date,
        symbol,
        prix,
        market_cap,
        total_volume

    from {{ source("portfolio_tracker", "crypto_price") }}

)

select * from market_data