with

all_soldewallet as (

select * from {{ref("stg_portfolio_tracker__soldewallet_binance")}} as binance
union all
select * from {{ref("stg_portfolio_tracker__soldewallet_evm")}} as evm
union all
select * from {{ref("stg_portfolio_tracker__soldewallet_mexc")}} as mexc
union all
select * from {{ref("stg_portfolio_tracker__soldewallet_starknet_dataviz")}} as starknet

),

soldewallet_price as(

select
 all_soldewallet.date,
 all_soldewallet.symbol,
 all_soldewallet.plateforme,
 all_soldewallet.montant,
 all_soldewallet.type_position,
 all_soldewallet.protocole,
 all_soldewallet.adresse,
 market_data.prix
from all_soldewallet
left join {{ref("stg_portfolio_tracker__market_data")}} as market_data on 
    all_soldewallet.date = market_data.date
and
    all_soldewallet.symbol = market_data.symbol
)

select * from soldewallet_price
