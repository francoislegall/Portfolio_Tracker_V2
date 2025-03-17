with

mexc_soldewallet as (

    select
        date,
        symbol,
        plateforme,
        montant,
        type_position,
        cast(protocole as string) as protocole,
        cast(adresse as string) as adresse

    from {{ source("portfolio_tracker", "mexc_soldewallet") }}

)

select * from mexc_soldewallet