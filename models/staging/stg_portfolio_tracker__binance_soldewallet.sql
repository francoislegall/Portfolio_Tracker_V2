with

binance_soldewallet as (

    select
        date,
        symbol,
        plateforme,
        montant,
        type_position,
        protocole,
        adresse

    from {{ source("portfolio_tracker", "binance_soldewallet") }}

)

select * from binance_soldewallet