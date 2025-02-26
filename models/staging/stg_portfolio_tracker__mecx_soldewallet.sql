with

mexc_soldewallet as (

    select
        date,
        symbol,
        plateforme,
        montant,
        type_position,
        protocole,
        adresse

    from {{ source("portfolio_tracker", "mexc_soldewallet") }}

)

select * from mexc_soldewallet