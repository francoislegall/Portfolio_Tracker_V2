with

evm_soldewallet as (

    select
        date,
        symbol,
        plateforme,
        montant,
        type_position,
        cast(protocole as string) as protocole,
        cast(adresse as string) as adresse

    from {{ source("portfolio_tracker", "evm_soldewallet") }}

)

select * from evm_soldewallet