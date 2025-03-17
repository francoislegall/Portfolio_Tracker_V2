with

starknet_soldewallet_dataviz as (

    select
        date,
        symbol,
        plateforme,
        montant,
        type_position,
        cast(protocole as string) as protocole,
        cast(adresse as string) as adresse

    from {{ source("portfolio_tracker", "starknet_soldewallet_dataviz") }}

)

select * from starknet_soldewallet_dataviz