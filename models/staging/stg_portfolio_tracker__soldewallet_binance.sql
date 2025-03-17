with

binance_soldewallet as (

    select
        date,
        symbol,
        plateforme,
        montant,
        type_position,
        cast(protocole as string) as protocole,
        cast(adresse as string) as adresse

    from {{ source("portfolio_tracker", "binance_soldewallet") }}

)

select * from binance_soldewallet