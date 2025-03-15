with

all_soldewallet as (

select * from {{ref("stg_portfolio_tracker__soldewallet_binance")}}
union all
select * from {{ref("stg_portfolio_tracker__soldewallet_evm")}}
union all
select * from {{ref("stg_portfolio_tracker__soldewallet_mexc")}}
union all
select * from {{ref("stg_portfolio_tracker__soldewallet_starknet_dataviz")}}

)

select * from all_soldewallet


