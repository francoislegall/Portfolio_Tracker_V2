with

    solde_wallet as (
        select
         date,
         symbol,
         plateforme,
         type_position,
         protocole,
         adresse,
         montant * prix as montant_usd
        from {{ref("int_portfolio_tracker__all_soldewallet_price")}}
    )

select * from solde_wallet