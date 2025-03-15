with

evm_soldewallet as (

    select
        date,
        symbol,
        plateforme,
        montant,
        type_position,
        protocole,
        adresse

    from {{ source("portfolio_tracker", "evm_soldewallet") }}

)

select * from evm_soldewallet